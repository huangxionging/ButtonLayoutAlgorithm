//
//  HXLayoutViewController.m
//  ButtonLayoutAlgorithm
//
//  Created by huangxiong on 15/3/4.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//

#import "HXLayoutViewController.h"

@interface HXLayoutViewController ()

@end

@implementation HXLayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor clearColor];
    
    [self performSelector: @selector(layoutButton) withObject: nil afterDelay: 0.1];
}

- (void)layoutButton
{
    // 按钮数量
    NSInteger count = _count;
    // 边界宽度
    NSInteger edgeWidth = _space;
    // 剩余最大宽度
    CGFloat maxLength = [[UIScreen mainScreen] bounds].size.width - edgeWidth;
    // 按钮占位宽度
    CGFloat width = maxLength / count;
    
    // 创建按钮
    for (NSInteger index = 0; index < count; ++index)
    {
        UIButton *button = [UIButton buttonWithType: UIButtonTypeCustom];
        button.frame = CGRectMake(edgeWidth + index * width, 100, width - edgeWidth, 40);
        button.backgroundColor = [UIColor greenColor];
        button.layer.masksToBounds = YES;
        button.layer.cornerRadius = 5;
        [self.view addSubview: button];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated: YES completion:^{
        
    }];
}

@end
