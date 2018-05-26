//
//  DYMeTVCell.m
//  piaojiazi
//
//  Created by James on 2018/5/22.
//  Copyright © 2018年 James. All rights reserved.
//

#import "DYMeTVCell.h"

@implementation DYMeTVCell


// 返回cell
+ (instancetype)creatTableViewCell {
    
    return [[NSBundle mainBundle] loadNibNamed:@"DYMeTVCell" owner:nil options:nil][0];
    
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setFrame:(CGRect)frame
{
    frame.origin.y += 10;
    frame.size.height -= 10;
    [super setFrame:frame];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
