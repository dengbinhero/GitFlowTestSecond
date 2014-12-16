//
//  FirstViewController.m
//  TopVCTest
//
//  Created by Dengshengbin on 14-12-10.
//  Copyright (c) 2014年 Dengshengbin. All rights reserved.
//

#import "FirstViewController.h"
#import "TopViewUtils.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UIViewController *vc = [TopViewUtils getTopViewController];
    
    NSLog(@"className : %s", object_getClassName(vc));
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
