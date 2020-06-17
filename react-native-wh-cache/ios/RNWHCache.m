//
//  RNCache.m
//  wenhui.dong
//  Created by yhsd on 2020/6/16.
//

#import "RNWHCache.h"
#import <React/RCTLog.h>
@implementation RNWHCache

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getHttpDiskCacheSize:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  NSURLCache *httpCache = [NSURLCache sharedURLCache];
  NSInteger diskSize = [httpCache currentDiskUsage];
  resolve(@(diskSize));
}
RCT_EXPORT_METHOD(getHttpMemoryCacheSize:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject){
  NSURLCache *httpCache = [NSURLCache sharedURLCache];
  NSInteger memorySize = [httpCache currentMemoryUsage];
  resolve(@(memorySize));
}
RCT_EXPORT_METHOD(clearHttpAllCache:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  NSURLCache *httpCache = [NSURLCache sharedURLCache];
  [httpCache removeAllCachedResponses];
  resolve(nil);
}
RCT_EXPORT_METHOD(getImageCacheSize:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(@(0));
}
RCT_EXPORT_METHOD(clearImageCache:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(nil);
}
@end
  
