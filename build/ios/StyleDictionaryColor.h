
//
// StyleDictionaryColor.h
//
// Do not edit directly
// Generated on Wed, 14 Jun 2023 05:45:34 GMT
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
ColorActionBlueHover,
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
ColorCobaltBlue20,
ColorCobaltBlue40,
ColorCobaltBlue60,
ColorCobaltBlue80,
ColorCobaltBlueBase,
ColorSkyBlue20,
ColorSkyBlue40,
ColorSkyBlue60,
ColorSkyBlue80,
ColorSkyBlueBase,
ColorAccentOrange20,
ColorAccentOrange40,
ColorAccentOrange60,
ColorAccentOrange80,
ColorAccentOrangeBase,
ColorRagRed,
ColorRagAmber,
ColorRagGreen,
ColorDatacomBlack,
ColorDarkestGrey,
ColorDarkGrey,
ColorGrey,
ColorLightGrey,
ColorExtraLightGrey,
ColorWhite,
ColorErrorRed
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
