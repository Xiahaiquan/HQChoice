//
//  ViewController.m
//  HQSwitcher
//
//  Created by HaiQuan on 2017/7/7.
//  Copyright © 2017年 HaiQuan. All rights reserved.
//

#import "ViewController.h"

#import "HQChoice.h"

#import "Macro.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     HQChoice* switchView = [[HQChoice alloc]initWithFrame:CGRectMake(40, 80, viewWidth, viewHeith)];
    
    switchView.dateLabel.text = @"2017-07-7";
    
    [self.view addSubview:switchView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
