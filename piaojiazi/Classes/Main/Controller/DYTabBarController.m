//
//  DYTabBarController.m
//  piaojiazi
//
//  Created by James on 2018/5/18.
//  Copyright © 2018年 James. All rights reserved.
//


/*
 解决问题
 1.选中的图片被自动渲染 ios7之后tabBar上的按钮图片会被自动渲染
 2.标题字体要大一些 ->对应子控制器的tabBarItem
 */


#import "DYTabBarController.h"
#import "DYHomeViewController.h"
#import "DYOrderTableViewController.h"
#import "DYInfoTableViewController.h"
#import "DYMeTableViewController.h"
#import "DYNavigationViewController.h"


@interface DYTabBarController ()

@end

@implementation DYTabBarController

// 生命周期方法
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    self.tabBar.backgroundColor = DYColor(255, 255, 255);
    // 设置所有子控制器，函数在上面
    [self setupAllChildViewController];
    
    // 设置所有导航栏对应的tabbar上的内容
    // 设置tabBar按钮内容 -> 由对应的子控制器的tabBarItem属性,从0开始
    [self setupAllTitle];
    
}

// 用来添加所有的子控制器
-(void) setupAllChildViewController
{
    // 添加子控制器 几个？tabbar有多少按钮就有多少子控制器 4个 -> 自定义控制器 划分项目文件结构
    // 主页 生成控制器并给tabbar添加子控制器
    DYHomeViewController *homeVc = [[DYHomeViewController alloc] init];
    // tabbar应该先添加导航控制器
//    homeVc.view.backgroundColor = DYColor(244, 244, 244);
    DYNavigationViewController *nav = [[DYNavigationViewController alloc] initWithRootViewController:homeVc];
    // initWithRootViewController:push
    [self addChildViewController:nav];
    
    // 订单
    DYOrderTableViewController *orderVc = [[DYOrderTableViewController alloc] init];
    orderVc.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    orderVc.view.backgroundColor = DYColor(244, 244, 244);
    DYNavigationViewController *nav1 = [[DYNavigationViewController alloc] initWithRootViewController:orderVc];
    [self addChildViewController:nav1];
    
    // 通知
    DYInfoTableViewController *infoVc = [[DYInfoTableViewController alloc] init];
    infoVc.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    infoVc.view.backgroundColor = DYColor(244, 244, 244);
    DYNavigationViewController *nav2 = [[DYNavigationViewController alloc] initWithRootViewController:infoVc];
    [self addChildViewController:nav2];
    
    // 我
    DYMeTableViewController *meVc = [[DYMeTableViewController alloc] init];
    meVc.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    meVc.view.backgroundColor = DYColor(244, 244, 244);
    DYNavigationViewController *nav3 = [[DYNavigationViewController alloc] initWithRootViewController:meVc];
    [self addChildViewController:nav3];
}

// 设置tabBar上所有的按钮 title图片等等
-(void) setupAllTitle
{
    
    // 0:nav
    UINavigationController *nav = self.childViewControllers[0];
    nav.tabBarItem.title = @"首页";
    nav.tabBarItem.image = [UIImage imageNamed:@"home_ios"];
    // imageOriginalWithName自定函数返回一个没有系统自动渲染的图片
    nav.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"home_sel_ios"];
    
    // 设置字体尺寸 只有在正常状态下设置才有效果
    NSMutableDictionary *attrsNor = [NSMutableDictionary dictionary];
    attrsNor[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    [nav.tabBarItem setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
    
    
    // 设置按钮选中后标题的颜色 富文本
    // 创建一个描述文本属性的字典
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
//    [nav.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateSelected];
    
    
    // 1:nav
    UINavigationController *nav1 = self.childViewControllers[1];
    nav1.tabBarItem.title = @"订单";
    nav1.tabBarItem.image = [UIImage imageNamed:@"order_ios"];
    nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"order_sel_ios"];
    [nav1.tabBarItem setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
    
    // 2:nav
    UINavigationController *nav2 = self.childViewControllers[2];
    nav2.tabBarItem.title = @"通知";
    nav2.tabBarItem.image = [UIImage imageNamed:@"info_ios"];
    nav2.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"info_sel_ios"];
    [nav2.tabBarItem setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
    
    // 3:nav
    UINavigationController *nav3 = self.childViewControllers[3];
    nav3.tabBarItem.title = @"我的";
    nav3.tabBarItem.image = [UIImage imageNamed:@"me_ios"];
    nav3.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"me_sel_ios"];
    [nav3.tabBarItem setTitleTextAttributes:attrsNor forState:UIControlStateNormal];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
