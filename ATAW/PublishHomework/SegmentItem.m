//
//  SegmentItem.m
//  ATAW
//
//  Created by 蔡享 on 2018/10/26.
//  Copyright © 2018年 蔡享. All rights reserved.
//

#import "SegmentItem.h"
#import <Masonry/Masonry.h>

@interface SegmentItem()

@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UIView *statusLine;
@end

@implementation SegmentItem

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupUI];
    }
    
    return self;
}

- (void)setupUI
{
    UIView *statusLine = [[UIView alloc] init];
    [self addSubview:statusLine];
    [statusLine mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.equalTo(self);
        make.height.mas_equalTo(2);
        make.bottom.equalTo(self);
    }];
    self.statusLine = statusLine;
    
    UILabel *title = [[UILabel alloc] init];
    title.font = [UIFont systemFontOfSize:17];
    [self addSubview:title];
    [title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.top.equalTo(self);
        make.bottom.equalTo(statusLine);
    }];
    [statusLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(title.mas_left);
        make.right.equalTo(title.mas_right);
    }];
    self.titleLabel = title;
    
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(selectSegmentItem:)]];
}

- (void)setSelected:(BOOL)selected
{
    _selected = selected;
    _selected?[self selectedStyle]:[self unSelectedStyle];
}

- (void)setTitle:(NSString *)title
{
    _title = title;
    self.titleLabel.text = title;
}

- (void)selectedStyle
{
    self.statusLine.backgroundColor = [UIColor colorWithRed:17.0/255 green:203.0/255 blue:133.0/255 alpha:1.0];
}

- (void)unSelectedStyle
{
    self.statusLine.backgroundColor = [UIColor whiteColor];
}

- (void)selectSegmentItem:(UITapGestureRecognizer *)gesture
{
    if (self.tapSegmentItem) {
        self.tapSegmentItem(self.selected);
    }
}

@end
