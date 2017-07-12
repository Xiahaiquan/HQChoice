//
//  HQArrowView.h
//  HQSwitcher
//
//  Created by HaiQuan on 2017/7/7.
//  Copyright © 2017年 HaiQuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HQArrowView : UIControl

- (instancetype)initWithFrame:(CGRect)frame Direction:(NSInteger) direction;

@property (nonatomic, copy) void (^dragCallBack)(HQArrowView * pointView);

@property (nonatomic, assign) NSInteger direction;

@end
