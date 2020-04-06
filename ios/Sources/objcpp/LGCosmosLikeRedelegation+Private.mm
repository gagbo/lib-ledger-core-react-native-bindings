// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "LGCosmosLikeRedelegation+Private.h"
#import "LGCosmosLikeRedelegation.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGCosmosLikeRedelegationEntry+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGCosmosLikeRedelegation ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::CosmosLikeRedelegation>&)cppRef;

@end

@implementation LGCosmosLikeRedelegation {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::CosmosLikeRedelegation>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::CosmosLikeRedelegation>&)cppRef
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

- (nonnull NSString *)getSrcValidatorAddress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getSrcValidatorAddress();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getDstValidatorAddress {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getDstValidatorAddress();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray<LGCosmosLikeRedelegationEntry *> *)getEntries {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getEntries();
        return ::djinni::List<::djinni_generated::CosmosLikeRedelegationEntry>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto CosmosLikeRedelegation::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto CosmosLikeRedelegation::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGCosmosLikeRedelegation>(cpp);
}

}  // namespace djinni_generated

@end
