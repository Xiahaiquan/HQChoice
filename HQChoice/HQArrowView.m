//
//  HQArrowView.m
//  HQSwitcher
//
//  Created by HaiQuan on 2017/7/7.
//  Copyright © 2017年 HaiQuan. All rights reserved.
//

#import "HQArrowView.h"

#import "UIView+ZLExtension.h"

#import "Macro.h"


@implementation HQArrowView

- (void)drawRect:(CGRect)rect {
    [super  drawRect:rect];
    
    [[UIColor darkGrayColor] set];
    
    UIBezierPath* path = [UIBezierPath bezierPath];
    
    path.lineWidth     = 2.f;
    //端点
    path.lineCapStyle  = kCGLineCapButt;
    //拐角点
    path.lineJoinStyle = kCGLineJoinRound;
    
    if (_direction == 1) {
        
        // 起点
        [path moveToPoint:CGPointMake(self.zl_width, topMargin)];
        
        // 中点
        [path addLineToPoint:CGPointMake(leftMargin, self.zl_centerY)];
        
        //终点
        [path addLineToPoint:CGPointMake(self.zl_width, self.zl_height - topMargin)];

    }else {
    
    // 起点
    [path moveToPoint:CGPointMake(0, topMargin)];
    
    // 中点
    [path addLineToPoint:CGPointMake(self.zl_width - leftMargin, self.zl_centerY)];
    
    //终点
    [path addLineToPoint:CGPointMake(0, self.zl_height - topMargin)];
    
    }
    [path stroke];
}
- (instancetype)initWithFrame:(CGRect)frame Direction:(NSInteger) direction {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        
        _direction = direction;
        
      [self addTarget:self action:@selector(UIControlEventTouchUpInside:withEvent:) forControlEvents:UIControlEventTouchUpInside];
    }
    return  self;
}

- (void)UIControlEventTouchUpInside:(HQArrowView *)pointView withEvent:(UIEvent *)event
{

    if (self.dragCallBack) {
        self.dragCallBack(self);
    }
}

@end
