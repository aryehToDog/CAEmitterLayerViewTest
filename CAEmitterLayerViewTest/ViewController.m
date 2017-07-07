//
//  ViewController.m
//  CAEmitterLayerViewTest
//
//  Created by 阿拉斯加的狗 on 2017/6/13.
//  Copyright © 2017年 阿拉斯加的🐶. All rights reserved.
//

#import "ViewController.h"
#import "RainView.h"
#import "CAEmitterLayerView.h"
#import "SnowView.h"
#import "JXTTwinkleStarView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CAEmitterLayerView *sView = [[RainView alloc] initWithFrame:CGRectMake(25, 100, 400,500)];
////    sView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:sView];
//    [sView show];
//    
//    self.view.backgroundColor = [UIColor grayColor];
    
//    
//    SnowView *sView = [[SnowView alloc] initWithFrame:CGRectMake(25, 100, 200,300)];
//    [self.view addSubview:sView];
//    [sView show];
//    self.view.backgroundColor = [UIColor grayColor];
    
    JXTTwinkleStarView *starView = [JXTTwinkleStarView twinkleStarViewWithFrame:CGRectMake(0, 0, 200, 200) number:20 shape:JXTTwinkleStarViewShapeRound overflowRadius:50];
    starView.center = CGPointMake(self.view.bounds.size.width*0.5, self.view.bounds.size.height*0.5);
    starView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:starView];
    
}




@end
