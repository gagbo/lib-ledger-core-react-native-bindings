// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeVoteOption.h"
#import <Foundation/Foundation.h>

@interface LGCosmosLikeMsgVote : NSObject
- (nonnull instancetype)initWithVoter:(nonnull NSString *)voter
                           proposalId:(nonnull NSString *)proposalId
                               option:(LGCosmosLikeVoteOption)option;
+ (nonnull instancetype)CosmosLikeMsgVoteWithVoter:(nonnull NSString *)voter
                                        proposalId:(nonnull NSString *)proposalId
                                            option:(LGCosmosLikeVoteOption)option;

@property (nonatomic, readonly, nonnull) NSString * voter;

@property (nonatomic, readonly, nonnull) NSString * proposalId;

@property (nonatomic, readonly) LGCosmosLikeVoteOption option;

@end
