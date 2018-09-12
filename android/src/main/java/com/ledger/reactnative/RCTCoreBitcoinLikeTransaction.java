// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

package com.ledger.reactnative;

import co.ledger.core.Amount;
import co.ledger.core.BitcoinLikeBlock;
import co.ledger.core.BitcoinLikeInput;
import co.ledger.core.BitcoinLikeOutput;
import co.ledger.core.BitcoinLikeTransaction;
import co.ledger.core.EstimatedSize;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
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

/**Class representing a Bitcoin transaction */
public class RCTCoreBitcoinLikeTransaction extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, BitcoinLikeTransaction> javaObjects;
    public Map<String, BitcoinLikeTransaction> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreBitcoinLikeTransaction(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, BitcoinLikeTransaction>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreBitcoinLikeTransaction";
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
            promise.reject("Failed to release instance of RCTCoreBitcoinLikeTransaction", "First parameter of RCTCoreBitcoinLikeTransaction::release should be an instance of RCTCoreBitcoinLikeTransaction");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, BitcoinLikeTransaction> elem : this.javaObjects.entrySet())
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

    /** Get the hash of the transaction. */
    @ReactMethod
    public void getHash(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

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
    /** Get the input of the transaction */
    @ReactMethod
    public void getInputs(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            ArrayList<BitcoinLikeInput> javaResult = currentInstanceObj.getInputs();

            WritableNativeArray result = new WritableNativeArray();
            for (BitcoinLikeInput javaResult_elem : javaResult)
            {
                String uuid = UUID.randomUUID().toString();
                RCTCoreBitcoinLikeInput rctImpl_javaResult_elem = this.reactContext.getNativeModule(RCTCoreBitcoinLikeInput.class);
                rctImpl_javaResult_elem.getJavaObjects().put(uuid, javaResult_elem);
                WritableNativeMap result_elem = new WritableNativeMap();
                result_elem.putString("type","RCTCoreBitcoinLikeInput");
                result_elem.putString("uid",uuid);
                result.pushMap(result_elem);
            }

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the output of the transaction */
    @ReactMethod
    public void getOutputs(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            ArrayList<BitcoinLikeOutput> javaResult = currentInstanceObj.getOutputs();

            WritableNativeArray result = new WritableNativeArray();
            for (BitcoinLikeOutput javaResult_elem : javaResult)
            {
                String uuid = UUID.randomUUID().toString();
                RCTCoreBitcoinLikeOutput rctImpl_javaResult_elem = this.reactContext.getNativeModule(RCTCoreBitcoinLikeOutput.class);
                rctImpl_javaResult_elem.getJavaObjects().put(uuid, javaResult_elem);
                WritableNativeMap result_elem = new WritableNativeMap();
                result_elem.putString("type","RCTCoreBitcoinLikeOutput");
                result_elem.putString("uid",uuid);
                result.pushMap(result_elem);
            }

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the block in which the transaction is inserted if the transaction is confirmed. */
    @ReactMethod
    public void getBlock(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            BitcoinLikeBlock javaResult = currentInstanceObj.getBlock();

            String uuid = UUID.randomUUID().toString();
            RCTCoreBitcoinLikeBlock rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreBitcoinLikeBlock.class);
            rctImpl_javaResult.getJavaObjects().put(uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreBitcoinLikeBlock");
            result.putString("uid",uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the lock time of the transaction. */
    @ReactMethod
    public void getLockTime(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            long javaResult = currentInstanceObj.getLockTime();
            WritableNativeMap result = new WritableNativeMap();
            result.putDouble("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the amount of fees of the transaction. */
    @ReactMethod
    public void getFees(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            Amount javaResult = currentInstanceObj.getFees();

            String uuid = UUID.randomUUID().toString();
            RCTCoreAmount rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreAmount.class);
            rctImpl_javaResult.getJavaObjects().put(uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreAmount");
            result.putString("uid",uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Get the time when the transaction was issued or the time of the block including
     * this transaction
     */
    @ReactMethod
    public void getTime(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            Date javaResult = currentInstanceObj.getTime();
            WritableNativeMap result = new WritableNativeMap();
            DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
            String finalJavaResult = dateFormat.format(javaResult);
            result.putString("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the timestamps serialized in the raw transaction if the underlying currency handles it. */
    @ReactMethod
    public void getTimestamp(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            Integer javaResult = currentInstanceObj.getTimestamp();
            WritableNativeMap result = new WritableNativeMap();
            result.putInt("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get Transaction version */
    @ReactMethod
    public void getVersion(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            int javaResult = currentInstanceObj.getVersion();
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

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            byte[] javaResult = currentInstanceObj.serialize();
            WritableNativeMap result = new WritableNativeMap();
            String finalJavaResult = new String(javaResult);
            result.putString("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Serialize outputs of the raw transaction into a byte array using the bitcoin transaction format. */
    @ReactMethod
    public void serializeOutputs(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            byte[] javaResult = currentInstanceObj.serializeOutputs();
            WritableNativeMap result = new WritableNativeMap();
            String finalJavaResult = new String(javaResult);
            result.putString("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Get the witness if the underlying transaction is a segwit transaction. */
    @ReactMethod
    public void getWitness(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            byte[] javaResult = currentInstanceObj.getWitness();
            WritableNativeMap result = new WritableNativeMap();
            String finalJavaResult = new String(javaResult);
            result.putString("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Estimate the size of the raw transaction in bytes. This method returns a minimum estimated size and a maximum estimated
     * size.
     */
    @ReactMethod
    public void getEstimatedSize(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            BitcoinLikeTransaction currentInstanceObj = this.javaObjects.get(sUid);

            EstimatedSize javaResult = currentInstanceObj.getEstimatedSize();

            String uuid = UUID.randomUUID().toString();
            RCTCoreEstimatedSize rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreEstimatedSize.class);
            rctImpl_javaResult.getJavaObjects().put(uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreEstimatedSize");
            result.putString("uid",uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}