//
//  LLMJBBaseViewController.m
//  PLMMPRJK
//
//  Created by HuXuPeng on 2017/4/11.
//  Copyright © 2017年 GoMePrjk. All rights reserved.
//

#import "LMJBaseViewController.h"

@interface LMJBaseViewController ()



@end

@implementation LMJBaseViewController


#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    if (@available(iOS 11.0, *)){
        [[UIScrollView appearanceWhenContainedInInstancesOfClasses:@[[LMJBaseViewController class]]] setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}


- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    
}


- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
}




- (instancetype)initWithTitle:(NSString *)title
{
    if (self = [super init]) {
        self.title = title.copy;
    }
    return self;
}




- (void)dealloc
{
    NSLog(@"dealloc---%@", self.class);
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end







