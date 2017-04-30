//
//  LineChartView.h
//  XLLineChart
//
//  Created by LXL on 2017/4/30.
//  Copyright © 2017年 com.cnit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LineChartPoint.h"

@interface LineChartView : UIView
/** 折线转折点数组 */
@property (nonatomic, strong) NSMutableArray<LineChartPoint *> *pointArray;
/** 开始绘制折线图 */
- (void)startDrawlineChart;
@end
