//
//  ViewController.m
//  Flora Digby
//
//  Created by Jeremy Shapiro on 2/15/15.
//  Copyright (c) 2015 Chicago Smart Business Solutions. All rights reserved.
//

#import "ViewController.h"
#import "MZTimerLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    //[components setWeekday:21]; // Monday
    //[components setWeekdayOrdinal:1]; // The first Monday in the month
    [components setDay:24];
    [components setMonth:2]; // May
    [components setYear:2015];
    //[components setHour:0];
    [components setMinute:1];
    //NSTimeZone *cst = [NSTimeZone timeZoneWithName:@"UTC"];
    //[components setTimeZone:cst];
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    [gregorian setTimeZone:[NSTimeZone timeZoneWithName:@"UTC"]];
    NSDate *date = [gregorian dateFromComponents:components];
    
    
    
    
    
    
    
    
    timerExample5 = [[MZTimerLabel alloc] initWithLabel:_lblTimerExample5 andTimerType:MZTimerLabelTypeTimer];
    //[timerExample5 setCountDownTime:30*60];
    [timerExample5 setCountDownToDate:date];
    [timerExample5 start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
