//
//  EUIButtonViewController.m
//  EUI_Example
//
//  Created by 李天露 on 2018/7/4.
//  Copyright © 2018年 kkYFL. All rights reserved.
//

#import "EUIButtonViewController.h"
#import "EUIGradientButton.h"
#import "NSBundle+EUIBundle.h"

@interface EUIButtonViewController ()

@end

@implementation EUIButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    EUIGradientButton* norBtn = [EUIGradientButton buttonWithType:UIButtonTypeCustom];
    norBtn.frame = CGRectMake(12, 200, self.view.width - 12*2, 45);
    norBtn.gradientColors = @[
                                     (id)[HEXACOLOR(0x02AAFF, 1.0) CGColor],
                                     (id)[HEXACOLOR(0x0387FF , 1.0) CGColor]
                                     ];
    [norBtn addTarget:self action:@selector(changeState:) forControlEvents:UIControlEventTouchUpInside];
    [norBtn setTitle:@"普通状态" forState:UIControlStateNormal];
    [norBtn setTitle:@"禁用状态" forState:UIControlStateDisabled];
    [self.view addSubview:norBtn];
    
    EUIGradientButton* disBtn = [EUIGradientButton buttonWithType:UIButtonTypeCustom];
    disBtn.frame = CGRectMake(12, 300, self.view.width - 12*2, 45);
    disBtn.gradientColors = @[
                              (id)[HEXACOLOR(0x02AAFF, 1.0) CGColor],
                              (id)[HEXACOLOR(0x0387FF , 1.0) CGColor]
                              ];
    disBtn.enabled = NO;
    [disBtn setTitle:@"禁用状态" forState:UIControlStateNormal];
    [self.view addSubview:disBtn];
    
    
    CGFloat btnSize = 22;
    
    UIImage* seleImg = [UIImage imageNamed:@"icon_choosed" inBundle:[NSBundle EUIBundleTool] compatibleWithTraitCollection:nil];
    UIImage*  unseleImg = [UIImage imageNamed:@"icon-unchoosed" inBundle:[NSBundle EUIBundleTool] compatibleWithTraitCollection:nil];
    UIButton* checkBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    checkBtn.frame = CGRectMake(30, CGRectGetMaxY(disBtn.frame) + 80, btnSize, btnSize);
    [checkBtn setBackgroundImage:unseleImg forState:UIControlStateNormal];
    [checkBtn setBackgroundImage:seleImg forState:UIControlStateSelected];
    checkBtn.selected = YES;
    [checkBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:checkBtn];
    

    UIButton* uncheckBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    uncheckBtn.frame = CGRectMake(CGRectGetMaxX(checkBtn.frame) + 18, CGRectGetMaxY(disBtn.frame) + 80, btnSize, btnSize);
    [uncheckBtn setBackgroundImage:unseleImg forState:UIControlStateNormal];
    [uncheckBtn setBackgroundImage:seleImg forState:UIControlStateSelected];
    uncheckBtn.selected = NO;
    [uncheckBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:uncheckBtn];
}

- (void)btnClick:(UIButton*)button {
    button.selected = !button.selected;
}

- (void)changeState:(EUIGradientButton*)button {
    button.enabled = !button.enabled;
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
