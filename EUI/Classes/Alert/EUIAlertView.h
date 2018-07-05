//
//  EUIAlertView.h
//  EUI
//
//  Created by 李天露 on 2018/7/4.
//

#import <Foundation/Foundation.h>

@interface EUIAlertView : NSObject

/**
 通用弹框

 @param title 标题
 @param message 内容
 @param preferredStyle preferredStyle
 @param viewController 要添加的控制器
 @param cancel 取消按钮
 @param ortherTitle 确定按钮
 @param moreTitle 更多按钮
 @param cancelBlock cancelBlock description
 @param otherBlock otherBlock description
 @param moreBlock moreBlock description
 */
+(void)showAlertViewWithTitle:(NSString *)title
                      message:(NSString *)message
               preferredStyle:(UIAlertControllerStyle)preferredStyle
               viewController:(UIViewController *)viewController
              cancelItemTitle:(NSString *)cancel
              ortherItemTitle:(NSString *)ortherTitle
                moreItemTitle:(NSString *)moreTitle
                 cancelAction:(void(^)(UIAlertAction * action))cancelBlock
                 ortherAction:(void(^)(UIAlertAction * action))otherBlock
                   moreAction:(void(^)(UIAlertAction * action))moreBlock;


/**
 警告弹框

 @param title 标题
 @param message 内容
 @param preferredStyle preferredStyle
 @param viewController 要添加的控制器
 @param warningTitle 警告文案
 @param warningBlock warningBlock description
 */
+(void)showAlertViewWithTitle:(NSString *)title
                      message:(NSString *)message
               preferredStyle:(UIAlertControllerStyle)preferredStyle
               viewController:(UIViewController *)viewController
                 warningTitle:(NSString *)warningTitle
                warningAction:(void(^)(UIAlertAction * action))warningBlock;


/**
 通用弹框（带输入框）
 
 @param title 标题
 @param message 内容
 @param placeHolder 占位
 @param preferredStyle preferredStyle
 @param viewController 要添加的控制器
 @param cancel 取消按钮
 @param ortherTitle 确定按钮
 @param cancelBlock cancelBlock description
 @param otherBlock otherBlock description
 */
+(void)showAlertTextFieldViewWithTitle:(NSString *)title
                               message:(NSString *)message
                           placeHolder:(NSString* )placeHolder
                        preferredStyle:(UIAlertControllerStyle)preferredStyle
                        viewController:(UIViewController *)viewController
                       cancelItemTitle:(NSString *)cancel
                       ortherItemTitle:(NSString *)ortherTitle
                          cancelAction:(void(^)(UIAlertAction * action))cancelBlock
                          ortherAction:(void(^)(UIAlertAction * action))otherBlock;

@end
