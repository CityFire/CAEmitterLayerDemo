//
//  SnowView.m
//  CAEmitterLayerDemo
//
//  Created by wjc on 15/11/15.
//  Copyright © 2015年 wjc. All rights reserved.
//

#import "SnowView.h"

@implementation SnowView

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
    self.emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width * 0.5, -20);
    
}

- (void)show {
    // 配置
    CAEmitterCell *snowflake = [CAEmitterCell emitterCell];
    snowflake.birthRate = 1.f;
    snowflake.speed = 10.f;
    snowflake.velocity = 2.f;
    snowflake.velocityRange = 10.f;
    snowflake.yAcceleration = 10.f;
    snowflake.emissionRange = 0.5 * M_PI;
    snowflake.spinRange = 0.25 * M_PI;
    snowflake.contents = (__bridge id)([UIImage imageNamed:@"dot.png"].CGImage);
    snowflake.color = [UIColor redColor].CGColor;
    snowflake.lifetime = 60.f;
    snowflake.scale = 0.5;
    snowflake.scaleRange = 0.3;
    
    // 添加动画
    self.emitterLayer.emitterCells = @[snowflake];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
