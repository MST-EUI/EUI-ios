# Photobroswer

照片选择组件

## 效果展示


<img src="./photobroswer/photo_camera.png" width="300"/>
<img src="./photobroswer/photo_choose_list.png" width="300"/>
<img src="./photobroswer/photo_choose_grid.png" width="300"/>
<img src="./photobroswer/photo_choose_scan.png" width="300"/>


## 使用方法

```
// 调用照相机取景
[EWTMediator EWTImagePicker_getImageFromCameraWithController:vc authorityType:SystemAuthorityVideo allowCrop:NO completion:^(NSArray<UIImage *> *images) {
    // 回调图片
}];

// 调用相册
[EWTMediator EWTImagePicker_getImageFromLibraryWithController:vc maxNum:9 allowCrop:NO showOriginal:NO completion:^(NSArray<UIImage *> *images) {
    // 回调图片
}];
```

### API


| 属性 | 说明 | 类型 | 默认 |
| ------------- |------------- | ----- |
| authorityType | 授权类型| 枚举 | 照相机 |
| allowCrop | 是否允许裁剪 | BOOL | YES |
 | maxNum | 最大照片选择张书 | NSUInteger | 0 |
 | showOriginal | 是否显示原图按钮 | BOOL | YES |
 | ------------- |------------- | ----- |



