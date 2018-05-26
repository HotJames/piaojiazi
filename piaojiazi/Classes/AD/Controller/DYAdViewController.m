//
//  DYAdViewController.m
//  piaojiazi
//
//  Created by James on 2018/5/21.
//  Copyright © 2018年 James. All rights reserved.
//

#import "DYAdViewController.h"
#import "DYTabBarController.h"
#import <AFNetworking.h>

/******屏幕适配*******/
#define DYScreenH [UIScreen mainScreen].bounds.size.height
#define DYScreenW [UIScreen mainScreen].bounds.size.width
#define iphone6s (DYScreenH == 1334)
#define iphone6sp (DYScreenH == 2208)
#define iphone7 (DYScreenH == 1334)
#define iphone7p (DYScreenH == 2208)
#define iphone8 (DYScreenH == 1334)
#define iphone8p (DYScreenH == 2208)
#define iphonex (DYScreenH == 2436)
#define iphonese (DYScreenH == 1136)
/******屏幕适配*******/

@interface DYAdViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *launchImageView;

@property (weak, nonatomic) IBOutlet UIView *adContainView;

@property (nonatomic, weak) NSTimer *timer;

@property (weak, nonatomic) IBOutlet UIButton *jumpBtn;

@end

@implementation DYAdViewController

- (IBAction)clickJump:(id)sender {
    
    DYTabBarController *tabBarVc = [[DYTabBarController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tabBarVc;
    
    // 干掉定时器,先创建属性拿到
    [_timer invalidate];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置启动图片
    [self setupLaunchImage];
    
    // 加载广告数据 => 拿到活时间 => 服务器 => 查看接口文档 => 判断接口对不对 => 图片url，广告url，图片wh => 请求数据
    // 导入AFN框架:cocoapods:去管理第三方库 导入一个框架时会将这个框架依赖的所有框架一起导入
    // 使用步骤:创建podfile:描述需要导入哪些框架,
    // 编辑podfile
    // pod search AFN 搜索相关框架，写入podfile文件
    // pod install --no-repo-update
    // 安装完成后只能使用.xcworkspace后缀文件打开
    
    
    [self loadAdData];
    
    // 创建定时器
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeChange) userInfo:nil repeats:YES];
    
}

- (void) timeChange
{
    static int i = 3;
    
    if (i == 0) {
        // 销毁广告界面, 进入主框架界面 不能用push 需要修改根控制器
        // 先创建
        [self clickJump:nil];
    }
    i--;
    // 设置跳转按钮文字
    [_jumpBtn setTitle:[NSString stringWithFormat:@"跳过 (%d)", i] forState:UIControlStateNormal];
}


// 加载广告数据
- (void)loadAdData
{
    
    // 1.创建请求会话的管理者
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    // 2.拼接参数
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    
    // 2.发送请求
    [mgr GET:@"" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 设置启动图片
- (void)setupLaunchImage
{

    if (iphone6s) { // 6s, 7, 8
        self.launchImageView.image = [UIImage imageNamed:@""];
    } else if (iphone6sp) { // 6sp, 7p, 8p
        self.launchImageView.image = [UIImage imageNamed:@""];
    } else if (iphonex) { // x
        self.launchImageView.image = [UIImage imageNamed:@""];
    } else if (iphonese) { // se
        self.launchImageView.image = [UIImage imageNamed:@""];
    }
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
