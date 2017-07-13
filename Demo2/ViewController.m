//
//  ViewController.m
//  Demo2
//
//  Created by bianruifeng on 2017/7/13.
//  Copyright © 2017年 bianruifeng. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "CustomView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Hello, World!");
    
    Student *obj = [[Student alloc] init];
    [obj run].study;
    obj.run;//warning：返回了一个属性结果的值，但是没有被使用。
    [obj study];
    obj.wake.eatLaunch(@"馒头").study().eatDinner(@"米饭").toSleep();
    obj.wake.study();
    
    NSLog(@"Bye, World!");
    
    UIView *customView = [CustomView makeCustomView:^(CustomView *custom) {
        custom.viewFrame(CGRectMake(165, 300, 100, 100)).ViewColor([UIColor cyanColor]);
    }];
    [self.view addSubview:customView];
    CustomView *ob = [[CustomView alloc] init];
    ob.viewFrame(CGRectMake(100, 100, 100, 100)).ViewColor([UIColor blueColor]);
    [self.view addSubview:ob];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
