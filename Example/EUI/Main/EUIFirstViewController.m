//
//  EUIFirstViewController.m
//  EUI_Example
//
//  Created by 李天露 on 2018/7/3.
//  Copyright © 2018年 kkYFL. All rights reserved.
//

#import "EUIFirstViewController.h"
#import "EUIAlertViewsViewController.h"
#import "EUIEmptyDataViewController.h"
#import "EUIToastViewController.h"
#import "EUIButtonViewController.h"
#import "EUILoadingViewController.h"

@interface EUIFirstViewController ()

@end

@implementation EUIFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    LMJWordArrowItem *item1 = [LMJWordArrowItem itemWithTitle:@"通用弹窗" subTitle: nil];
    
    item1.destVc = [EUIAlertViewsViewController class];
    
    LMJWordArrowItem *item2 = [LMJWordArrowItem itemWithTitle:@"empty data" subTitle: nil];
    
    item2.destVc = [EUIEmptyDataViewController class];
    
    LMJWordArrowItem *item3 = [LMJWordArrowItem itemWithTitle:@"toast" subTitle: nil];
    
    item3.destVc = [ EUIToastViewController class];
    
    LMJWordArrowItem *item4 = [LMJWordArrowItem itemWithTitle:@"button" subTitle: nil];
    
    item4.destVc = [EUIButtonViewController class];
    
    LMJWordArrowItem *item5 = [LMJWordArrowItem itemWithTitle:@"loading" subTitle: nil];
    
    item5.destVc = [EUILoadingViewController class];
    
    LMJItemSection *section0 = [LMJItemSection sectionWithItems:@[item1, item2, item3, item4, item5] andHeaderTitle:@"静态单元格的头部标题" footerTitle:@"静态单元格的尾部标题"];
    
    [self.sections addObject:section0];
    
}

#pragma mark 重写BaseViewController设置内容

- (UIColor *)lmjNavigationBackgroundColor:(LMJNavigationBar *)navigationBar
{
    return [UIColor whiteColor];
}
- (BOOL)lmjNavigationIsHideBottomLine:(LMJNavigationBar *)navigationBar
{
    return NO;
}

- (void)leftButtonEvent:(UIButton *)sender navigationBar:(LMJNavigationBar *)navigationBar
{
    NSLog(@"%s", __func__);
}

- (void)rightButtonEvent:(UIButton *)sender navigationBar:(LMJNavigationBar *)navigationBar
{
    NSLog(@"%s", __func__);
}

- (void)titleClickEvent:(UILabel *)sender navigationBar:(LMJNavigationBar *)navigationBar
{
    NSLog(@"%@", sender);
}

- (NSMutableAttributedString*)lmjNavigationBarTitle:(LMJNavigationBar *)navigationBar
{
    return [self changeTitle:@"自定义视图"];
}



#pragma mark 自定义代码

-(NSMutableAttributedString *)changeTitle:(NSString *)curTitle
{
    NSMutableAttributedString *title = [[NSMutableAttributedString alloc] initWithString:curTitle ?: @""];
    
    [title addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, title.length)];
    
    [title addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:16] range:NSMakeRange(0, title.length)];
    
    return title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
