//
//  AppDelegate.m
//  HETOpenSDKDemo
//
//  Created by mr.cao on 16/1/21.
//  Copyright © 2016年 mr.cao. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <HETOpenSDK/HETOpenSDK.h>


#define ktestAPPID @"30048"
#define ktestAPPSECRET @"9e0ab42cc3b54fca8c56affa6be059cf"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [HETOpenSDK registerAppId:@"30284" appSecret:@"331dcf8e1c5a4a13bded9eb521c2934c"];

    ViewController *rootvc=[[ViewController alloc]init];
    
    UINavigationController * rootNav = [[UINavigationController alloc] initWithRootViewController:rootvc];
    self.window.rootViewController = rootNav;
    [self.window makeKeyAndVisible];
    [UINavigationBar appearance].barTintColor =[UIColor colorWithRed:255.f/255.f green:115.f/255.f blue:181.f/255.f alpha:1];
    [UINavigationBar appearance].translucent=NO;
    [UINavigationBar appearance].titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor],
                                                         NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 17]};
    


    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
