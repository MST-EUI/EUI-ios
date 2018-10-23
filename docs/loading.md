# EWTLoading

加载效果，包含铅笔动画+文字

## 效果展示

<center>
<img src="./loading/loading.png" width="300"/>
铅笔
</center> 

<center>
<img src="./loading/loadingwithtitle.png" width="300"/>
铅笔+文字
</center> 

                    
<center>
<img src="./loading/loadingcircle.png" width="300" />
菊花
</center> 


## 使用方法

```
// 铅笔动画
[_contentView showEWTLoadingWithTitle:@""];

// 铅笔动画 + 文字
[_contentView showEWTLoadingWithTitle:@"正在加载中..."];

// 菊花转圈加载效果
[MBProgressHUD showLoadingToView:_contentView];

```



