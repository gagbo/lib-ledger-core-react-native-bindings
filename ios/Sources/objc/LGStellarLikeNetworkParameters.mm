// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from network.djinni

#import "LGStellarLikeNetworkParameters.h"


@implementation LGStellarLikeNetworkParameters

- (nonnull instancetype)initWithIdentifier:(nonnull NSString *)Identifier
                                   Version:(nonnull NSData *)Version
                               BaseReserve:(int64_t)BaseReserve
                                   BaseFee:(int64_t)BaseFee
                            AdditionalSEPs:(nonnull NSArray<NSString *> *)AdditionalSEPs
                         NetworkPassphrase:(nonnull NSString *)NetworkPassphrase
{
    if (self = [super init]) {
        _Identifier = [Identifier copy];
        _Version = [Version copy];
        _BaseReserve = BaseReserve;
        _BaseFee = BaseFee;
        _AdditionalSEPs = [AdditionalSEPs copy];
        _NetworkPassphrase = [NetworkPassphrase copy];
    }
    return self;
}

+ (nonnull instancetype)StellarLikeNetworkParametersWithIdentifier:(nonnull NSString *)Identifier
                                                           Version:(nonnull NSData *)Version
                                                       BaseReserve:(int64_t)BaseReserve
                                                           BaseFee:(int64_t)BaseFee
                                                    AdditionalSEPs:(nonnull NSArray<NSString *> *)AdditionalSEPs
                                                 NetworkPassphrase:(nonnull NSString *)NetworkPassphrase
{
    return [[self alloc] initWithIdentifier:Identifier
                                    Version:Version
                                BaseReserve:BaseReserve
                                    BaseFee:BaseFee
                             AdditionalSEPs:AdditionalSEPs
                          NetworkPassphrase:NetworkPassphrase];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p Identifier:%@ Version:%@ BaseReserve:%@ BaseFee:%@ AdditionalSEPs:%@ NetworkPassphrase:%@>", self.class, (void *)self, self.Identifier, self.Version, @(self.BaseReserve), @(self.BaseFee), self.AdditionalSEPs, self.NetworkPassphrase];
}

@end
