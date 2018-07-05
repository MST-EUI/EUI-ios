//
//  UIView+EmptyData.m
//  EUI-EUI
//
//  Created by 李天露 on 2018/7/3.
//

#import "UIView+EmptyData.h"
#import "EUIEmptyDataView.h"
#import <objc/runtime.h>

static char BlankPageViewKey;

@implementation UIView (EmptyData)

- (void)setBlankPageView:(EUIEmptyDataView *)blankPageView{
    objc_setAssociatedObject(self, &BlankPageViewKey,
                             blankPageView,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (EUIEmptyDataView *)blankPageView{
    return objc_getAssociatedObject(self, &BlankPageViewKey);
}

- (void)configEmptyViewHasData:(BOOL)hasData image:(UIImage *)image labelText:(NSString *)labelText {
    if (hasData) {
        if (self.blankPageView) {
            self.blankPageView.hidden = YES;
            [self.blankPageView removeFromSuperview];
        }
        
    }else {
        
        if (!self.blankPageView) {
            self.blankPageView = [[EUIEmptyDataView alloc] initWithFrame:self.bounds];
        }
        self.blankPageView.hidden = NO;
        [self addSubview:self.blankPageView];
        
        [self.blankPageView showEmptyViewWithImage:image labelText:labelText];
    }
}

@end
