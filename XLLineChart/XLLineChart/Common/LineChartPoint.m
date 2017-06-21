//
//  LineChartPoint.m
//  XLLineChart
//
//  Created by LXL on 2017/4/30.
//  Copyright © 2017年 com.cnit. All rights reserved.
//

#import "LineChartPoint.h"

@implementation LineChartPoint

+ (instancetype)pointWithX:(float)x andY:(float)y {
    LineChartPoint *point = [[self alloc] init];
    point.x = x;
    point.y = y;
    return point;
}

@end
