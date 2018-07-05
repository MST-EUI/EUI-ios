//
//  MBProgressHUD+Toast.m
//  EUI
//
//  Created by 李天露 on 2018/7/4.
//

#import "MBProgressHUD+Toast.h"

@implementation MBProgressHUD (Toast)

+(void)toastMessage:(NSString *)message ToView:(UIView *)view {
    [MBProgressHUD toastMessage:message ToView:view RemainTime:1.5];
}

+(void)toastMessage:(NSString *)message ToView:(UIView *)view RemainTime:(CGFloat)time {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.minSize = CGSizeMake(132, 50);
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentCenter;
    paraStyle.minimumLineHeight = 18;
    paraStyle.maximumLineHeight = 18;
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:13],
                          NSForegroundColorAttributeName:[UIColor whiteColor],
                          NSParagraphStyleAttributeName:paraStyle};
    NSAttributedString *attributeStr = [[NSAttributedString alloc] initWithString:message attributes:dic];
    hud.detailsLabel.attributedText = attributeStr;
    hud.detailsLabel.font= [UIFont systemFontOfSize:13];
    hud.mode = MBProgressHUDModeText;
    hud.detailsLabel.textColor= [UIColor whiteColor];
    hud.bezelView.backgroundColor = HEXACOLOR(0x000000, 0.8);
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
