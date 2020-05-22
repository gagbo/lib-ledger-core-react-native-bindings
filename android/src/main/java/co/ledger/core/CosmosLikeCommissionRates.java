// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

package co.ledger.core;

public final class CosmosLikeCommissionRates {


    /*package*/ final String rate;

    /*package*/ final String maxRate;

    /*package*/ final String maxChangeRate;

    public CosmosLikeCommissionRates(
            String rate,
            String maxRate,
            String maxChangeRate) {
        this.rate = rate;
        this.maxRate = maxRate;
        this.maxChangeRate = maxChangeRate;
    }

    public String getRate() {
        return rate;
    }

    public String getMaxRate() {
        return maxRate;
    }

    public String getMaxChangeRate() {
        return maxChangeRate;
    }

    @Override
    public String toString() {
        return "CosmosLikeCommissionRates{" +
                "rate=" + rate +
                "," + "maxRate=" + maxRate +
                "," + "maxChangeRate=" + maxChangeRate +
        "}";
    }

}