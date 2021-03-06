// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from big_int.djinni

#import "LGBigInt+Private.h"
#import "LGBigInt.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGBigInt ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::BigInt>&)cppRef;

@end

@implementation LGBigInt {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::BigInt>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::BigInt>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable LGBigInt *)add:(nullable LGBigInt *)i {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->add(::djinni_generated::BigInt::toCpp(i));
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)subtract:(nullable LGBigInt *)i {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->subtract(::djinni_generated::BigInt::toCpp(i));
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)multiply:(nullable LGBigInt *)i {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->multiply(::djinni_generated::BigInt::toCpp(i));
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)divide:(nullable LGBigInt *)i {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->divide(::djinni_generated::BigInt::toCpp(i));
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray<LGBigInt *> *)divideAndRemainder:(nullable LGBigInt *)i {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->divideAndRemainder(::djinni_generated::BigInt::toCpp(i));
        return ::djinni::List<::djinni_generated::BigInt>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGBigInt *)pow:(int32_t)exponent {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->pow(::djinni::I32::toCpp(exponent));
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)toDecimalString:(int32_t)precision
                     decimalSeparator:(nonnull NSString *)decimalSeparator
                    thousandSeparator:(nonnull NSString *)thousandSeparator {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->toDecimalString(::djinni::I32::toCpp(precision),
                                                                   ::djinni::String::toCpp(decimalSeparator),
                                                                   ::djinni::String::toCpp(thousandSeparator));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)toString:(int32_t)radix {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->toString(::djinni::I32::toCpp(radix));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)intValue {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->intValue();
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)compare:(nullable LGBigInt *)i {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->compare(::djinni_generated::BigInt::toCpp(i));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nullable LGBigInt *)fromDecimalString:(nonnull NSString *)s
                               precision:(int32_t)precision
                        decimalSeparator:(nonnull NSString *)decimalSeparator {
    try {
        auto objcpp_result_ = ::ledger::core::api::BigInt::fromDecimalString(::djinni::String::toCpp(s),
                                                                             ::djinni::I32::toCpp(precision),
                                                                             ::djinni::String::toCpp(decimalSeparator));
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nullable LGBigInt *)fromIntegerString:(nonnull NSString *)s
                                   radix:(int32_t)radix {
    try {
        auto objcpp_result_ = ::ledger::core::api::BigInt::fromIntegerString(::djinni::String::toCpp(s),
                                                                             ::djinni::I32::toCpp(radix));
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nullable LGBigInt *)fromLong:(int64_t)l {
    try {
        auto objcpp_result_ = ::ledger::core::api::BigInt::fromLong(::djinni::I64::toCpp(l));
        return ::djinni_generated::BigInt::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto BigInt::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto BigInt::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGBigInt>(cpp);
}

}  // namespace djinni_generated

@end
