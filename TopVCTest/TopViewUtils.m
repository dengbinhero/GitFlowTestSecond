//
//  TopViewUtils.m
//  TopVCTest
//
//  Created by Dengshengbin on 14-12-10.
//  Copyright (c) 2014年 Dengshengbin. All rights reserved.
//

#import "TopViewUtils.h"

@implementation TopViewUtils

+ (UIViewController *)getTopViewController
{
    UIView *subView = [[[[UIApplication sharedApplication] keyWindow] subviews] lastObject];
    
    NSLog(@"array : %@", [[[UIApplication sharedApplication] keyWindow] subviews]);
    
    if (subView) {
     
        UIResponder *next = subView.nextResponder;
        while (next != nil) {
        
           if ([next isKindOfClass:[UIViewController class]]) {
                
                return (UIViewController *)next;
            }
            
            next = next.nextResponder;
        }
    }
    
    return nil;
}

@end
