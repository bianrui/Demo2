//
//  CustomView.h
//  Demo2
//
//  Created by bianruifeng on 2017/7/13.
//  Copyright © 2017年 bianruifeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView
/**
 *  设置View的大小及位置
 */
- (CustomView *(^)(CGRect))viewFrame;

/**
 *  设置View的颜色
 */
- (CustomView *(^)(UIColor *))ViewColor;

/**
 *  仿造Masonry
 *
 *  @param block 对View的处理
 *
 *  @return UIView
 */
+ (UIView *) makeCustomView:(void (^)(CustomView *))block;


@end
