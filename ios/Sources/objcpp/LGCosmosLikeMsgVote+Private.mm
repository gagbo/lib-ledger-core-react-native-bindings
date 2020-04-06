// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMsgVote+Private.h"
#import "DJIMarshal+Private.h"
#import "LGCosmosLikeVoteOption+Private.h"
#include <cassert>

namespace djinni_generated {

auto CosmosLikeMsgVote::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::String::toCpp(obj.voter),
            ::djinni::String::toCpp(obj.proposalId),
            ::djinni::Enum<::ledger::core::api::CosmosLikeVoteOption, LGCosmosLikeVoteOption>::toCpp(obj.option)};
}

auto CosmosLikeMsgVote::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[LGCosmosLikeMsgVote alloc] initWithVoter:(::djinni::String::fromCpp(cpp.voter))
                                           proposalId:(::djinni::String::fromCpp(cpp.proposalId))
                                               option:(::djinni::Enum<::ledger::core::api::CosmosLikeVoteOption, LGCosmosLikeVoteOption>::fromCpp(cpp.option))];
}

}  // namespace djinni_generated
