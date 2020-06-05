//
//  FMViewController.m
//  FMChainKit
//
//  Created by zhoufaming251@163.com on 06/05/2020.
//  Copyright (c) 2020 zhoufaming251@163.com. All rights reserved.
//

#import "FMViewController.h"
#import <FMChainKit/FMChainKit.h>

@interface FMViewController ()

@end

@implementation FMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.c_addSub(UIView.c_init.c_frame(CGRectMake(20, 50, 100, 100)).c_bgColor(UIColor.redColor)); self.view.c_addSub(UILabel.c_init.c_text(@"label测试文本").c_textColor(UIColor.blueColor).c_frame(CGRectMake(20, 160, 200, 30)));
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
