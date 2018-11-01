//
//  SegmentItem.h
//  ATAW
//
//  Created by 蔡享 on 2018/10/26.
//  Copyright © 2018年 蔡享. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^tapSegmentItem) (BOOL selected);
@interface SegmentItem : UIView

@property (nonatomic,copy) tapSegmentItem tapSegmentItem;
@property (nonatomic,assign) BOOL selected;
@property (nonatomic,strong) NSString *title;
@property (nonatomic,assign) NSInteger segmentIndex;
@end

NS_ASSUME_NONNULL_END
