// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

#import "RCTCoreLGDatabaseResultSet.h"


@implementation RCTCoreLGDatabaseResultSet
//Export module
RCT_EXPORT_MODULE(RCTCoreLGDatabaseResultSet)

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

/**
 * Retrieve the current row pointed by the DatabaseResultSet. Return null if there is no row to retrieve.
 * @return The current row
 */
RCT_REMAP_METHOD(getRow,getRow:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseResultSet::getRow, first argument should be an instance of LGDatabaseResultSetImpl", nil);
        return;
    }
    LGDatabaseResultSetImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseResultSetImpl::getRow, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    id<LGDatabaseResultRow> objcResult = [currentInstanceObj getRow];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDatabaseResultRow *rctImpl_objcResult = (RCTCoreLGDatabaseResultRow *)[self.bridge moduleForName:@"CoreLGDatabaseResultRow"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseResultRow", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseResultSetImpl::getRow", nil);
        return;
    }

}

/** Get the number of rows updated by the query (UPDATE, INSERT, DELETE...) */
RCT_REMAP_METHOD(getUpdateCount,getUpdateCount:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseResultSet::getUpdateCount, first argument should be an instance of LGDatabaseResultSetImpl", nil);
        return;
    }
    LGDatabaseResultSetImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseResultSetImpl::getUpdateCount, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getUpdateCount];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseResultSetImpl::getUpdateCount", nil);
        return;
    }

}

/**
 * Returns true if the result set has at least one remaining row to get.
 * @return true if the result set has at least one remaining row to get, false otherwise.
 */
RCT_REMAP_METHOD(hasNext,hasNext:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseResultSet::hasNext, first argument should be an instance of LGDatabaseResultSetImpl", nil);
        return;
    }
    LGDatabaseResultSetImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseResultSetImpl::hasNext, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj hasNext];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseResultSetImpl::hasNext", nil);
        return;
    }

}

/**
 * Returns the number of remaining rows before the result set needs to load more rows
 * @return The number of remaining rows before the result set needs to load more rows.
 */
RCT_REMAP_METHOD(available,available:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseResultSet::available, first argument should be an instance of LGDatabaseResultSetImpl", nil);
        return;
    }
    LGDatabaseResultSetImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseResultSetImpl::available, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj available];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseResultSetImpl::available", nil);
        return;
    }

}

/**
 * Internally move the result set to the next available row. This method may fail if there is no further row to fetch.
 * @return Return a result set pointing to the next row.
 */
RCT_REMAP_METHOD(next,next:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseResultSet::next, first argument should be an instance of LGDatabaseResultSetImpl", nil);
        return;
    }
    LGDatabaseResultSetImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseResultSetImpl::next, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj next];
    resolve(@(YES));

}

/** Close the result set. */
RCT_REMAP_METHOD(close,close:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseResultSet::close, first argument should be an instance of LGDatabaseResultSetImpl", nil);
        return;
    }
    LGDatabaseResultSetImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseResultSetImpl::close, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    [currentInstanceObj close];
    resolve(@(YES));

}

/** Get the last error that occured on the database. */
RCT_REMAP_METHOD(getError,getError:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseResultSet::getError, first argument should be an instance of LGDatabaseResultSetImpl", nil);
        return;
    }
    LGDatabaseResultSetImpl *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGDatabaseResultSetImpl::getError, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    id<LGDatabaseError> objcResult = [currentInstanceObj getError];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDatabaseError *rctImpl_objcResult = (RCTCoreLGDatabaseError *)[self.bridge moduleForName:@"CoreLGDatabaseError"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseError", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGDatabaseResultSetImpl::getError", nil);
        return;
    }

}
RCT_REMAP_METHOD(newInstance, newInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGDatabaseResultSetImpl *objcResult = [[LGDatabaseResultSetImpl alloc] init];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    NSArray *resultArray = [[NSArray alloc] initWithObjects:objcResult, uuid, nil];
    [self baseSetObject:resultArray];
    NSDictionary *result = @{@"type" : @"CoreLGDatabaseResultSetImpl", @"uid" : uuid };
    if (!objcResult || !result)
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGDatabaseResultSetImpl::init", nil);
        return;
    }
    resolve(result);
}
@end
