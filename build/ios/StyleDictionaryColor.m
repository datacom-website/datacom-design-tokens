
//
// StyleDictionaryColor.m
//
// Do not edit directly
// Generated on Mon, 22 Jun 2020 09:00:36 GMT
//

#import "StyleDictionaryColor.h"


@implementation StyleDictionaryColor

+ (UIColor *)color:(StyleDictionaryColorName)colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.980f green:0.800f blue:0.875f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.600f blue:0.749f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.400f blue:0.624f alpha:1.000f],
[UIColor colorWithRed:0.922f green:0.200f blue:0.498f alpha:1.000f],
[UIColor colorWithRed:0.902f green:0.000f blue:0.376f alpha:1.000f],
[UIColor colorWithRed:0.808f green:0.816f blue:0.843f alpha:1.000f],
[UIColor colorWithRed:0.616f green:0.635f blue:0.686f alpha:1.000f],
[UIColor colorWithRed:0.424f green:0.455f blue:0.533f alpha:1.000f],
[UIColor colorWithRed:0.231f green:0.275f blue:0.376f alpha:1.000f],
[UIColor colorWithRed:0.039f green:0.094f blue:0.224f alpha:1.000f],
[UIColor colorWithRed:0.800f green:0.827f blue:0.886f alpha:1.000f],
[UIColor colorWithRed:0.600f green:0.655f blue:0.776f alpha:1.000f],
[UIColor colorWithRed:0.400f green:0.482f blue:0.663f alpha:1.000f],
[UIColor colorWithRed:0.200f green:0.310f blue:0.549f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.141f blue:0.439f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.333f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.247f blue:0.737f alpha:1.000f],
[UIColor colorWithRed:0.890f green:0.953f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.784f green:0.906f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.675f green:0.859f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.569f green:0.812f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.463f green:0.769f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.988f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.976f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.937f green:0.965f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.918f green:0.953f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.898f green:0.945f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.988f green:0.859f blue:0.831f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.718f blue:0.667f alpha:1.000f],
[UIColor colorWithRed:0.965f green:0.576f blue:0.502f alpha:1.000f],
[UIColor colorWithRed:0.953f green:0.435f blue:0.337f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.298f blue:0.173f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.212f blue:0.306f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.690f blue:0.173f alpha:1.000f],
[UIColor colorWithRed:0.251f green:0.710f blue:0.286f alpha:1.000f],
[UIColor colorWithRed:0.082f green:0.082f blue:0.082f alpha:1.000f],
[UIColor colorWithRed:0.200f green:0.200f blue:0.200f alpha:1.000f],
[UIColor colorWithRed:0.400f green:0.400f blue:0.400f alpha:1.000f],
[UIColor colorWithRed:0.600f green:0.600f blue:0.600f alpha:1.000f],
[UIColor colorWithRed:0.855f green:0.855f blue:0.855f alpha:1.000f],
[UIColor colorWithRed:0.941f green:0.941f blue:0.941f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.812f green:0.212f blue:0.306f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
