//
//  UIImage+Image.m
//  piaojiazi
//
//  Created by James on 2018/5/18.
//  Copyright © 2018年 James. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)

+ (UIImage *)imageOriginalWithName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    // 快速生成一个没有被系统自动渲染的图片
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}


// 设置导航栏颜色19,144,237
+ (UIImage *) imageWithFrame:(CGRect)frame alphe:(CGFloat)alphe
{
    frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    UIColor *navColor = [UIColor colorWithRed:19 / 256.0 green:144 / 256.0 blue:237 / 256.0 alpha:alphe];
    UIGraphicsBeginImageContext(frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [navColor CGColor]);
    CGContextFillRect(context, frame);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
