//
//  UserCControllerViewController.m
//  HHRouterTestDemo
//
//  Created by admin on 17/3/8.
//  Copyright © 2017年 thomas. All rights reserved.
//

#import "UserCControllerViewController.h"

#import <HHRouter.h>
@interface UserCControllerViewController ()

@end

@implementation UserCControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"userId::::::::::%@",self.params[@"userId"]);
    NSLog(@"userId::::::::::%@",self.params[@"name"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
