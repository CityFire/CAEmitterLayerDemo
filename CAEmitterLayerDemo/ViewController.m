//
//  ViewController.m
//  CAEmitterLayerDemo
//
//  Created by wjc on 15/11/15.
//  Copyright © 2015年 wjc. All rights reserved.
//

#import "ViewController.h"
#import "CAEmitterLayerView.h"
#import "SnowView.h"
#import "RainView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*// 创建出Layer
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    // 显示边框
    emitterLayer.borderWidth = 1.f;
    // 给定尺寸
    emitterLayer.frame = CGRectMake(100, 100, 100, 100);
    
//    emitterLayer.masksToBounds = YES;
    // 发射点
    emitterLayer.emitterPosition = CGPointMake(0, 0);
    // 发射模式
    emitterLayer.emitterMode = kCAEmitterLayerSurface;
    // 发射形状
    emitterLayer.emitterShape = kCAEmitterLayerLine;
    // 添加layer
    [self.view.layer addSublayer:emitterLayer];
    
    //
    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    // 粒子产生率
    cell.birthRate = 10.f;
    // 粒子生命周期
    cell.lifetime = 10.f;
    // 速度值
    cell.velocity = 10;
    // 速度值的微调值
    cell.velocityRange = 3.f;
    // y轴加速度
    cell.yAcceleration = 2.f;
    // 发射角度
    cell.emissionRange = 4.f * M_1_PI;
    // 设置粒子颜色
    cell.color = [UIColor blackColor].CGColor;
    
    // 设置图片
    cell.contents = (__bridge id)([UIImage imageNamed:@"dot.png"].CGImage);
    
    // 让CAEmitterCell与CAEmitterLayer产生关联
    emitterLayer.emitterCells = @[cell];
     */
    
//    CAEmitterLayerView *layerView = [[CAEmitterLayerView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    
//    NSLog(@"%@", layerView.layer);
    
    UIImageView *alphaView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    alphaView1.image = [UIImage imageNamed:@"alpha"];
    
    // 添加下雪效果
    CAEmitterLayerView *snowView = [[SnowView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:snowView];
//    snowView.maskView = alphaView1;
    [snowView show];
    
    // 添加下雨效果
    CAEmitterLayerView *rainView = [[RainView alloc] initWithFrame:CGRectMake(100, 210, 100, 100)];
    [self.view addSubview:rainView];
    [rainView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
