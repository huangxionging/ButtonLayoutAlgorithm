//
//  ViewController.h
//  ButtonLayoutAlgorithm
//
//  Created by huangxiong on 15/3/4.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/**
 *  间距输入框
 */
@property (weak, nonatomic) IBOutlet UITextField *spaceTextField;

/**
 *  按钮输入框
 */
@property (weak, nonatomic) IBOutlet UITextField *countTextFiled;

/**
 *  弹出按钮
 */
- (IBAction)popLayoutViewController:(UIButton *)sender;

@end

