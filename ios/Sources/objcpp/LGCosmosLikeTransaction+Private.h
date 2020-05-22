// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#include "CosmosLikeTransaction.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGCosmosLikeTransaction;

namespace djinni_generated {

class CosmosLikeTransaction
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::CosmosLikeTransaction>;
    using CppOptType = std::shared_ptr<::ledger::core::api::CosmosLikeTransaction>;
    using ObjcType = LGCosmosLikeTransaction*;

    using Boxed = CosmosLikeTransaction;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated
