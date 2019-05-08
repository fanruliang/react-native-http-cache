
import { NativeModules } from 'react-native';

const { RNHttpCache } = NativeModules;

// export default RNHttpCache;
export const clearHttpCache = RNHttpCache.clearCache;

export const getHttpCacheSize = RNHttpCache.getHttpCacheSize;

export const clearImageCache = RNHttpCache.clearImageCache;

export const getImageCacheSize = RNHttpCache.getImageCacheSize;

export async function getCacheSize(){
    const arr = await Promise.all([getHttpCacheSize(), getImageCacheSize()]);

    console.log(arr.join(','));
    // Get sum of all cache type.
    return arr.reduce((a,b)=>a+b, 0);
}

export async function clearCache(){
    await Promise.all([clearHttpCache(), clearImageCache()]);
}
