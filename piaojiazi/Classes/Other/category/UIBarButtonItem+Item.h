//
//  UIBarButtonItem+Item.h
//  piaojiazi
//
//  Created by James on 2018/5/20.
//  Copyright © 2018年 James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)

// 快速创建UIBarButtonItem方法
+ (UIBarButtonItem *)itemWithimage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;

@end
