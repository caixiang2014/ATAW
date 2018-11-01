//
//  ViewController.m
//  ATAW
//
//  Created by 蔡享 on 2018/10/11.
//  Copyright © 2018年 蔡享. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *accountLoginButton;

@property (weak, nonatomic) IBOutlet UIButton *phoneLoginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"教师登陆";
}

- (void)setAccountLoginButton:(UIButton *)accountLoginButton
{
    _accountLoginButton = accountLoginButton;
    [self setButtonStyle:_accountLoginButton];
}

- (void)setPhoneLoginButton:(UIButton *)phoneLoginButton
{
    _phoneLoginButton = phoneLoginButton;
    [self setButtonStyle:_phoneLoginButton];
}

- (void)setButtonStyle:(UIButton *)button
{
    button.layer.cornerRadius = 4;
    button.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    button.layer.shadowOffset = CGSizeMake(3,3);
    button.layer.shadowOpacity = 0.8;
    button.layer.shadowRadius = 4;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
