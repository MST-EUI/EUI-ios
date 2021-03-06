# EUI

ios控件标准化

# Alert
EUIAlertView（包括带输入框和不带输入框）。
## 使用方式
[EUIAlertView showAlertViewWithTitle:@"标题" message:@"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容" preferredStyle:UIAlertControllerStyleAlert viewController:self cancelItemTitle:@"是" ortherItemTitle:@"否" moreItemTitle:@"再看看" cancelAction:nil ortherAction:nil moreAction:nil];
其中 cancelAction、ortherAction、moreAction是点击回调。  
![image](https://raw.githubusercontent.com/MST-EUI/EUI-ios/master/Example/EUI/Screenshots/alert.png)

# EmptyDataView
UIView+EmptyData.h
## 使用方式
[self.view configEmptyViewHasData:NO image:nil labelText:nil];//显示空数据页面  
[self.view configEmptyViewHasData:YES image:nil labelText:nil]; //隐藏空数据页面  
![image](https://raw.githubusercontent.com/MST-EUI/EUI-ios/master/Example/EUI/Screenshots/emptydata.png)

# Toast
MBProgressHUD+Toast.h
## 使用方式
[MBProgressHUD toastMessage:message ToView:self.view];//自动隐藏
[MBProgressHUD toastMessage:message ToView:view RemainTime:1.5]; //自定义时间隐藏  
![image](https://raw.githubusercontent.com/MST-EUI/EUI-ios/master/Example/EUI/Screenshots/toast.png)


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
![image](https://raw.githubusercontent.com/MST-EUI/EUI-ios/master/Example/EUI/Screenshots/button.png)

# Loading
MBProgressHUD+Loading.h
## 使用方式
[MBProgressHUD showLoadingToView:self.view];//自动隐藏  
[MBProgressHUD showLoadingToView:view RemainTime:1.5];//指定时间隐藏    
![image](https://raw.githubusercontent.com/MST-EUI/EUI-ios/master/Example/EUI/Screenshots/loading.png)

## Requirements
iOS 8及以上

## Installation

EUI is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EUI'
```

## Author

李天露, litianlu@mistong.com

## 宣传站开发

### 安装依赖

```
npm install
```

### 启动项目
```
npm start
```

> 修改 `/docs` 下的文件即可，[使用手册](https://docsify.js.org/#/zh-cn/)