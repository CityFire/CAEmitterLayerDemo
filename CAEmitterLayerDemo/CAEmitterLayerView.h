//
//  CAEmitterLayerView.h
//  CAEmitterLayerDemo
//
//  Created by wjc on 15/11/15.
//  Copyright © 2015年 wjc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CAEmitterLayerView : UIView

/**
 *  模仿setter,getter方法
 *
 *  @param layer 
 */
- (void)setEmitterLayer:(CAEmitterLayer *)layer;
- (CAEmitterLayer *)emitterLayer;

/**
 *  显示出当前view
 */
- (void)show;

/**
 *  隐藏当前view
 */
- (void)hide;

@end
