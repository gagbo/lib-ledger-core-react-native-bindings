// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

#import <Foundation/Foundation.h>

@interface LGAlgorandPaymentInfo : NSObject
- (nonnull instancetype)initWithRecipientAddress:(nonnull NSString *)recipientAddress
                                          amount:(nonnull NSString *)amount
                                    closeAddress:(nullable NSString *)closeAddress
                                     closeAmount:(nullable NSString *)closeAmount;
+ (nonnull instancetype)AlgorandPaymentInfoWithRecipientAddress:(nonnull NSString *)recipientAddress
                                                         amount:(nonnull NSString *)amount
                                                   closeAddress:(nullable NSString *)closeAddress
                                                    closeAmount:(nullable NSString *)closeAmount;

/** The recipient's address */
@property (nonatomic, readonly, nonnull) NSString * recipientAddress;

/** The amount of MicroAlgos being transferred */
@property (nonatomic, readonly, nonnull) NSString * amount;

/** The address to send all remaining funds before closing the account */
@property (nonatomic, readonly, nullable) NSString * closeAddress;

/** The amount sent to CloseRemainderTo, for committed transaction */
@property (nonatomic, readonly, nullable) NSString * closeAmount;

@end