// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#include "CosmosLikeRedelegationEntry.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGCosmosLikeRedelegationEntry;

namespace djinni_generated {

class CosmosLikeRedelegationEntry
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::CosmosLikeRedelegationEntry>;
    using CppOptType = std::shared_ptr<::ledger::core::api::CosmosLikeRedelegationEntry>;
    using ObjcType = LGCosmosLikeRedelegationEntry*;

    using Boxed = CosmosLikeRedelegationEntry;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

