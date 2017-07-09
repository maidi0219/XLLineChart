//
//  LineChartPoint.h
//  XLLineChart
//
//  Created by LXL on 2017/4/30.
//  Copyright © 2017年 com.cnit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LineChartPoint : NSObject
/** x轴偏移量 */
@property (nonatomic, assign) float x;
/** y轴偏移量 */
@property (nonatomic, assign) float y;
/** 工厂方法 */
+ (instancetype)pointWithX:(float)x andY:(float)y;
/////one
//时间还是觉得克赖斯基都流口水
@end
