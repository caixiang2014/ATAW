//
//  ATAWLoginViewController.m
//  ATAW
//
//  Created by 蔡享 on 2018/10/23.
//  Copyright © 2018年 蔡享. All rights reserved.
//

#import "ATAWLoginViewController.h"

@interface ATAWLoginViewController ()

@property (weak, nonatomic) IBOutlet UIView *userNameView;
@property (weak, nonatomic) IBOutlet UIView *passwordView;

@end

@implementation ATAWLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"教师登陆";
}

-(void)setUserNameView:(UIView *)userNameView
{
    _userNameView = userNameView;
    _userNameView.layer.borderWidth = 2.0;
    _userNameView.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
}

- (void)setPasswordView:(UIView *)passwordView
{
    _passwordView = passwordView;
    _passwordView.layer.borderWidth = 2.0;
    _passwordView.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
