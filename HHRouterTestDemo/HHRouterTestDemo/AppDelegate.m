//
//  AppDelegate.m
//  HHRouterTestDemo
//
//  Created by admin on 17/3/8.
//  Copyright © 2017年 thomas. All rights reserved.
//


#import "AppDelegate.h"
#import <HHRouter.h>
#import "UserBViewController.h"
#import "UserCControllerViewController.h"
#import "UserDViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[HHRouter shared] map:kHHRouterUserBViewControllerName
         toControllerClass:NSClassFromString(kHHRouterUserBViewControllerName)];
    [[HHRouter shared] map:[NSString stringWithFormat:@"/%@/:userId/:name/",kHHRouterUserCViewControllerName]
         toControllerClass:NSClassFromString(kHHRouterUserCViewControllerName)];
    [[HHRouter shared] map:kHHRouterUserDViewControllerName
         toControllerClass:NSClassFromString(kHHRouterUserDViewControllerName)];
    
    
    [[HHRouter shared] map:[NSString stringWithFormat:@"/%@/add/?a=2",kHHRouterUserDViewControllerName] toBlock:^id(NSDictionary *params) {
        NSLog(@"parame::::::::%@",params);
        return params[@"route"];
    }];
    
    HHRouterBlock block = [[HHRouter shared] matchBlock:[NSString stringWithFormat:@"/%@/add/?a=2",kHHRouterUserDViewControllerName]];
    NSLog(@":::::::%@",block);
    
    NSLog(@":dfs:::::%@",[[HHRouter shared] callBlock:[NSString stringWithFormat:@"/%@/add/?a=2",kHHRouterUserDViewControllerName]]);
    
    return YES;
    
}

@end
