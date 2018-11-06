package com.ledger.reactnative;

import com.facebook.react.bridge.ReactApplicationContext;

import co.ledger.core.HttpRequest;
import co.ledger.core.Error;
import co.ledger.core.HttpRequest;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/**Class representing the http client performing the http requests */
public class HttpClientImpl extends co.ledger.core.HttpClient {
    private ReactApplicationContext reactContext;
    public HttpClientImpl(ReactApplicationContext reactContext) {
        this.reactContext = reactContext;
    }
    /**
     *Execute a giver Http request\
     *@param request, HttpRequest object, requestr to execute
     */
    public void execute(HttpRequest request) {
        try {
            URL url = new URL(request.getUrl());
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            HashMap<String, String> headers = request.getHeaders();
            for (String hr : headers.keySet()) {
                connection.setRequestProperty(hr, headers.get(hr));
            }

            byte[] body = request.getBody();
            if (body.length > 0) {
                connection.setRequestMethod( "POST" );
                connection.setRequestProperty( "Content-Type", "application/json");
                connection.setRequestProperty( "charset", "utf-8");
                connection.setRequestProperty( "Content-Length", Integer.toString(body.length));
                OutputStream os = connection.getOutputStream();
                os.write(body);
                os.flush();
                os.close();
            }
            
            int httpCode = connection.getResponseCode();
            BufferedInputStream iStream = new BufferedInputStream(connection.getInputStream());
            String response = getString(iStream, "UTF-8");
            com.ledger.reactnative.HttpUrlConnectionImpl urlConnection = new com.ledger.reactnative.HttpUrlConnectionImpl(this.reactContext, response, httpCode, headers, null);
            request.complete(urlConnection, null);
        } catch (IOException ex) {
            Error error = new Error(co.ledger.core.ErrorCode.HTTP_ERROR, ex.getMessage());
            com.ledger.reactnative.HttpUrlConnectionImpl urlConnection = new com.ledger.reactnative.HttpUrlConnectionImpl(this.reactContext, ex.toString(), ex.hashCode(), null, error);
            request.complete(urlConnection, error);
        }
    }

    private static String getString(InputStream stream, String charsetName) throws IOException
    {
        int n = 0;
        char[] buffer = new char[1024 * 4];
        InputStreamReader reader = new InputStreamReader(stream, charsetName);
        StringWriter writer = new StringWriter();
        while (-1 != (n = reader.read(buffer))) {
            writer.write(buffer, 0, n);
        }
        return writer.toString();
    }
}
