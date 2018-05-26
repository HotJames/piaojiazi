//
//  UIView+Frame.m
//  piaojiazi
//
//  Created by James on 2018/5/18.
//  Copyright © 2018年 James. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (void)setDy_height:(CGFloat)dy_height
{
    CGRect rect = self.frame;
    rect.size.height = dy_height;
    self.frame = rect;
}

- (CGFloat)dy_height
{
    return self.frame.size.height;
}

- (CGFloat)dy_width
{
    return self.frame.size.width;
}

- (void)setDy_width:(CGFloat)dy_width
{
    CGRect rect = self.frame;
    rect.size.width = dy_width;
    self.frame = rect;
}

- (CGFloat)dy_x
{
    return self.frame.origin.x;
}

- (void)setDy_x:(CGFloat)dy_x
{
    CGRect rect = self.frame;
    rect.origin.x = dy_x;
    self.frame = rect;
}

- (CGFloat)dy_y
{
    return self.frame.origin.y;
}

- (void)setDy_y:(CGFloat)dy_y
{
    CGRect rect = self.frame;
    rect.origin.y = dy_y;
    self.frame = rect;
}
















@end
