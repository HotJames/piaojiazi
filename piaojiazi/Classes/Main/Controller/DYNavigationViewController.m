//
//  DYNavigationViewController.m
//  piaojiazi
//
//  Created by James on 2018/5/20.
//  Copyright © 2018年 James. All rights reserved.
//

#import "DYNavigationViewController.h"


@interface DYNavigationViewController ()

@end

@implementation DYNavigationViewController

+ (void)load
{
    // 设置title样式
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[UINavigationController class]]];
    UIFont *font = [UIFont fontWithName:@"TimesNewRomanPS-BoldMT" size:21];
    NSDictionary *dic = @{NSFontAttributeName:font,
                          NSForegroundColorAttributeName: [UIColor whiteColor]};
    // 设置导航栏背景
    UIImage *bgImage = [UIImage imageWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64) alphe:1.0];
    UINavigationBar *bar = navBar;
    [bar setBackgroundImage:bgImage forBarMetrics:UIBarMetricsDefault];
    navBar.titleTextAttributes = dic;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//    if (self.childViewControllers.count > 0) { // 非根控制器
//        // 隐藏tabBar
//        viewController.hidesBottomBarWhenPushed = YES;
//    }
//    
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
















@end
