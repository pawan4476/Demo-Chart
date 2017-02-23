//
//  ViewController.m
//  Demo Chart
//
//  Created by Nagam Pawan on 12/6/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TKChart *chart = [[TKChart alloc] initWithFrame:CGRectInset(self.view.bounds, 15, 15)];
    chart.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:chart];
    
    NSMutableArray *randomNumericData = [[NSMutableArray alloc]init];
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 100; j++) {
        
        [randomNumericData addObject:[[TKChartDataPoint alloc] initWithX:@(i) Y:@(j)]];
        
    }
        
    }
    
    [chart addSeries:[[TKChartLineSeries alloc] initWithItems:randomNumericData]];
    chart.title.hidden = NO;
    chart.title.text = @"Demo Chart";
    chart.legend.hidden = NO;
    chart.allowAnimations = YES;

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
