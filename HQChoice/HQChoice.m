//
//  HQSwitcherView.m
//  HQSwitcher
//
//  Created by HaiQuan on 2017/7/7.
//  Copyright © 2017年 HaiQuan. All rights reserved.
//

#import "HQChoice.h"

#import "HQArrowView.h"

#import "Masonry.h"

#import "UIView+ZLExtension.h"

#import "Macro.h"

@implementation HQChoice

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        [self confingUI];

    }
    return  self;
}
- (void)confingUI {
    
    [self addSubview:self.dateLabel];
    
    [self.dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerX.equalTo(self.mas_centerX);
        make.centerY.equalTo(self.mas_centerY);

    }];
    
    CGRect leftFrame  = CGRectMake(0, 0, viewHeith, viewHeith);
    HQArrowView *leftArrorView = [[HQArrowView alloc]initWithFrame:leftFrame Direction:1];
    
    leftArrorView.dragCallBack = ^(HQArrowView * pv) {
        
        NSLog(@"🌹%ld",(long)pv.direction);
    };
    [self addSubview:leftArrorView];
    
    
    
    CGRect rightFrame = CGRectMake((self.zl_width - viewHeith) , 0, viewHeith, viewHeith);
    HQArrowView *rightArrorView = [[HQArrowView alloc]initWithFrame:rightFrame Direction:2];
    rightArrorView.dragCallBack = ^(HQArrowView * pv) {
        
        NSLog(@"🌺%ld",(long)pv.direction);
    };
    [self addSubview:rightArrorView];
    
}

- (UILabel *)dateLabel {
    
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc]init];
    }
    return _dateLabel;
}
@end
