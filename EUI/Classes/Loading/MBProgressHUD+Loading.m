//
//  MBProgressHUD+Loading.m
//  Loading
//
//  Created by 李天露 on 2018/7/4.
//

#import "MBProgressHUD+Loading.h"

@implementation MBProgressHUD (Loading)

+ (void)showLoadingToView:(UIView *)view {
    [MBProgressHUD showLoadingToView:view RemainTime:1.5];
}

+(void)showLoadingToView:(UIView *)view RemainTime:(CGFloat)time {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.bezelView.backgroundColor = [UIColor clearColor];
    [hud setActivityIndicatorColor:HEXACOLOR(0x0296F6, 1.0)];
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // 代表需要蒙版效果
    hud.backgroundView.style = MBProgressHUDBackgroundStyleSolidColor;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // X秒之后再消失
    [hud hideAnimated:YES afterDelay:time];
}

@end
