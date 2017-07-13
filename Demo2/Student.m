//
//  Student.m
//  Demo1
//
//  Created by bianruifeng on 2017/7/13.
//  Copyright © 2017年 bianruifeng. All rights reserved.
//

#import "Student.h"

@implementation Student



int myEnergy;

-(Student *)wake
{
    myEnergy = 100;
    NSLog(@"起床时间，我的能量:%d",myEnergy);
    return self;
}
-(Student *)run
{
    NSLog(@"跑步");
    return self;
}
-(Student *(^)(NSString *foot))eatLaunch
{
    myEnergy -= 10;
    NSLog(@"午饭时间，我的能量:%d",myEnergy);
    return ^(NSString *foot){
        NSLog(@"==午餐我吃了：%@",foot);
        return self;
    };
}
-(Student *(^)())study
{
    myEnergy -= 50;
    NSLog(@"学习时间，我的能量:%d",myEnergy);
    return ^(){
        return self;
    };
}
-(Student *(^)(NSString *))eatDinner
{
    myEnergy -= 10;
    NSLog(@"晚饭时间，我的能量:%d",myEnergy);
    return ^(NSString *foot)
    {
        NSLog(@"==晚餐我吃了：%@",foot);
        return self;
    };
}

-(void(^)())toSleep
{
    myEnergy -= 20;
    NSLog(@"睡觉时间，我的能量:%d",myEnergy);
    return ^()
    {
        NSLog(@"==我睡觉了");
    };
}

@end
