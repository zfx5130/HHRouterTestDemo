//
//  UserAViewController.m
//  HHRouterTestDemo
//
//  Created by admin on 17/3/8.
//  Copyright © 2017年 thomas. All rights reserved.
//

#import "UserAViewController.h"
#import "UserBViewController.h"

#import <HHRouter.h>

@interface UserAViewController ()

@end

@implementation UserAViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Handlers

- (IBAction)pushUserBController:(UIButton *)sender {
    UIViewController *userBController = [[HHRouter shared] matchController:kHHRouterUserBViewControllerName];
    [self.navigationController pushViewController:userBController
                                         animated:YES];
}

- (IBAction)pushUserCController:(UIButton *)sender {
    UIViewController *userCController = [[HHRouter shared] matchController:[NSString stringWithFormat:@"/%@/1/zhangsan/?tabIndex=3",kHHRouterUserCViewControllerName]];
    [self.navigationController pushViewController:userCController
                                         animated:YES];
    NSLog(@"::::::%@",userCController.params[@"tabIndex"]);
}

- (IBAction)pushUserDController:(UIButton *)sender {
    
   // HHRouterBlock block = [[HHRouter shared] matchBlock:kHHRouterUserDViewControllerName];
   // NSLog(@"block::::::%@",block(@{@"name" : @"zhangsan"}));
    
    id userController = [[HHRouter shared] callBlock:kHHRouterUserDViewControllerName];
    //NSLog(@"::::::%@", userDController);
    UIViewController *userDController = [[HHRouter shared] matchController:(NSString *)userController];
    [self.navigationController pushViewController:userDController
                                         animated:YES];
}



@end
