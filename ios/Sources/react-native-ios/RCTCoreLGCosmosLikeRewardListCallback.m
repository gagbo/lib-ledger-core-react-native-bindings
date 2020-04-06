// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreLGCosmosLikeRewardListCallback.h"


@implementation RCTCoreLGCosmosLikeRewardListCallback
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge
{
    self = [super init];
    if(self)
    {
        self.resolve = resolve;
        self.reject = reject;
        self.bridge = bridge;
    }
    return self;
}

/**
 * Method triggered when main task complete.
 * @params result optional of type list<T>, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable NSArray<LGCosmosLikeReward *> *)result
             error:(nullable LGError *)error {
    if (error)
    {
        self.reject(@"RCTCoreLGCosmosLikeRewardListCallback Error", error.message, nil);
        return;
    }

    NSMutableArray *converted_result = [[NSMutableArray alloc] init];
    for (id result_elem in result)
    {
        NSString *result_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGCosmosLikeReward *rctImpl_result_elem = (RCTCoreLGCosmosLikeReward *)[self.bridge moduleForName:@"CoreLGCosmosLikeReward"];
        if (result_elem)
        {
            NSArray *result_elem_array = [[NSArray alloc] initWithObjects:result_elem, result_elem_uuid, nil];
            [rctImpl_result_elem baseSetObject:result_elem_array];
        }
        NSDictionary *converted_result_elem = @{@"type" : @"CoreLGCosmosLikeReward", @"uid" : result_elem_uuid };
        [converted_result addObject:converted_result_elem];
    }

    self.resolve(converted_result);

}
@end
