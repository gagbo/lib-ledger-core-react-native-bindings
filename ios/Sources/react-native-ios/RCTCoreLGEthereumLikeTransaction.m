// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ethereum_like_wallet.djinni

#import "RCTCoreLGEthereumLikeTransaction.h"


@implementation RCTCoreLGEthereumLikeTransaction
//Export module
RCT_EXPORT_MODULE(RCTCoreLGEthereumLikeTransaction)

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
-(NSData *) hexStringToData: (NSString *)hexString 
{
    NSMutableData *data= [[NSMutableData alloc] init];
    unsigned char byte;
    char byteChars[3] = {'\0','\0','\0'};
    for (int i = 0; i < ([hexString length] / 2); i++)
    {
        byteChars[0] = [hexString characterAtIndex: i*2];
        byteChars[1] = [hexString characterAtIndex: i*2 + 1];
        byte = strtol(byteChars, NULL, 16);
        [data appendBytes:&byte length:1];
    }
    return data;
}

/** Get the hash of the transaction. */
RCT_REMAP_METHOD(getHash,getHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getHash, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getHash", nil);
        return;
    }

}

/** Get the nonce of the transaction : sequence number issued by originating EOA. */
RCT_REMAP_METHOD(getNonce,getNonce:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getNonce, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getNonce, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getNonce];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getNonce", nil);
        return;
    }

}

/** Get Gas price (in wei). */
RCT_REMAP_METHOD(getGasPrice,getGasPrice:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getGasPrice, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getGasPrice, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getGasPrice];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getGasPrice", nil);
        return;
    }

}

/** Get start gas (in wei) : maximum amount of gas the originator is willing to pay. */
RCT_REMAP_METHOD(getGasLimit,getGasLimit:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getGasLimit, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getGasLimit, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getGasLimit];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getGasLimit", nil);
        return;
    }

}

/** Effective used gas. */
RCT_REMAP_METHOD(getGasUsed,getGasUsed:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getGasUsed, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getGasUsed, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getGasUsed];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getGasUsed", nil);
        return;
    }

}

/** Get destination ETH address. */
RCT_REMAP_METHOD(getReceiver,getReceiver:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getReceiver, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getReceiver, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGEthereumLikeAddress * objcResult = [currentInstanceObj getReceiver];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGEthereumLikeAddress *rctImpl_objcResult = (RCTCoreLGEthereumLikeAddress *)[self.bridge moduleForName:@"CoreLGEthereumLikeAddress"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGEthereumLikeAddress", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getReceiver", nil);
        return;
    }

}

/** Get ETH sender address. */
RCT_REMAP_METHOD(getSender,getSender:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getSender, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getSender, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGEthereumLikeAddress * objcResult = [currentInstanceObj getSender];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGEthereumLikeAddress *rctImpl_objcResult = (RCTCoreLGEthereumLikeAddress *)[self.bridge moduleForName:@"CoreLGEthereumLikeAddress"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGEthereumLikeAddress", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getSender", nil);
        return;
    }

}

/** Get amount of ether to send. */
RCT_REMAP_METHOD(getValue,getValue:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getValue, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getValue, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getValue];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getValue", nil);
        return;
    }

}

/** Get binary data payload. */
RCT_REMAP_METHOD(getData,getData:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getData, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getData, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj getData];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getData", nil);
        return;
    }

}

/** Get status of transaction: equals to 1 if succeeded, 0 otherwise */
RCT_REMAP_METHOD(getStatus,getStatus:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getStatus, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getStatus, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getStatus];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getStatus", nil);
        return;
    }

}

/** Serialize the transaction to its raw format. */
RCT_REMAP_METHOD(serialize,serialize:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::serialize, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::serialize, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj serialize];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::serialize", nil);
        return;
    }

}

/** Set signature of transaction, when a signature is set serialize method gives back serialized Tx. */
RCT_REMAP_METHOD(setSignature,setSignature:(NSDictionary *)currentInstance withParams:(NSString *)vSignature
                                                                           rSignature:(NSString *)rSignature
                                                                           sSignature:(NSString *)sSignature withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::setSignature, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::setSignature, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:vSignature];

    NSData *objcParam_1 = [self hexStringToData:rSignature];

    NSData *objcParam_2 = [self hexStringToData:sSignature];

    [currentInstanceObj setSignature:objcParam_0 rSignature:objcParam_1 sSignature:objcParam_2];
    resolve(@(YES));

}

RCT_REMAP_METHOD(setDERSignature,setDERSignature:(NSDictionary *)currentInstance withParams:(NSString *)signature withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::setDERSignature, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::setDERSignature, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:signature];

    [currentInstanceObj setDERSignature:objcParam_0];
    resolve(@(YES));

}

RCT_REMAP_METHOD(setVSignature,setVSignature:(NSDictionary *)currentInstance withParams:(NSString *)vSignature withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::setVSignature, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::setVSignature, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData *objcParam_0 = [self hexStringToData:vSignature];

    [currentInstanceObj setVSignature:objcParam_0];
    resolve(@(YES));

}

/**
 * Get the time when the transaction was issued or the time of the block including this
 * transaction.
 */
RCT_REMAP_METHOD(getDate,getDate:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getDate, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getDate, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSDate * objcResult = [currentInstanceObj getDate];
    NSISO8601DateFormatter *dateFormatter = [[NSISO8601DateFormatter alloc] init];
    NSString *objcResultDate = [dateFormatter stringFromDate:objcResult];
    NSDictionary *result = @{@"value" : objcResultDate};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getDate", nil);
        return;
    }

}

/** Get block to which transaction belongs (was mined in). */
RCT_REMAP_METHOD(getBlock,getBlock:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGEthereumLikeTransaction::getBlock, first argument should be an instance of LGEthereumLikeTransaction", nil);
        return;
    }
    LGEthereumLikeTransaction *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGEthereumLikeTransaction::getBlock, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGEthereumLikeBlock * objcResult = [currentInstanceObj getBlock];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGEthereumLikeBlock *rctImpl_objcResult = (RCTCoreLGEthereumLikeBlock *)[self.bridge moduleForName:@"CoreLGEthereumLikeBlock"];
    if (objcResult)
    {
        NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
        [rctImpl_objcResult baseSetObject:objcResult_array];
    }
    NSDictionary *result = @{@"type" : @"CoreLGEthereumLikeBlock", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGEthereumLikeTransaction::getBlock", nil);
        return;
    }

}
@end
