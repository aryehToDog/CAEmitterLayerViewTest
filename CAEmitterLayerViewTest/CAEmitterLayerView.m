//
//  CAEmitterLayerView.m
//  CAEmitterLayerViewTest
//
//  Created by 阿拉斯加的狗 on 2017/6/13.
//  Copyright © 2017年 阿拉斯加的🐶. All rights reserved.
//

#import "CAEmitterLayerView.h"

@interface CAEmitterLayerView (){

    CAEmitterLayer *_emitterLayer;

}

@end

@implementation CAEmitterLayerView

+(Class)layerClass {
    return [CAEmitterLayer class];
}


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _emitterLayer = (CAEmitterLayer *)self.layer;
    }
    return self;
}

- (void)setEmitterLayer:(CAEmitterLayer *)layer {
    _emitterLayer = layer;
}

- (CAEmitterLayer *)emitterLayer {
    return _emitterLayer;
}

- (void)show {
    
}

- (void)hide {
    
}


@end
