// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#import "LGTezosLikeBlock+Private.h"
#import "LGTezosLikeBlock.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGTezosLikeBlock ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::TezosLikeBlock>&)cppRef;

@end

@implementation LGTezosLikeBlock {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::TezosLikeBlock>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::TezosLikeBlock>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)getHash {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getHash();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int64_t)getHeight {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getHeight();
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSDate *)getTime {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getTime();
        return ::djinni::Date::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto TezosLikeBlock::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto TezosLikeBlock::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGTezosLikeBlock>(cpp);
}

}  // namespace djinni_generated

@end
