/**
 * wenhui.dong
 * 2020.06.16
 */
import { NativeModules } from 'react-native';
const Cache = NativeModules.RNWHCache;

export const getDiskCacheSize = Cache.getHttpDiskCacheSize;
export const getMemoryCacheSize = Cache.getHttpMemoryCacheSize;
export const clearHttpCache = Cache.clearHttpAllCache;
export const getImageCacheSize = Cache.getImageCacheSize;
export const clearImageCache = Cache.clearImageCache;
export async function getHttpAllCache() {
    const cacheArr = await Promise.all([getDiskCacheSize(), getMemoryCacheSize(),getImageCacheSize()]);
    return cacheArr.reduce((a, b) => a + b, 0);
}
export async function clearAllCache(){
    await Promise.all([clearHttpCache(), clearImageCache()]);
  }

