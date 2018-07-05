//
//  EUIAlertView.m
//  EUI
//
//  Created by 李天露 on 2018/7/4.
//

#import "EUIAlertView.h"
#import "UIWindow+CurrentViewController.h"

@implementation EUIAlertView

+(void)showAlertViewWithTitle:(NSString *)title
                      message:(NSString *)message
               preferredStyle:(UIAlertControllerStyle)preferredStyle
               viewController:(UIViewController *)viewController
              cancelItemTitle:(NSString *)cancel
              ortherItemTitle:(NSString *)ortherTitle
                moreItemTitle:(NSString *)moreTitle
                 cancelAction:(void(^)(UIAlertAction * action))cancelBlock
                 ortherAction:(void(^)(UIAlertAction * action))otherBlock
                   moreAction:(void(^)(UIAlertAction * action))moreBlock {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:preferredStyle];
    UIView* backView = [[[alert.view.subviews firstObject].subviews firstObject].subviews firstObject];
    backView.layer.cornerRadius = 4;
    backView.layer.masksToBounds = YES;
    backView.backgroundColor = HEXACOLOR(0xFCFCFC, 1.0);
    
    if (title) {
        /*title*/
        NSMutableAttributedString *alertTitleStr = [[NSMutableAttributedString alloc] initWithString:title];
        [alertTitleStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:NSMakeRange(0, alertTitleStr.length)];
        [alertTitleStr addAttribute:NSForegroundColorAttributeName value:HEXACOLOR(0x000000, 1.0) range:NSMakeRange(0, alertTitleStr.length)];
        [alert setValue:alertTitleStr forKey:@"attributedTitle"];
    }
    
    if (message) {
        /*message*/
        NSMutableAttributedString *alertMessageStr = [[NSMutableAttributedString alloc] initWithString:message];
        [alertMessageStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:NSMakeRange(0, alertMessageStr.length)];
        [alertMessageStr addAttribute:NSForegroundColorAttributeName value:HEXACOLOR(0x2A333A, 1.0) range:NSMakeRange(0, alertMessageStr.length)];
        [alert setValue:alertMessageStr forKey:@"attributedMessage"];
    }
    
    if (cancel) {
        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:cancel style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction * action) {
                                                                 //响应事件
                                                                 NSLog(@"action = %@", action);
                                                                 if (cancelBlock) {
                                                                     cancelBlock(action);
                                                                 }
                                                             }];
        [cancelAction setValue:BlueColor forKey:@"_titleTextColor"];
        [alert addAction:cancelAction];
    }
    
    if (ortherTitle) {
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:ortherTitle style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  //响应事件
                                                                  NSLog(@"action = %@", action);
                                                                  if (otherBlock) {
                                                                      otherBlock(action);
                                                                  }
                                                              }];
        [defaultAction setValue:BlueColor forKey:@"_titleTextColor"];
        [alert addAction:defaultAction];
    }
    
    if (moreTitle) {
        UIAlertAction* saveAction = [UIAlertAction actionWithTitle:moreTitle style:UIAlertActionStyleDefault
                                                           handler:^(UIAlertAction * action) {
                                                               //响应事件
                                                               NSLog(@"action = %@", action);
                                                               if (moreBlock) {
                                                                   moreBlock(action);
                                                               }
                                                           }];
        [saveAction setValue:BlueColor forKey:@"_titleTextColor"];
        [alert addAction:saveAction];
    }
    
    if (viewController == nil) {
        viewController = [UIWindow currentViewController];
    }
    [viewController presentViewController:alert animated:YES completion:nil];
}

+(void)showAlertViewWithTitle:(NSString *)title
                      message:(NSString *)message
               preferredStyle:(UIAlertControllerStyle)preferredStyle
               viewController:(UIViewController *)viewController
                 warningTitle:(NSString *)warningTitle
                warningAction:(void(^)(UIAlertAction * action))warningBlock {
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:preferredStyle];
    UIView* backView = [[[alert.view.subviews firstObject].subviews firstObject].subviews firstObject];
    backView.layer.cornerRadius = 4;
    backView.layer.masksToBounds = YES;
    backView.backgroundColor = HEXACOLOR(0xFCFCFC, 1.0);
    
    if (title) {
        /*title*/
        NSMutableAttributedString *alertTitleStr = [[NSMutableAttributedString alloc] initWithString:title];
        [alertTitleStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:NSMakeRange(0, alertTitleStr.length)];
        [alertTitleStr addAttribute:NSForegroundColorAttributeName value:HEXACOLOR(0x000000, 1.0) range:NSMakeRange(0, alertTitleStr.length)];
        [alert setValue:alertTitleStr forKey:@"attributedTitle"];
    }
    
    if (message) {
        /*message*/
        NSMutableAttributedString *alertMessageStr = [[NSMutableAttributedString alloc] initWithString:message];
        [alertMessageStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:NSMakeRange(0, alertMessageStr.length)];
        [alertMessageStr addAttribute:NSForegroundColorAttributeName value:HEXACOLOR(0x2A333A, 1.0) range:NSMakeRange(0, alertMessageStr.length)];
        [alert setValue:alertMessageStr forKey:@"attributedMessage"];
    }
    
    if (warningTitle) {
        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:warningTitle style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction * action) {
                                                                 //响应事件
                                                                 NSLog(@"action = %@", action);
                                                                 if (warningBlock) {
                                                                     warningBlock(action);
                                                                 }
                                                             }];
        [cancelAction setValue:HEXACOLOR(0xFA4A23, 1.0) forKey:@"_titleTextColor"];
        [alert addAction:cancelAction];
    }
    
    if (viewController == nil) {
        viewController = [UIWindow currentViewController];
    }
    [viewController presentViewController:alert animated:YES completion:nil];
}

+(void)showAlertTextFieldViewWithTitle:(NSString *)title
                               message:(NSString *)message
                           placeHolder:(NSString* )placeHolder
                        preferredStyle:(UIAlertControllerStyle)preferredStyle
                        viewController:(UIViewController *)viewController
                       cancelItemTitle:(NSString *)cancel
                       ortherItemTitle:(NSString *)ortherTitle
                          cancelAction:(void(^)(UIAlertAction * action))cancelBlock
                          ortherAction:(void(^)(UIAlertAction * action))otherBlock {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:preferredStyle];
    UIView* backView = [[[alert.view.subviews firstObject].subviews firstObject].subviews firstObject];
    backView.layer.cornerRadius = 4;
    backView.layer.masksToBounds = YES;
    backView.backgroundColor = HEXACOLOR(0xFCFCFC, 1.0);
    
    if (title) {
        /*title*/
        NSMutableAttributedString *alertTitleStr = [[NSMutableAttributedString alloc] initWithString:title];
        [alertTitleStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:NSMakeRange(0, alertTitleStr.length)];
        [alertTitleStr addAttribute:NSForegroundColorAttributeName value:HEXACOLOR(0x000000, 1.0) range:NSMakeRange(0, alertTitleStr.length)];
        [alert setValue:alertTitleStr forKey:@"attributedTitle"];
    }
    
    if (message) {
        /*message*/
        NSMutableAttributedString *alertMessageStr = [[NSMutableAttributedString alloc] initWithString:message];
        [alertMessageStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:NSMakeRange(0, alertMessageStr.length)];
        [alertMessageStr addAttribute:NSForegroundColorAttributeName value:HEXACOLOR(0x2A333A, 1.0) range:NSMakeRange(0, alertMessageStr.length)];
        [alert setValue:alertMessageStr forKey:@"attributedMessage"];
    }
    
    if (cancel) {
        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:cancel style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction * action) {
                                                                 //响应事件
                                                                 NSLog(@"action = %@", action);
                                                                 if (cancelBlock) {
                                                                     cancelBlock(action);
                                                                 }
                                                             }];
        [cancelAction setValue:BlueColor forKey:@"_titleTextColor"];
        [alert addAction:cancelAction];
    }
    
    if (ortherTitle) {
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:ortherTitle style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  //响应事件
                                                                  NSLog(@"action = %@", action);
                                                                  if (otherBlock) {
                                                                      otherBlock(action);
                                                                  }
                                                              }];
        [defaultAction setValue:BlueColor forKey:@"_titleTextColor"];
        [alert addAction:defaultAction];
    }

    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = placeHolder;
    }];
    
    if (viewController == nil) {
        viewController = [UIWindow currentViewController];
    }
    [viewController presentViewController:alert animated:YES completion:nil];
}

@end
