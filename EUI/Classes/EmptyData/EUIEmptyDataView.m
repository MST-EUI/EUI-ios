//
//  EUIEmptyDataView.m
//  EUI-EUI
//
//  Created by 李天露 on 2018/7/3.
//

#import "EUIEmptyDataView.h"
#import "Masonry.h"
#import "NSBundle+EUIBundle.h"

@interface EUIEmptyDataView ()
/**
 顶部的图片
 */
@property (nonatomic, strong) UIImageView *topImageView;

/**
 提示label
 */
@property (nonatomic, strong) UILabel *tipLabel;

/**
 底部按钮
 */
@property (nonatomic, strong) UIButton *bottomButton;

@end

@implementation EUIEmptyDataView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configUI];

        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)configUI {
    
    [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(22);
        make.left.equalTo(self).offset(20);
        make.right.equalTo(self).offset(-20);
        make.center.equalTo(self);
    }];
    
    [self.topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(110);
        make.height.mas_equalTo(92);
        make.bottom.equalTo(self.tipLabel.mas_top).offset(-20);
        make.centerX.equalTo(self);
    }];
}

#pragma mark - PublishMethod

- (void)showEmptyViewWithImage:(UIImage *)image labelText:(NSString *)labelText {
    self.hidden = NO;
    
    UIImage* defaultImg = [UIImage imageNamed:@"没有观看记录" inBundle:[NSBundle EUIBundleTool] compatibleWithTraitCollection:nil];
    
    _topImageView.image = image ? image : defaultImg;
    
    _tipLabel.text = labelText ? : @"暂时没有观看记录";
}

- (void)dismiss {
    self.hidden = YES;
}


#pragma mark - getter

- (UIImageView *)topImageView
{
    if(!_topImageView)
    {
        UIImageView *imageView = [[UIImageView alloc] init];
        [self addSubview:imageView];
        _topImageView = imageView;
    }
    return _topImageView;
}

- (UILabel *)tipLabel
{
    if(!_tipLabel)
    {
        UILabel *label = [[UILabel alloc] init];
        [self addSubview:label];
        _tipLabel = label;
        label.numberOfLines = 0;
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = HEXACOLOR(0xA7ACB9, 1.0);;
        label.font = [UIFont systemFontOfSize:16];
    }
    return _tipLabel;
}


@end
