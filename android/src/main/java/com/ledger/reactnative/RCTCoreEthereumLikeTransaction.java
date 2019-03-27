// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ethereum_like_wallet.djinni

package com.ledger.reactnative;

import co.ledger.core.Amount;
import co.ledger.core.EthereumLikeAddress;
import co.ledger.core.EthereumLikeBlock;
import co.ledger.core.EthereumLikeTransaction;
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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/** Class representing a Ethereum transaction. */
public class RCTCoreEthereumLikeTransaction extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, EthereumLikeTransaction> javaObjects;
    public Map<String, EthereumLikeTransaction> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreEthereumLikeTransaction(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, EthereumLikeTransaction>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreEthereumLikeTransaction";
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
            promise.reject("Failed to release instance of RCTCoreEthereumLikeTransaction", "First parameter of RCTCoreEthereumLikeTransaction::release should be an instance of RCTCoreEthereumLikeTransaction");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, EthereumLikeTransaction> elem : this.javaObjects.entrySet())
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
    public static byte[] hexStringToByteArray(String hexString)
    {
        int hexStringLength = hexString.length();
        byte[] data = new byte[hexStringLength / 2];
        for (int i = 0; i < hexStringLength; i += 2)
        {
            data[i / 2] = (byte) ((Character.digit(hexString.charAt(i), 16) << 4) + Character.digit(hexString.charAt(i+1), 16));
        }
        return data;
    }
    static final String HEXES = "0123456789ABCDEF";
    public static String byteArrayToHexString( byte [] data)
    {
        if (data == null)
        {
            return null;
        }
        final StringBuilder hexStringBuilder = new StringBuilder( 2 * data.length );
        for ( final byte b : data )
        {
            hexStringBuilder.append(HEXES.charAt((b & 0xF0) >> 4)).append(HEXES.charAt((b & 0x0F)));
        }
        return hexStringBuilder.toString();
    }

    /** Get the hash of the transaction. */
    @ReactMethod
    public void getHash(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            String javaResult = currentInstanceObj.getHash();
            WritableNativeMap result = new WritableNativeMap();
            result.putString("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the nonce of the transaction : sequence number issued by originating EOA. */
    @ReactMethod
    public void getNonce(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            int javaResult = currentInstanceObj.getNonce();
            WritableNativeMap result = new WritableNativeMap();
            result.putInt("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get Gas price (in wei). */
    @ReactMethod
    public void getGasPrice(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            Amount javaResult = currentInstanceObj.getGasPrice();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreAmount rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreAmount.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreAmount");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get start gas (in wei) : maximum amount of gas the originator is willing to pay. */
    @ReactMethod
    public void getGasLimit(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            Amount javaResult = currentInstanceObj.getGasLimit();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreAmount rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreAmount.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreAmount");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Effective used gas. */
    @ReactMethod
    public void getGasUsed(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            Amount javaResult = currentInstanceObj.getGasUsed();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreAmount rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreAmount.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreAmount");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get destination ETH address. */
    @ReactMethod
    public void getReceiver(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            EthereumLikeAddress javaResult = currentInstanceObj.getReceiver();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreEthereumLikeAddress rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreEthereumLikeAddress.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreEthereumLikeAddress");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get ETH sender address. */
    @ReactMethod
    public void getSender(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            EthereumLikeAddress javaResult = currentInstanceObj.getSender();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreEthereumLikeAddress rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreEthereumLikeAddress.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreEthereumLikeAddress");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get amount of ether to send. */
    @ReactMethod
    public void getValue(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            Amount javaResult = currentInstanceObj.getValue();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreAmount rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreAmount.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreAmount");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get binary data payload. */
    @ReactMethod
    public void getData(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            byte[] javaResult = currentInstanceObj.getData();
            WritableNativeMap result = new WritableNativeMap();
            String finalJavaResult = byteArrayToHexString(javaResult);
            result.putString("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get status of transaction: equals to 1 if succeeded, 0 otherwise */
    @ReactMethod
    public void getStatus(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            int javaResult = currentInstanceObj.getStatus();
            WritableNativeMap result = new WritableNativeMap();
            result.putInt("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Serialize the transaction to its raw format. */
    @ReactMethod
    public void serialize(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            byte[] javaResult = currentInstanceObj.serialize();
            WritableNativeMap result = new WritableNativeMap();
            String finalJavaResult = byteArrayToHexString(javaResult);
            result.putString("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Set signature of transaction, when a signature is set serialize method gives back serialized Tx. */
    @ReactMethod
    public void setSignature(ReadableMap currentInstance, String vSignature, String rSignature, String sSignature, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(vSignature);

            byte [] javaParam_1 = hexStringToByteArray(rSignature);

            byte [] javaParam_2 = hexStringToByteArray(sSignature);

            currentInstanceObj.setSignature(javaParam_0, javaParam_1, javaParam_2);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void setDERSignature(ReadableMap currentInstance, String signature, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(signature);

            currentInstanceObj.setDERSignature(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void setVSignature(ReadableMap currentInstance, String vSignature, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(vSignature);

            currentInstanceObj.setVSignature(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Get the time when the transaction was issued or the time of the block including this
     * transaction.
     */
    @ReactMethod
    public void getDate(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            Date javaResult = currentInstanceObj.getDate();
            WritableNativeMap result = new WritableNativeMap();
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
            String finalJavaResult = dateFormat.format(javaResult);
            result.putString("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get block to which transaction belongs (was mined in). */
    @ReactMethod
    public void getBlock(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            EthereumLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            EthereumLikeBlock javaResult = currentInstanceObj.getBlock();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreEthereumLikeBlock rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreEthereumLikeBlock.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreEthereumLikeBlock");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}
