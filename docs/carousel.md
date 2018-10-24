# Carousel

轮播图组件

## 效果展示


<img src="./carousel/carousel.gif" width="300"/>



## 使用方法

```
// 初始化
_bannerView = [[EWTICarousel alloc] initWithFrame:CGRectMake(0, 10.0f, SCREEN_WIDTH, BannerViewH) withEWTICarouselType:EWTiCarouselTypeLinear contetnViewW:BanberViewW viewSpace:4.0f cornerRadius:4.0f];
_bannerView.carousel.backgroundColor = [UIColor whiteColor];

// 显示分页控件
[_bannerView showPageControl:YES PositionType:EWTiCarouselPageRight CurentPageImage:@"shengya-banner-lunbo-press" PageImage:@"shengya-banner-lunbo-nor"];

// 设置点击事件
__weak typeof(self) weakSelf = self;
_bannerView.icarouselSelectBlock = ^(NSInteger selectIndex) {
    [weakSelf clickAppliedBannerPageIndex:selectIndex];
};

// 添加数据源
NSMutableArray *bannerPicsArr = [NSMutableArray array];
for (NSInteger i = 0; i<_bannerArr.count; i++) {
    BannerModel *bannerModel = _bannerArr[i];
    [bannerPicsArr addObject:bannerModel.PicUrl];
}
[self.bannerView setContentSource:bannerPicsArr];
```





