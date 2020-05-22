// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#ifndef DJINNI_GENERATED_COSMOSLIKEMSGCREATEVALIDATOR_HPP
#define DJINNI_GENERATED_COSMOSLIKEMSGCREATEVALIDATOR_HPP

#include "CosmosLikeAmount.hpp"
#include "CosmosLikeValidatorCommission.hpp"
#include "CosmosLikeValidatorDescription.hpp"
#include <iostream>
#include <string>
#include <utility>

namespace ledger { namespace core { namespace api {

struct CosmosLikeMsgCreateValidator final {
    CosmosLikeValidatorDescription descr;
    CosmosLikeValidatorCommission commission;
    std::string minSelfDelegation;
    std::string delegatorAddress;
    std::string validatorAddress;
    std::string pubkey;
    CosmosLikeAmount value;

    CosmosLikeMsgCreateValidator(CosmosLikeValidatorDescription descr_,
                                 CosmosLikeValidatorCommission commission_,
                                 std::string minSelfDelegation_,
                                 std::string delegatorAddress_,
                                 std::string validatorAddress_,
                                 std::string pubkey_,
                                 CosmosLikeAmount value_)
    : descr(std::move(descr_))
    , commission(std::move(commission_))
    , minSelfDelegation(std::move(minSelfDelegation_))
    , delegatorAddress(std::move(delegatorAddress_))
    , validatorAddress(std::move(validatorAddress_))
    , pubkey(std::move(pubkey_))
    , value(std::move(value_))
    {}

    CosmosLikeMsgCreateValidator(const CosmosLikeMsgCreateValidator& cpy) {
       this->descr = cpy.descr;
       this->commission = cpy.commission;
       this->minSelfDelegation = cpy.minSelfDelegation;
       this->delegatorAddress = cpy.delegatorAddress;
       this->validatorAddress = cpy.validatorAddress;
       this->pubkey = cpy.pubkey;
       this->value = cpy.value;
    }

    CosmosLikeMsgCreateValidator() = default;


    CosmosLikeMsgCreateValidator& operator=(const CosmosLikeMsgCreateValidator& cpy) {
       this->descr = cpy.descr;
       this->commission = cpy.commission;
       this->minSelfDelegation = cpy.minSelfDelegation;
       this->delegatorAddress = cpy.delegatorAddress;
       this->validatorAddress = cpy.validatorAddress;
       this->pubkey = cpy.pubkey;
       this->value = cpy.value;
       return *this;
    }

    template <class Archive>
    void load(Archive& archive) {
        archive(descr, commission, minSelfDelegation, delegatorAddress, validatorAddress, pubkey, value);
    }

    template <class Archive>
    void save(Archive& archive) const {
        archive(descr, commission, minSelfDelegation, delegatorAddress, validatorAddress, pubkey, value);
    }
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_COSMOSLIKEMSGCREATEVALIDATOR_HPP