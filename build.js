const StyleDictionaryPackage = require('style-dictionary');

// HAVE THE STYLE DICTIONARY CONFIG DYNAMICALLY GENERATED

function getStyleDictionaryConfig(platform) {
    return {
        "source": [
            `src/color/*.json`,
            `src/${platform}-platform/**/*.json`
        ],
        "platforms": {
            "css": {
                "transformGroup": "css",
                "buildPath": "build/css/",
                "files": [{
                    "destination": "_variables.css",
                    "format": "css/variables"
                }]
            },
            "less": {
                "transformGroup": "less",
                "buildPath": "build/less/",
                "files": [{
                    "destination": "_variables.less",
                    "format": "less/variables"
                }]
            },
            "scss": {
                "transformGroup": "scss",
                "buildPath": "build/scss/",
                "files": [{
                    "destination": "_variables.scss",
                    "format": "scss/variables"
                }]
            },
            "android": {
                "transformGroup": "android",
                "buildPath": "build/android/",
                "files": [{
                    "destination": "colors.xml",
                    "format": "android/colors"
                }]
            },
            "ios": {
                "transformGroup": "ios",
                "buildPath": "build/ios/",
                "files": [{
                    "destination": "StyleDictionaryColor.h",
                    "format": "ios/colors.h",
                    "className": "StyleDictionaryColor",
                    "type": "StyleDictionaryColorName",
                    "filter": {
                        "attributes": {
                            "category": "color"
                        }
                    }
                }, {
                    "destination": "StyleDictionaryColor.m",
                    "format": "ios/colors.m",
                    "className": "StyleDictionaryColor",
                    "type": "StyleDictionaryColorName",
                    "filter": {
                        "attributes": {
                            "category": "color"
                        }
                    }
                }]
            },
            "ios-swift": {
                "transformGroup": "ios-swift",
                "buildPath": "build/ios-swift/",
                "files": [{
                    "destination": "StyleDictionary.swift",
                    "format": "ios-swift/class.swift",
                    "className": "StyleDictionary",
                    "filter": {}
                }]
            },
            "ios-swift-separate-enums": {
                "transformGroup": "ios-swift-separate",
                "buildPath": "build/ios-swift/",
                "files": [{
                    "destination": "StyleDictionaryColor.swift",
                    "format": "ios-swift/enum.swift",
                    "className": "StyleDictionaryColor",
                    "filter": {
                        "attributes": {
                            "category": "color"
                        }
                    }
                }]
            }
        }
    };
}

console.log('Build started...');

// PROCESS THE DESIGN TOKENS FOR THE DIFFEREN BRANDS AND PLATFORMS

['web', 'ios', 'android'].map(function (platform) {

    console.log('\n==============================================');
    console.log(`\nProcessing: [${platform}]`);

    const StyleDictionary = StyleDictionaryPackage.extend(getStyleDictionaryConfig(platform));

    if (platform === 'web') {
        StyleDictionary.buildPlatform('css');
        StyleDictionary.buildPlatform('less');
        StyleDictionary.buildPlatform('scss');
    } else if (platform === 'ios') {
        StyleDictionary.buildPlatform('ios');
        StyleDictionary.buildPlatform('ios-swift');
        StyleDictionary.buildPlatform('ios-swift-separate-enums');
    } else if (platform === 'android') {
        StyleDictionary.buildPlatform('android');
    }

    console.log('\nEnd processing');

})

console.log('\n==============================================');
console.log('\nBuild completed!');