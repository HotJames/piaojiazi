//
//  AppDelegate.m
//  piaojiazi
//
//  Created by James on 2018/5/18.
//  Copyright © 2018年 James. All rights reserved.
//

#import "AppDelegate.h"
#import "DYAdViewController.h"

/*
    开发方式：代码
 */

// 每次程序启动进入广告界面
// 1.在启动的时候，加一个广告界面 （不可行，launchscreen不可）
// 2.启动完成后加入广告界面
// 1程序一启动就进入广告界面（相比简单的一种）
// 2或者直接在窗口上加上一个广告界面，读秒结束后移除广告界面


@interface AppDelegate ()

@end

@implementation AppDelegate

// 程序启动的时候会调用
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 1.创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 2.设置窗口根控制器
    DYAdViewController *adVc = [[DYAdViewController alloc] init];
    // init -> initwithnibname 1.首先判断有没有指定nibname 2.判断下有没有跟类型同名的xib
    self.window.rootViewController = adVc;
    
    // 3.显示窗口 1.成为UIApplocation主窗口 2.
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end


































