// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from memo.djinni

#import "RCTCoreLGRippleLikeMemo.h"
#import "LGRippleLikeMemo.h"

@implementation RCTCoreLGRippleLikeMemo

//Export module
RCT_EXPORT_MODULE(RCTCoreLGRippleLikeMemo)

@synthesize bridge = _bridge;

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseRelease:currentInstance withResolver: resolve rejecter:reject];
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseLogWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseFlushWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(isNull, isNull:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseIsNull:currentInstance withResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(init, initWithData:(nonnull NSString *)data
                                fmt:(nonnull NSString *)fmt
                                 ty:(nonnull NSString *)ty withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {


    LGRippleLikeMemo * finalResult = [[LGRippleLikeMemo alloc] initWithData:data fmt:fmt ty:ty];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGRippleLikeMemo *rctImpl = (RCTCoreLGRippleLikeMemo *)[self.bridge moduleForName:@"CoreLGRippleLikeMemo"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
    NSDictionary *result = @{@"type" : @"CoreLGRippleLikeMemo", @"uid" : uuid };
    if (result)
    {
        resolve(result);
    }
}

RCT_REMAP_METHOD(getData, getData:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGRippleLikeMemo *objcImpl = (LGRippleLikeMemo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.data};
    resolve(result);
}

RCT_REMAP_METHOD(getFmt, getFmt:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGRippleLikeMemo *objcImpl = (LGRippleLikeMemo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.fmt};
    resolve(result);
}

RCT_REMAP_METHOD(getTy, getTy:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGRippleLikeMemo *objcImpl = (LGRippleLikeMemo *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.ty};
    resolve(result);
}

@end