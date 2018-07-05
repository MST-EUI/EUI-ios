//
//  EUIAlertViewsViewController.m
//  EUI_Example
//
//  Created by 李天露 on 2018/7/3.
//  Copyright © 2018年 kkYFL. All rights reserved.
//

#import "EUIAlertViewsViewController.h"
#import "EUIAlertView.h"

@interface EUIAlertViewsViewController ()

@end

@implementation EUIAlertViewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LMJWordItem *item0 = [LMJWordItem itemWithTitle:@"标题+内容+一个按钮" subTitle:nil];
    [item0 setItemOperation:^(NSIndexPath *indexPath){
        
        [EUIAlertView showAlertViewWithTitle:@"标题" message:@"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容" preferredStyle:UIAlertControllerStyleAlert viewController:self cancelItemTitle:@"知道了" ortherItemTitle:nil moreItemTitle:nil cancelAction:nil ortherAction:nil moreAction:nil];
        
    }];
    
    LMJWordItem *item1 = [LMJWordItem itemWithTitle:@"标题+内容+两个按钮" subTitle:nil];
    [item1 setItemOperation:^(NSIndexPath *indexPath){
        
        [EUIAlertView showAlertViewWithTitle:@"标题" message:@"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容" preferredStyle:UIAlertControllerStyleAlert viewController:self cancelItemTitle:@"是" ortherItemTitle:@"否" moreItemTitle:nil cancelAction:nil ortherAction:nil moreAction:nil];

    }];
    
    LMJWordItem *item2 = [LMJWordItem itemWithTitle:@"标题+内容+三个按钮" subTitle:nil];
    [item2 setItemOperation:^(NSIndexPath *indexPath){
        
        [EUIAlertView showAlertViewWithTitle:@"标题" message:@"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容" preferredStyle:UIAlertControllerStyleAlert viewController:self cancelItemTitle:@"是" ortherItemTitle:@"否" moreItemTitle:@"再看看" cancelAction:nil ortherAction:nil moreAction:nil];

    }];
    
    LMJWordItem *item3 = [LMJWordItem itemWithTitle:@"内容+两个按钮" subTitle:nil];
    [item3 setItemOperation:^(NSIndexPath *indexPath){
        
        [EUIAlertView showAlertViewWithTitle:nil message:@"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容" preferredStyle:UIAlertControllerStyleAlert viewController:self cancelItemTitle:@"是" ortherItemTitle:@"否" moreItemTitle:nil cancelAction:nil ortherAction:nil moreAction:nil];
        
    }];
    
    LMJWordItem *item6 = [LMJWordItem itemWithTitle:@"标题+两个按钮" subTitle:nil];
    [item6 setItemOperation:^(NSIndexPath *indexPath){
        
        [EUIAlertView showAlertViewWithTitle:@"只有标题情况啦啦啦" message:nil preferredStyle:UIAlertControllerStyleAlert viewController:self cancelItemTitle:@"是" ortherItemTitle:@"否" moreItemTitle:nil cancelAction:nil ortherAction:nil moreAction:nil];
        
    }];
    
    
    
    LMJWordItem *item4 = [LMJWordItem itemWithTitle:@"内容+一个按钮（警告字色）" subTitle:nil];
    [item4 setItemOperation:^(NSIndexPath *indexPath){
        
        [EUIAlertView showAlertViewWithTitle:@"只有标题情况啦啦啦" message:nil preferredStyle:UIAlertControllerStyleAlert viewController:self warningTitle:@"警告字色" warningAction:nil];
        
    }];
    
    
    
    
    LMJWordItem *item5 = [LMJWordItem itemWithTitle:@"标题+内容+两个按钮+输入框" subTitle:nil];
    [item5 setItemOperation:^(NSIndexPath *indexPath){
        
        [EUIAlertView showAlertTextFieldViewWithTitle:@"标题" message:@"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容" placeHolder:@"提示输入文字" preferredStyle:UIAlertControllerStyleAlert viewController:self cancelItemTitle:@"是" ortherItemTitle:@"否" cancelAction:nil ortherAction:nil];
       
    }];
    
    LMJItemSection *section0 = [LMJItemSection sectionWithItems:@[item0, item1, item2, item3, item6, item4, item5] andHeaderTitle:nil footerTitle:nil];
    
    [self.sections addObject:section0];
    
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

- (void)test {
    
}


@end
