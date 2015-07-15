//
//  ViewController.m
//  ButtonLayoutAlgorithm
//
//  Created by huangxiong on 15/3/4.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//

#import "ViewController.h"
#import "HXLayoutViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popLayoutViewController:(UIButton *)sender
{
    CGFloat space = _spaceTextField.text.floatValue;
    
    CGFloat count = _countTextFiled.text.floatValue;
    
    if (count == 0)
    {
        UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle: @"错误" message: @"count不能为0"preferredStyle: UIAlertControllerStyleAlert];
        
        [alertViewController addAction: [UIAlertAction actionWithTitle: @"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
           [alertViewController dismissViewControllerAnimated: YES completion:^{
               
           }];
        }]];
        
        [self presentViewController: alertViewController animated: YES completion:^{
            
        }];
        return;
    }
    
    HXLayoutViewController *layoutViewController = [[HXLayoutViewController alloc] init];
    layoutViewController.count = count;
    
    layoutViewController.space = space;
    
    [self presentViewController: layoutViewController animated: YES completion:^{
        
    }];
}
@end
