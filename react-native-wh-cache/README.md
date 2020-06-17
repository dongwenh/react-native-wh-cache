#  修改 react-native-http-cache https://github.com/reactnativecn/react-native-http-cache
# react-native-cache

## Getting started

`$ npm install react-native-wh-cache --save`

### Mostly automatic installation

`$ react-native link react-native-wh-cache`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-cache` and add `RNCache.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCache.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.wh.cache.RNCachePackage;` to the imports at the top of the file
  - Add `new RNCachePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-cache'
  	project(':react-native-cache').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-cache/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-cache')
  	```


## Usage
```javascript
import RNCache from 'react-native-cache';

// TODO: What to do with the module?
RNCache;
```
  
