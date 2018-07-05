//
//  EUIGradientButton.m
//  EUI
//
//  Created by 李天露 on 2018/7/4.
//

#import "EUIGradientButton.h"

@interface EUIGradientButton()

@property (nonatomic,strong)CAGradientLayer* gradientLayer;

@property (nonatomic,strong)CALayer* disableLayer;


@end

@implementation EUIGradientButton

-(CAGradientLayer *)gradientLayer {
    if (!_gradientLayer) {
        _gradientLayer = [CAGradientLayer layer];
        _gradientLayer.locations = @[@(0),@(1)];
        _gradientLayer.startPoint = CGPointMake(0, 0);
        _gradientLayer.endPoint = CGPointMake(1, 0);
    }
    return _gradientLayer;
}

-(CALayer *)disableLayer {
    if (!_disableLayer) {
        _disableLayer = [CALayer layer];
        _disableLayer.backgroundColor = HEXACOLOR(0xFFFFFF, 0.65).CGColor;
        _disableLayer.hidden = YES;
    }
    return _disableLayer;
}

-(id)initWithFrame:(CGRect)frame {
    self=[super initWithFrame:frame];
    if(self)
    {
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateDisabled];
        self.titleLabel.font = [UIFont systemFontOfSize:17];
        self.layer.cornerRadius = 4;
        self.layer.masksToBounds = YES;
        [self.layer insertSublayer:self.gradientLayer atIndex:0];
        [self.layer insertSublayer:self.disableLayer atIndex:1];
    }
    return self;
}

-(void)setGradientColors:(NSArray *)gradientColors {
    _gradientColors = gradientColors;
    self.gradientLayer.colors = gradientColors;
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.gradientLayer.frame = self.bounds;
    self.disableLayer.frame = self.bounds;
    self.gradientLayer.cornerRadius = self.layer.cornerRadius;
    self.disableLayer.cornerRadius = self.layer.cornerRadius;
}

-(void)setShowGradient:(BOOL)showGradient {
    _showGradient = showGradient;
    self.gradientLayer.hidden = !showGradient;
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

- (void)setEnabled:(BOOL)enabled {
    [super setEnabled: enabled];
    self.disableLayer.hidden = enabled;
    [self setNeedsLayout];
    [self layoutIfNeeded];
}


@end
