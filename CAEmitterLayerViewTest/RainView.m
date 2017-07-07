//
//  RainView.m
//  CAEmitterLayerViewTest
//
//  Created by 阿拉斯加的狗 on 2017/6/13.
//  Copyright © 2017年 阿拉斯加的🐶. All rights reserved.
//

#import "RainView.h"

@implementation RainView

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
    self.emitterLayer.emitterPosition = CGPointMake(0, 0);

}

- (void)show {

    //配置
    CAEmitterCell *rainCell = [CAEmitterCell emitterCell];
    
    //产生的速率
    rainCell.birthRate = 5.f;
    //生存时间
    rainCell.lifetime = 50.f;
    //速度
    rainCell.speed = 5.f;
    //粒子的速度
    rainCell.velocity = 10.f;
    //容差速度
    rainCell.velocityRange = 5.f;
    //y轴加速度
    rainCell.yAcceleration = 10.f;
//     rainCell.zAcceleration = -4.f;
    //粒子发射角度的容差
    rainCell.emissionRange = 0.25 * M_PI;
    
    rainCell.emissionLatitude = -M_PI_4;
    
    rainCell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"ele_rainLine2"].CGImage);
    rainCell.color = [UIColor whiteColor].CGColor;
    
    rainCell.scale = 0.5;
    rainCell.scaleRange = 0.3;
    
    self.emitterLayer.emitterCells = @[rainCell];


}

@end
