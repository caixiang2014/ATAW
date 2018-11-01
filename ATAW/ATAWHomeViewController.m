//
//  ATAWHomeViewController.m
//  ATAW
//
//  Created by 蔡享 on 2018/10/13.
//  Copyright © 2018年 蔡享. All rights reserved.
//

#import "ATAWHomeViewController.h"

@interface ATAWHomeViewController ()


@end

@implementation ATAWHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIColor *titleHighlightedColor = [UIColor colorWithRed:17.0/255 green:203.0/255 blue:133.0/255 alpha:1.0];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:titleHighlightedColor} forState:UIControlStateSelected];
    self.navigationController.navigationBarHidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
