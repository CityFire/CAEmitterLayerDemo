//
//  RainView.m
//  CAEmitterLayerDemo
//
//  Created by wjc on 15/11/15.
//  Copyright © 2015年 wjc. All rights reserved.
//

#import "RainView.h"

@implementation RainView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initEmitterLayerProperties];
    }
    return self;
}

- (void)initEmitterLayerProperties {
    // 初始化设置
    self.emitterLayer.masksToBounds = YES;
    self.emitterLayer.emitterShape = kCAEmitterLayerLine;
    self.emitterLayer.emitterMode = kCAEmitterLayerSurface;
    self.emitterLayer.emitterSize = self.frame.size;
    self.emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width * 0.5, -20);
    
}

- (void)show {
    // 配置
    CAEmitterCell *rainflake = [CAEmitterCell emitterCell];
    rainflake.birthRate = 25.f;
    rainflake.speed = 10.f;
    rainflake.velocity = 10.f;
    rainflake.velocityRange = 10.f;
    rainflake.yAcceleration = 1000.f;
    rainflake.emissionRange = 0.5 * M_PI;
    rainflake.spinRange = 0.25 * M_PI;
    rainflake.contents = (__bridge id)([UIImage imageNamed:@"dot.png"].CGImage);
    rainflake.color = [UIColor redColor].CGColor;
    rainflake.lifetime = 7.f;
    rainflake.scale = 0.2f;
    rainflake.scaleRange = 0.f;
    
    // 添加动画
    self.emitterLayer.emitterCells = @[rainflake];
}


@end
