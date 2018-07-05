//
//  MBProgressHUD+EUI.h
//  EUI
//
//  Created by 李天露 on 2018/7/4.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Loading)

/**
 *  加载视图
 *
 *  @param view 要添加的View
 */
+ (void)showLoadingToView:(UIView *)view;

/**
 *  自定义停留时间，加载视图
 *
 *  @param view    要添加的View
 *  @param time    停留时间
 */
+(void)showLoadingToView:(UIView *)view RemainTime:(CGFloat)time;

@end
