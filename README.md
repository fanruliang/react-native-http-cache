
# react-native-http-cache

## Getting started

`$ npm install react-native-http-cache3 --save`

### Mostly automatic installation

`$ react-native link react-native-http-cache3`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-http-cache` and add `RNHttpCache.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNHttpCache.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.ruliang.cache.RNHttpCachePackage;` to the imports at the top of the file
  - Add `new RNHttpCachePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-http-cache'
  	project(':react-native-http-cache').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-http-cache/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-http-cache')
  	```


## Usage
```javascript
import RNHttpCache from 'react-native-http-cache';

// TODO: What to do with the module?
RNHttpCache;
```
  
