//
//  DYMeTVCell.h
//  piaojiazi
//
//  Created by James on 2018/5/22.
//  Copyright © 2018年 James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYMeTVCell : UITableViewCell

+(instancetype)creatTableViewCell;

@property (weak, nonatomic) IBOutlet UILabel *meLabel;
@property (weak, nonatomic) IBOutlet UIImageView *meImage;

@end
