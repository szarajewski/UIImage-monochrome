//
//  UIImage+monochrome.h
//  Created by szarajewski (vitaliy.sharaevskiy@gmail.com).
//

#import <UIKit/UIKit.h>

@interface UIImage (monochrome)

+ (UIImage *) imageWithColor:(UIColor *)color;

// Here you can add your own factory methods
+ (UIImage *) imageWithGrayColor;
+ (UIImage *) imageWithOrangeColor;

@end
