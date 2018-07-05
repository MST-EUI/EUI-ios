# EUI

ios控件标准化

# Alert
EUIAlertView（包括带输入框和不带输入框）。
## 使用方式
<pre>[EUIAlertView showAlertViewWithTitle:@"标题" message:@"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容" preferredStyle:UIAlertControllerStyleAlert viewController:self cancelItemTitle:@"是" ortherItemTitle:@"否" moreItemTitle:@"再看看" cancelAction:nil ortherAction:nil moreAction:nil];

其中 cancelAction、ortherAction、moreAction是点击回调。</pre>

# EmptyDataView
UIView+EmptyData.h
## 使用方式
[self.view configEmptyViewHasData:NO image:nil labelText:nil];//显示空数据页面
[self.view configEmptyViewHasData:YES image:nil labelText:nil]; //隐藏空数据页面

# Toast
MBProgressHUD+Toast.h
## 使用方式
[MBProgressHUD toastMessage:message ToView:self.view];//自动隐藏
[MBProgressHUD toastMessage:message ToView:view RemainTime:1.5]; //自定义时间隐藏

# Button
EUIGradientButton.h
## 使用方式
EUIGradientButton* norBtn = [EUIGradientButton buttonWithType:UIButtonTypeCustom];
norBtn.frame = CGRectMake(12, 200, self.view.width - 12*2, 45);
norBtn.gradientColors = @[
(id)[HEXACOLOR(0x02AAFF, 1.0) CGColor],
(id)[HEXACOLOR(0x0387FF , 1.0) CGColor]
];
[norBtn addTarget:self action:@selector(changeState:) forControlEvents:UIControlEventTouchUpInside];
[norBtn setTitle:@"普通状态" forState:UIControlStateNormal];
[norBtn setTitle:@"禁用状态" forState:UIControlStateDisabled];
[self.view addSubview:norBtn];

# Loading
MBProgressHUD+Loading.h
## 使用方式
[MBProgressHUD showLoadingToView:self.view];//自动隐藏
[MBProgressHUD showLoadingToView:view RemainTime:1.5];//指定时间隐藏

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Requirements

## Installation

EUI is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EUI'
```

## Author

李天露, litianlu@mistong.com

## License

EUI is available under the MIT license. See the LICENSE file for more info.
