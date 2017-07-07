//
//  CAEmitterLayerView.h
//  CAEmitterLayerViewTest
//
//  Created by 阿拉斯加的狗 on 2017/6/13.
//  Copyright © 2017年 阿拉斯加的🐶. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CAEmitterLayerView : UIView

- (void)setEmitterLayer:(CAEmitterLayer *)layer;
- (CAEmitterLayer *)emitterLayer;


//显示出当前view
- (void)show;
//隐藏
- (void)hide;

@end
