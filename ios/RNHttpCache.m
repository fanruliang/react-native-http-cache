
#import "RNHttpCache.h"

@implementation RNHttpCache

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getHttpCacheSize:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)
{
    NSURLCache *httpCache = [NSURLCache sharedURLCache];
    resolve(@([httpCache currentDiskUsage]));
}

RCT_EXPORT_METHOD(clearCache:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)
{
    NSURLCache *httpCache = [NSURLCache sharedURLCache];
    [httpCache removeAllCachedResponses];
    resolve(nil);
}


RCT_EXPORT_METHOD(getImageCacheSize:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)
{
    resolve(@0);
}

RCT_EXPORT_METHOD(clearImageCache:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)
{
    resolve(nil);
}

@end
  