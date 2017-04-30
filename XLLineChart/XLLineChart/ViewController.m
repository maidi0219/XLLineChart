//
//  ViewController.m
//  XLLineChart
//
//  Created by LXL on 2017/4/30.
//  Copyright © 2017年 com.cnit. All rights reserved.
//

#import "ViewController.h"
#import "LineChartView.h"

@interface ViewController ()
/** 折线图 */
@property (nonatomic, strong) LineChartView *lineCharView;
/** 开始绘制折线图按钮 */
@property (nonatomic, strong) UIButton *drawLineChartButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lineCharView = [[LineChartView alloc] initWithFrame:CGRectMake(15, 164, 340, 170)];
    self.lineCharView.pointArray = [NSMutableArray new];
    for (int i = 0; i<7; i++) {
        LineChartPoint *model = [LineChartPoint pointWithX:i+1 andY:arc4random_uniform(2)+i];
        [self.lineCharView.pointArray  addObject:model];
    }
    [self.view addSubview:self.lineCharView];
    self.drawLineChartButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.drawLineChartButton.frame = CGRectMake(180, 375, 50, 44);
    [self.drawLineChartButton setTitle:@"开始" forState:UIControlStateNormal];
    [self.drawLineChartButton addTarget:self action:@selector(drawLineChart) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.drawLineChartButton];
 
}
//开始按钮的点击事件
// 开始绘制折线图
- (void)drawLineChart {
    [self.lineCharView startDrawlineChart];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
