// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ripple_like_wallet.djinni

#include "RippleConfiguration.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGRippleConfiguration;

namespace djinni_generated {

class RippleConfiguration
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::RippleConfiguration>;
    using CppOptType = std::shared_ptr<::ledger::core::api::RippleConfiguration>;
    using ObjcType = LGRippleConfiguration*;

    using Boxed = RippleConfiguration;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

