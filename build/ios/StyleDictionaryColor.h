
//
// StyleDictionaryColor.h
//
// Do not edit directly
// Generated on Thu, 12 Mar 2020 21:04:41 GMT
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorAccentPink20,
ColorAccentPink40,
ColorAccentPink60,
ColorAccentPink80,
ColorAccentPinkBase,
ColorDarkBlue20,
ColorDarkBlue40,
ColorDarkBlue60,
ColorDarkBlue80,
ColorDarkBlueBase,
ColorDatacomBlue20,
ColorDatacomBlue40,
ColorDatacomBlue60,
ColorDatacomBlue80,
ColorDatacomBlueBase,
ColorActionBlue,
ColorLightBlue20,
ColorLightBlue40,
ColorLightBlue60,
ColorLightBlue80,
ColorLightBlueBase,
ColorExtraLightBlue20,
ColorExtraLightBlue40,
ColorExtraLightBlue60,
ColorExtraLightBlue80,
ColorExtraLightBlueBase,
ColorAccentOrange20,
ColorAccentOrange40,
ColorAccentOrange60,
ColorAccentOrange80,
ColorAccentOrangeBase,
ColorDatacomBlack,
ColorDarkestGrey,
ColorDarkGrey,
ColorGrey,
ColorLightGrey,
ColorExtraLightGrey,
ColorWhite
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
