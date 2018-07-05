//
//  EUIToastViewController.m
//  EUI_Example
//
//  Created by 李天露 on 2018/7/3.
//  Copyright © 2018年 kkYFL. All rights reserved.
//

#import "EUIToastViewController.h"
#import "MBProgressHUD+Toast.h"

@interface EUIToastViewController ()

@end

@implementation EUIToastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    LMJWeakSelf(self);
    
    LMJWordItem *item0 = [LMJWordItem itemWithTitle:@"最短" subTitle:nil];
    __weak __typeof__(item0) weakitem0 = item0;
    [item0 setItemOperation:^(NSIndexPath *indexPath){
        
        [weakself showToastWithTitle:weakitem0.title];
        
    }];
    
    LMJWordItem *item1 = [LMJWordItem itemWithTitle:@"该手机号已注册" subTitle:nil];
    __weak __typeof__(item0) weakitem1 = item1;
    [item1 setItemOperation:^(NSIndexPath *indexPath){
        [weakself showToastWithTitle:weakitem1.title];
        
    }];
    
    LMJWordItem *item2 = [LMJWordItem itemWithTitle:@"该手机号已注册，请重新输入" subTitle:nil];
    __weak __typeof__(item2) weakitem2 = item2;
    [item2 setItemOperation:^(NSIndexPath *indexPath){
        
        [weakself showToastWithTitle:weakitem2.title];
    }];
    
    LMJWordItem *item3 = [LMJWordItem itemWithTitle:@"啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦拉阿拉啦啦啦啦啦啦啦啦啦两行" subTitle:nil];
    __weak __typeof__(item3) weakitem3 = item3;
    [item3 setItemOperation:^(NSIndexPath *indexPath){
        
        [weakself showToastWithTitle:weakitem3.title];
    }];
    
    
    LMJItemSection *section0 = [LMJItemSection sectionWithItems:@[item0, item1, item2, item3] andHeaderTitle:nil footerTitle:nil];
    
    [self.sections addObject:section0];
    
}

- (void)showToastWithTitle:(NSString*)message {
    
    [MBProgressHUD toastMessage:message ToView:self.view];
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
