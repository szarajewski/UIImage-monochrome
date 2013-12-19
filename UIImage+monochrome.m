//
//  UIImage+monochrome.m
//  Created by szarajewski (vitaliy.sharaevskiy@gmail.com).
//

#import "UIImage+monochrome.h"

@implementation UIImage (monochrome)

+ (UIImage *) imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

+ (UIImage *) imageWithGrayColor {
    static UIImage *GrayImage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        GrayImage = [self imageWithColor:[UIColor lightGrayColor]];
    });
    return GrayImage;
}

+ (UIImage *) imageWithOrangeColor {
    static UIImage *OrangeImage;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        OrangeImage = [self imageWithColor:[UIColor orangeColor]];
    });
    return OrangeImage;
}

@end
