//
//  SnowView.m
//  CAEmitterLayerViewTest
//
//  Created by 阿拉斯加的狗 on 2017/6/13.
//  Copyright © 2017年 阿拉斯加的🐶. All rights reserved.
//

#import "SnowView.h"

@implementation SnowView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        [self setUpUI];
        
    }
    
    return self;
}

- (void)setUpUI {
    
    self.emitterLayer.masksToBounds = YES;
    
    //发射器的形状  线的形状，粒子从一条线发出
    self.emitterLayer.emitterShape = kCAEmitterLayerLine;
    
    //从发射器表面发射
    self.emitterLayer.emitterMode = kCAEmitterLayerSurface;
    self.emitterLayer.emitterSize = self.frame.size;
    self.emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width / 2, 0);
    
}

- (void)show {
    //配置
    CAEmitterCell *snowFlake = [CAEmitterCell emitterCell];
    snowFlake.birthRate = 0.5f;
    snowFlake.speed = 2.f;
    snowFlake.velocity = 1.f;
    snowFlake.velocityRange = 2.f;
    snowFlake.yAcceleration = 2.f;
    snowFlake.emissionRange = 0.5 * M_PI;
    snowFlake.spinRange = 0.25 * M_PI;
    snowFlake.contents = (__bridge id _Nullable)([UIImage imageNamed:@"snow"].CGImage);
    snowFlake.color = [UIColor whiteColor].CGColor;
    snowFlake.lifetime = 50.f;
    snowFlake.scale = 0.2;
    snowFlake.scaleRange = 0.1;
    
    //添加动画
    self.emitterLayer.emitterCells = @[snowFlake];
}
@end
