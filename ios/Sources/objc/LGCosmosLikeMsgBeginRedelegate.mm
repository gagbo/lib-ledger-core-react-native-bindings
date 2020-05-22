// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMsgBeginRedelegate.h"


@implementation LGCosmosLikeMsgBeginRedelegate

- (nonnull instancetype)initWithDelegatorAddress:(nonnull NSString *)delegatorAddress
                          validatorSourceAddress:(nonnull NSString *)validatorSourceAddress
                     validatorDestinationAddress:(nonnull NSString *)validatorDestinationAddress
                                          amount:(nonnull LGCosmosLikeAmount *)amount
{
    if (self = [super init]) {
        _delegatorAddress = [delegatorAddress copy];
        _validatorSourceAddress = [validatorSourceAddress copy];
        _validatorDestinationAddress = [validatorDestinationAddress copy];
        _amount = amount;
    }
    return self;
}

+ (nonnull instancetype)CosmosLikeMsgBeginRedelegateWithDelegatorAddress:(nonnull NSString *)delegatorAddress
                                                  validatorSourceAddress:(nonnull NSString *)validatorSourceAddress
                                             validatorDestinationAddress:(nonnull NSString *)validatorDestinationAddress
                                                                  amount:(nonnull LGCosmosLikeAmount *)amount
{
    return [[self alloc] initWithDelegatorAddress:delegatorAddress
                           validatorSourceAddress:validatorSourceAddress
                      validatorDestinationAddress:validatorDestinationAddress
                                           amount:amount];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p delegatorAddress:%@ validatorSourceAddress:%@ validatorDestinationAddress:%@ amount:%@>", self.class, (void *)self, self.delegatorAddress, self.validatorSourceAddress, self.validatorDestinationAddress, self.amount];
}

@end