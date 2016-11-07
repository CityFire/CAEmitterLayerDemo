//
//  CAEmitterLayerView.m
//  CAEmitterLayerDemo
//
//  Created by wjc on 15/11/15.
//  Copyright © 2015年 wjc. All rights reserved.
//

#import "CAEmitterLayerView.h"

@interface CAEmitterLayerView () {
    CAEmitterLayer *_emitterLayer;
}

@end

@implementation CAEmitterLayerView

+ (Class)layerClass
{
    return [CAEmitterLayer class];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _emitterLayer = (CAEmitterLayer *)self.layer;
    }
    return self;
}

- (void)setEmitterLayer:(CAEmitterLayer *)layer
{
    _emitterLayer = layer;
}

- (CAEmitterLayer *)emitterLayer
{
    return _emitterLayer;
}

- (void)show
{
    
}

- (void)hide
{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
