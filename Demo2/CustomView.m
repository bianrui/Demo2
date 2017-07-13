//
//  CustomView.m
//  Demo2
//
//  Created by bianruifeng on 2017/7/13.
//  Copyright © 2017年 bianruifeng. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (CustomView *(^)(CGRect))viewFrame {
    return ^CustomView *(CGRect frame) {
        self.frame = frame;
        return self;
    };
    
}

- (CustomView *(^)(UIColor *))ViewColor {
    return ^CustomView *(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

+ (UIView *)makeCustomView:(void (^)(CustomView *))block {
    CustomView *view = [[CustomView alloc] init];
    block(view);
    return view;
}


@end
