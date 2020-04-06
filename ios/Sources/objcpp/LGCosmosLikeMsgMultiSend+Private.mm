// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMsgMultiSend+Private.h"
#import "DJIMarshal+Private.h"
#import "LGCosmosLikeMultiSendInput+Private.h"
#import "LGCosmosLikeMultiSendOutput+Private.h"
#include <cassert>

namespace djinni_generated {

auto CosmosLikeMsgMultiSend::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::List<::djinni_generated::CosmosLikeMultiSendInput>::toCpp(obj.inputs),
            ::djinni::List<::djinni_generated::CosmosLikeMultiSendOutput>::toCpp(obj.outputs)};
}

auto CosmosLikeMsgMultiSend::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[LGCosmosLikeMsgMultiSend alloc] initWithInputs:(::djinni::List<::djinni_generated::CosmosLikeMultiSendInput>::fromCpp(cpp.inputs))
                                                    outputs:(::djinni::List<::djinni_generated::CosmosLikeMultiSendOutput>::fromCpp(cpp.outputs))];
}

}  // namespace djinni_generated
