//
//  ATAWPublishHomeworkHomeController.m
//  ATAW
//
//  Created by 蔡享 on 2018/10/28.
//  Copyright © 2018年 蔡享. All rights reserved.
//

#import "ATAWPublishHomeworkHomeController.h"
#import "SegmentItem.h"
#import <Masonry/Masonry.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "ATAWMyHomeworkController.h"
#import "ATAWHomeworkLibraryController.h"
#import "ATAWPublishHomeworkController.h"

@interface ATAWPublishHomeworkHomeController ()

@property (weak, nonatomic) IBOutlet UIView *segmentView;
@property (weak, nonatomic) IBOutlet UIView *publishHomeworkView;
@property (weak, nonatomic) IBOutlet UIView *myHomeworkView;
@property (weak, nonatomic) IBOutlet UIView *homeworkLibraryView;
@property (nonatomic,strong) NSArray *segmentItems;

@end

@implementation ATAWPublishHomeworkHomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupView];
    [self setupSegmentViewWithSegmentTitles:@[@"布置作业",@"我的作业",@"作业库"]];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
}
- (void)setupView
{
    self.publishHomeworkView.hidden = NO;
    self.myHomeworkView.hidden = YES;
    self.homeworkLibraryView.hidden = YES;
}

- (void)setupSegmentViewWithSegmentTitles:(NSArray *)segmentTitles
{
    NSMutableArray *segmentItems = [NSMutableArray array];
    CGFloat SEGMENT_WIDTH = [UIScreen mainScreen].bounds.size.width/segmentTitles.count;
    for (NSInteger i = 0; i<segmentTitles.count; i++) {
        SegmentItem *segmentItem = [[SegmentItem alloc] init];
        segmentItem.selected = i==0?YES:NO;
        segmentItem.title = segmentTitles[i];
        segmentItem.segmentIndex = i;
        @weakify(segmentItem);
        segmentItem.tapSegmentItem = ^(BOOL selected) {
            @strongify(segmentItem);
            if (!selected) {
                [self segmentStatusChanged:segmentItem];
            }
        };
        [segmentItems addObject:segmentItem];
        [self.segmentView addSubview:segmentItem];
        [segmentItem mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(self.segmentView);
            make.width.mas_equalTo(SEGMENT_WIDTH);
            make.left.equalTo(self.segmentView).offset(i*SEGMENT_WIDTH);
        }];
    }
    self.segmentItems = segmentItems;
}

- (void)segmentStatusChanged:(SegmentItem *)segmentItem
{
    for (SegmentItem *segment in self.segmentItems) {
        segment.selected = segment == segmentItem?YES:NO;
    }
    
    if (segmentItem.segmentIndex == 0) {
        self.publishHomeworkView.hidden = NO;
        self.myHomeworkView.hidden = YES;
        self.homeworkLibraryView.hidden = YES;
    }else if (segmentItem.segmentIndex == 1){
        self.publishHomeworkView.hidden = YES;
        self.myHomeworkView.hidden = NO;
        self.homeworkLibraryView.hidden = YES;
    }else{
        self.publishHomeworkView.hidden = YES;
        self.myHomeworkView.hidden = YES;
        self.homeworkLibraryView.hidden = NO;
    }
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
