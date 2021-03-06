// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

package co.ledger.core;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/** Class representing Bitcoin inputs. */
public abstract class BitcoinLikeInput {
    /** Returns the address of the input (if an address can be computed). */
    public abstract String getAddress();

    /**
     * Returns the public associated with the address. This value can be NULL if you are building a transaction with an
     * address which does not belong to your wallet.
     */
    public abstract ArrayList<byte[]> getPublicKeys();

    /** Returns the derivation path of this input if the address is owned by the wallet. */
    public abstract ArrayList<DerivationPath> getDerivationPath();

    /**
     * Returns the value of the amount. Depending on the backend this value may not exist if the input is not owned by
     * the wallet.
     */
    public abstract Amount getValue();

    /**
     * Get the transaction hash of the output spent by this input. The result can be NULL if the output is not owned by
     * the wallet.
     */
    public abstract String getPreviousTxHash();

    /**
     * Check whether input is for a coinbase.
     * @return Boolean, true if input belongs to coinbase transaction (reward for mining a block)
     */
    public abstract boolean isCoinbase();

    /**
     * Stored data cointained in coinbase.
     * @return Optional String
     */
    public abstract String getCoinbase();

    /**
     * Get output index, it identifies which UTXO from tht transaction to spend.
     * @return Optional 32 bits integer, index of previous transaction
     */
    public abstract Integer getPreviousOutputIndex();

    /**
     * Retrieve the output spent by this input. Depending on the implementation this method may
     * use a lock to fetch data from a database. Therefore it may have poor performance, use with
     * caution.
     * @return The output spent by this input.
     */
    public abstract BitcoinLikeOutput getPreviousOuput();

    /** Get ScriptSig of this input. The scriptsig is the first half of a script necessary to spend a previous output. */
    public abstract byte[] getScriptSig();

    /** Parse the script sig to a [[BitcoinLikeScript]]. */
    public abstract BitcoinLikeScript parseScriptSig();

    /**
     * Set the ScriptS to the given value.
     * @param scriptSig The ScriptSig to use for this input
     */
    public abstract void setScriptSig(byte[] scriptSig);

    /** Push data to the end of the current ScriptSig. */
    public abstract void pushToScriptSig(byte[] data);

    /** Set the sequence number of this input. */
    public abstract void setSequence(int sequence);

    /** Get the sequence number of this input. */
    public abstract long getSequence();

    /** Get the previous transaction associated with the input. */
    public abstract void getPreviousTransaction(BinaryCallback callback);

    /** Easy way to set the P2PKH script signature. Shorthand for input.pushToScriptSig(input.getPublicKeys()[0], signature). */
    public abstract void setP2PKHSigScript(byte[] signature);

    private static final class CppProxy extends BitcoinLikeInput
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        public void destroy()
        {
            boolean destroyed = this.destroyed.getAndSet(true);
            if (!destroyed) nativeDestroy(this.nativeRef);
        }
        protected void finalize() throws java.lang.Throwable
        {
            destroy();
            super.finalize();
        }

        @Override
        public String getAddress()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getAddress(this.nativeRef);
        }
        private native String native_getAddress(long _nativeRef);

        @Override
        public ArrayList<byte[]> getPublicKeys()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getPublicKeys(this.nativeRef);
        }
        private native ArrayList<byte[]> native_getPublicKeys(long _nativeRef);

        @Override
        public ArrayList<DerivationPath> getDerivationPath()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getDerivationPath(this.nativeRef);
        }
        private native ArrayList<DerivationPath> native_getDerivationPath(long _nativeRef);

        @Override
        public Amount getValue()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getValue(this.nativeRef);
        }
        private native Amount native_getValue(long _nativeRef);

        @Override
        public String getPreviousTxHash()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getPreviousTxHash(this.nativeRef);
        }
        private native String native_getPreviousTxHash(long _nativeRef);

        @Override
        public boolean isCoinbase()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_isCoinbase(this.nativeRef);
        }
        private native boolean native_isCoinbase(long _nativeRef);

        @Override
        public String getCoinbase()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getCoinbase(this.nativeRef);
        }
        private native String native_getCoinbase(long _nativeRef);

        @Override
        public Integer getPreviousOutputIndex()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getPreviousOutputIndex(this.nativeRef);
        }
        private native Integer native_getPreviousOutputIndex(long _nativeRef);

        @Override
        public BitcoinLikeOutput getPreviousOuput()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getPreviousOuput(this.nativeRef);
        }
        private native BitcoinLikeOutput native_getPreviousOuput(long _nativeRef);

        @Override
        public byte[] getScriptSig()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getScriptSig(this.nativeRef);
        }
        private native byte[] native_getScriptSig(long _nativeRef);

        @Override
        public BitcoinLikeScript parseScriptSig()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_parseScriptSig(this.nativeRef);
        }
        private native BitcoinLikeScript native_parseScriptSig(long _nativeRef);

        @Override
        public void setScriptSig(byte[] scriptSig)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_setScriptSig(this.nativeRef, scriptSig);
        }
        private native void native_setScriptSig(long _nativeRef, byte[] scriptSig);

        @Override
        public void pushToScriptSig(byte[] data)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_pushToScriptSig(this.nativeRef, data);
        }
        private native void native_pushToScriptSig(long _nativeRef, byte[] data);

        @Override
        public void setSequence(int sequence)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_setSequence(this.nativeRef, sequence);
        }
        private native void native_setSequence(long _nativeRef, int sequence);

        @Override
        public long getSequence()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getSequence(this.nativeRef);
        }
        private native long native_getSequence(long _nativeRef);

        @Override
        public void getPreviousTransaction(BinaryCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_getPreviousTransaction(this.nativeRef, callback);
        }
        private native void native_getPreviousTransaction(long _nativeRef, BinaryCallback callback);

        @Override
        public void setP2PKHSigScript(byte[] signature)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_setP2PKHSigScript(this.nativeRef, signature);
        }
        private native void native_setP2PKHSigScript(long _nativeRef, byte[] signature);
    }
}
