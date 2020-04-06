// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "LGCosmosLikeReward+Private.h"
#import "LGCosmosLikeReward.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGAmount+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGCosmosLikeReward ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::CosmosLikeReward>&)cppRef;

@end

@implementation LGCosmosLikeReward {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::CosmosLikeReward>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::CosmosLikeReward>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)getDelegatorAddress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getDelegatorAddress();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getValidatorAddress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getValidatorAddress();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGAmount *)getRewardAmount {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getRewardAmount();
        return ::djinni_generated::Amount::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto CosmosLikeReward::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto CosmosLikeReward::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGCosmosLikeReward>(cpp);
}

}  // namespace djinni_generated

@end
