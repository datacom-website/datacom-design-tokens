# Datacom Design Tokens

This contains the all the style tokens for the Datacom brand. The tokens can be built for 3 different platforms at the moment - web, android and ios. The tokens are stored as JSON files under `src/`. The brand colors are under `src/color` and applies to all platforms. However things like fonts and typography can be specific to platforms and for web these can be found in `src/web-platform`. To create new tokens specific to ios or android please create `src/ios-platform` or `src/android-platform`.

Please be careful when changing tokens shared between platforms as other teams at Datacom might be using these.

To make changes go into the JSON files inside `src/`. The JSON files are built using [Amazon Style Dictionary](https://amzn.github.io/style-dictionary/), go to their site for more information on syntax and functionality.

If the file format you need is not being built at the moment you can edit the `build.js` file to add the format. For more information on this and which format is supported head to [Amazon Style Dictionary](https://amzn.github.io/style-dictionary/) and [this Medium article](https://medium.com/@didoo/how-to-manage-your-design-tokens-with-style-dictionary-98c795b938aa).

To build the styles you can run:
```bash
npm i
npm run build
```

You should see something like this output:
```
Build started...

==============================================

Processing: [web]

css
✔︎  build/css/_variables.css

less
✔︎  build/less/_variables.less

scss
✔︎  build/scss/_variables.scss

End processing

==============================================

Processing: [ios]

ios
✔︎  build/ios/StyleDictionaryColor.h
✔︎  build/ios/StyleDictionaryColor.m

ios-swift
✔︎  build/ios-swift/StyleDictionary.swift

ios-swift-separate-enums
✔︎  build/ios-swift/StyleDictionaryColor.swift

End processing

==============================================

Processing: [android]

android
✔︎  build/android/colors.xml

End processing

==============================================

```

Pat yourself on the back, you have now built your first style dictionary! Moving on, take a look at what we have built. This should have created a build directory and it should look similar to this:
```
├── README.md
├── build.js
├── src/
│   ├── color/
│       ├── color.json
│       ├── font.json
│   ├── web-platform/   
├── build/
│   ├── android/
│      ├── colors.xml
│   ├── scss/
│      ├── _variables.scss
│   ├── ios/
│      ├── StyleDictionaryColor.h
│      ├── StyleDictionaryColor.m
│   ├── ios-swift/
│      ├── StyleDictionary.swift
│      ├── StyleDictionaryColor.swift
```

If you open `build.js` you will see there are 3 platforms defined: scss, android, ios. Each platform has a transformGroup, buildPath, and files. The buildPath and files of the platform should match up to the files what were built. 

Pretty nifty! This shows a few things happening:
1. The build system does a deep merge of all the property JSON files defined in the `source` attribute of `config.json`. This allows you to split up the property JSON files however you want. There are 2 JSON files with `color` as the top level key, but they get merged properly.
2. The build system resolves references to other style properties. `{size.font.medium.value}` gets resolved properly.
3. The build system handles references to property values in other files as well as you can see in `properties/color/font.json`.


**Huzzah!**

Now go forth and create! Take a look at all the built-in [transforms](https://amzn.github.io/style-dictionary/#/transforms?id=pre-defined-transforms) and [formats](https://amzn.github.io/style-dictionary/#/formats?id=pre-defined-formats).
