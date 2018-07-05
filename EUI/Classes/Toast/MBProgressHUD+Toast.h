//
//  MBProgressHUD+Toast.h
//  EUI
//
//  Created by 李天露 on 2018/7/4.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Toast)

/**
 *  自动消失，无图
 *
 *  @param message 要显示的文字
 *  @param view 要添加的View
 */
+(void)toastMessage:(NSString *)message ToView:(UIView *)view;

/**
 *  自定义停留时间，无图
 *
 *  @param message 要显示的文字
 *  @param view 要添加的View
 *  @param time 停留时间
 */
+(void)toastMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time;

@end
