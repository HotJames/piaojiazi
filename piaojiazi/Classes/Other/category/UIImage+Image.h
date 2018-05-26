//
//  UIImage+Image.h
//  piaojiazi
//
//  Created by James on 2018/5/18.
//  Copyright © 2018年 James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Image)

+ (UIImage *) imageOriginalWithName:(NSString *)imageName;

+ (UIImage *) imageWithFrame:(CGRect)frame alphe:(CGFloat)alphe;

@end
