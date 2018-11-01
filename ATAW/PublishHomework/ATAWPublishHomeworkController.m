//
//  ATAWPublishHomeworkController.m
//  ATAW
//
//  Created by 蔡享 on 2018/10/25.
//  Copyright © 2018年 蔡享. All rights reserved.
//

#import "ATAWPublishHomeworkController.h"
#import "ATAWNewHomeworkByCameraController.h"

#define ATAWPUBLISHHOMEWORKCELL         @"ATAWPublishHomeworkCell"
@interface ATAWPublishHomeworkController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIView *segmentView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *collectionViews;

@end

@implementation ATAWPublishHomeworkController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)setCollectionViews:(NSArray *)collectionViews
{
    _collectionViews = collectionViews;
    for (UIView *view in _collectionViews) {
        [view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapCollectionView:)]];
    }
}


#pragma mark Action
- (void)tapCollectionView:(UITapGestureRecognizer *)gesture
{
    NSInteger tag = gesture.view.tag;
    switch (tag) {
        case 1:
        {
            UIStoryboard *board = [UIStoryboard storyboardWithName: @"Main" bundle: nil];
            ATAWNewHomeworkByCameraController *newHomeworkController = [board instantiateViewControllerWithIdentifier: @"ATAWNewHomeworkByCameraController"];
            [self.navigationController pushViewController:newHomeworkController animated:YES];
           
        }
            break;
            
        default:
            break;
    }
}

#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView dequeueReusableCellWithIdentifier:ATAWPUBLISHHOMEWORKCELL];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
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
