// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from configuration.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/** Available keychains policies. */
public abstract class KeychainEngines {
    public static final String BIP32_P2PKH = "BIP32_P2PKH";

    public static final String BIP49_P2SH = "BIP49_P2SH";

    public static final String BIP173_P2WPKH = "BIP173_P2WPKH";

    public static final String BIP173_P2WSH = "BIP173_P2WSH";


    private static final class CppProxy extends KeychainEngines
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
    }
}
