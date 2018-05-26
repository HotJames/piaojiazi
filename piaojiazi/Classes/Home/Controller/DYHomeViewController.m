//
//  DYHomeViewController.m
//  piaojiazi
//
//  Created by James on 2018/5/18.
//  Copyright © 2018年 James. All rights reserved.
//

#import "DYHomeViewController.h"


@interface DYHomeViewController ()

@end

@implementation DYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = DYColor(244, 244, 244);
    
    // 设置导航条
    [self setupNavBar];
    
    // 设置tabbar不透明度
    self.tabBarController.tabBar.translucent = NO;
    
    
}

// 设置导航条
- (void) setupNavBar
{
    // UIBarButtonItem:描述按钮具体的内容
    // UINavigationItem:设置导航条上内容（左边，右边，中间）
    // tabBarItem:设置tabBar上按钮的内容（tabBarButton）
    // 左边按钮（无）
    
//    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithimage:<#(UIImage *)#> highImage:<#(UIImage *)#> target:<#(id)#> action:<#(SEL)#>];
    
    // 右边按钮（无）
    
//        self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithimage:<#(UIImage *)#> highImage:<#(UIImage *)#> target:<#(id)#> action:<#(SEL)#>];
    
    // titleView（）
    self.navigationItem.title = @"票夹子";
    

}


- (void)game
{
    NSLog(@"%s", __func__);
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
