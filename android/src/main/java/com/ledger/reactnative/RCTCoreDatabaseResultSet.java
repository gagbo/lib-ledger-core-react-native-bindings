// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

package com.ledger.reactnative;

import co.ledger.core.DatabaseError;
import co.ledger.core.DatabaseResultRow;
import co.ledger.core.DatabaseResultSet;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableNativeArray;
import com.facebook.react.bridge.ReadableNativeMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/**
 * ResultSet is a cursor over a query result. It allows user to iterate through query rows. When you start iterating through
 * result the cursor is placed before the first element of the set.
 */
@ReactModule(name = "RCTCoreDatabaseResultSet")
public class RCTCoreDatabaseResultSet extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, DatabaseResultSetImpl> javaObjects;
    public Map<String, DatabaseResultSetImpl> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreDatabaseResultSet(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, DatabaseResultSetImpl>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreDatabaseResultSet";
    }
    @ReactMethod
    public void newInstance(Promise promise)
    {
        DatabaseResultSetImpl newInstance = new DatabaseResultSetImpl(this.reactContext);
        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, newInstance);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreDatabaseResultSet");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void release(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            this.javaObjects.remove(uid);
            promise.resolve(0);
        }
        else
        {
            promise.reject("Failed to release instance of RCTCoreDatabaseResultSet", "First parameter of RCTCoreDatabaseResultSet::release should be an instance of RCTCoreDatabaseResultSet");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, DatabaseResultSetImpl> elem : this.javaObjects.entrySet())
        {
            result.pushString(elem.getKey());
        }
        promise.resolve(result);
    }
    @ReactMethod
    public void flush(Promise promise)
    {
        this.javaObjects.clear();
        promise.resolve(0);
    }
    @ReactMethod
    public void isNull(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (this.javaObjects.get(uid) == null)
            {
                promise.resolve(true);
                return;
            }
            else
            {
                promise.resolve(false);
                return;
            }
        }
        promise.resolve(true);
    }

    /**
     * Retrieve the current row pointed by the DatabaseResultSet. Return null if there is no row to retrieve.
     * @return The current row
     */
    @ReactMethod
    public void getRow(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseResultSetImpl currentInstanceObj = this.javaObjects.get(sUid);

            DatabaseResultRow javaResult = currentInstanceObj.getRow();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreDatabaseResultRow rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreDatabaseResultRow.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, (DatabaseResultRowImpl)javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreDatabaseResultRow");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the number of rows updated by the query (UPDATE, INSERT, DELETE...) */
    @ReactMethod
    public void getUpdateCount(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseResultSetImpl currentInstanceObj = this.javaObjects.get(sUid);

            int javaResult = currentInstanceObj.getUpdateCount();
            WritableNativeMap result = new WritableNativeMap();
            result.putInt("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Returns true if the result set has at least one remaining row to get.
     * @return true if the result set has at least one remaining row to get, false otherwise.
     */
    @ReactMethod
    public void hasNext(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseResultSetImpl currentInstanceObj = this.javaObjects.get(sUid);

            boolean javaResult = currentInstanceObj.hasNext();
            WritableNativeMap result = new WritableNativeMap();
            result.putBoolean("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Returns the number of remaining rows before the result set needs to load more rows
     * @return The number of remaining rows before the result set needs to load more rows.
     */
    @ReactMethod
    public void available(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseResultSetImpl currentInstanceObj = this.javaObjects.get(sUid);

            int javaResult = currentInstanceObj.available();
            WritableNativeMap result = new WritableNativeMap();
            result.putInt("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Internally move the result set to the next available row. This method may fail if there is no further row to fetch.
     * @return Return a result set pointing to the next row.
     */
    @ReactMethod
    public void next(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseResultSetImpl currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.next();
            promise.resolve(0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Close the result set. */
    @ReactMethod
    public void close(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseResultSetImpl currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.close();
            promise.resolve(0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the last error that occured on the database. */
    @ReactMethod
    public void getError(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            DatabaseResultSetImpl currentInstanceObj = this.javaObjects.get(sUid);

            DatabaseError javaResult = currentInstanceObj.getError();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreDatabaseError rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreDatabaseError.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, (DatabaseErrorImpl)javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreDatabaseError");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}
