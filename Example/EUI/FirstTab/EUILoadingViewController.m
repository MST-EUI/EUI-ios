//
//  EUILoadingViewController.m
//  EUI_Example
//
//  Created by 李天露 on 2018/7/4.
//  Copyright © 2018年 kkYFL. All rights reserved.
//

#import "EUILoadingViewController.h"
#import "MBProgressHUD+Loading.h"

@interface EUILoadingViewController ()

@end

@implementation EUILoadingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton* start = [UIButton buttonWithType:UIButtonTypeCustom];
    start.backgroundColor = [UIColor brownColor];
    start.frame = CGRectMake(0, 0, 100 , 40);
    start.center = CGPointMake(self.view.centerX, self.view.centerY - 100);
    [start setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [start setTitleColor:[UIColor blackColor] forState:UIControlStateDisabled];
    start.titleLabel.font = [UIFont systemFontOfSize:17];
    [start setTitle:@"开始加载" forState:UIControlStateNormal];
    [start addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:start];
}

- (void)btnClick:(UIButton*)button {
    
    [MBProgressHUD showLoadingToView:self.view];

}

#pragma mark - LMJNavUIBaseViewControllerDataSource

/** 导航条左边的按钮 */
- (UIImage *)lmjNavigationBarLeftButtonImage:(UIButton *)leftButton navigationBar:(LMJNavigationBar *)navigationBar
{
    [leftButton setImage:[UIImage imageNamed:@"NavgationBar_white_back"] forState:UIControlStateHighlighted];
    
    return [UIImage imageNamed:@"NavgationBar_blue_back"];
}

#pragma mark - LMJNavUIBaseViewControllerDelegate
/** 左边的按钮的点击 */
-(void)leftButtonEvent:(UIButton *)sender navigationBar:(LMJNavigationBar *)navigationBar
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
