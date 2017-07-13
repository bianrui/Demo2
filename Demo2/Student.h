//
//  Student.h
//  Demo1
//
//  Created by bianruifeng on 2017/7/13.
//  Copyright © 2017年 bianruifeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

-(Student *)run;

-(Student *)wake;

-(Student *(^)(NSString *foot))eatLaunch;

-(Student *(^)())study;

-(Student *(^)(NSString *foot))eatDinner;

-(void(^)())toSleep;


@end
