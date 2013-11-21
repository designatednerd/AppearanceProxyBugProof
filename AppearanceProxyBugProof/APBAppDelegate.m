//
//  APBAppDelegate.m
//  AppearanceProxyBugProof
//
//  Created by Ellen Shapiro on 11/21/13.
//  Copyright (c) 2013 Vokal. All rights reserved.
//

#import "APBAppDelegate.h"

@import MessageUI;

@implementation APBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self styleApp];
    return YES;
}


- (void)styleApp
{
    // Set a custom style for navigation bars
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName: [UIFont fontWithName:@"MarkerFelt-Wide" size:20.0f],
                                                           NSForegroundColorAttributeName: [UIColor whiteColor]}];
    [[UINavigationBar appearance] setBarStyle:UIBarStyleBlack];
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:226.0/255.0 green:83.0/255.0 blue:82.0/255.0 alpha:1]];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //Attempt to undo that style for Message/Mail Compose View Controller
    [[UINavigationBar appearanceWhenContainedIn:[MFMailComposeViewController class], [MFMessageComposeViewController class], nil] setBarTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearanceWhenContainedIn:[MFMailComposeViewController class], [MFMessageComposeViewController class], nil] setTintColor:nil];
    [[UINavigationBar appearanceWhenContainedIn:[MFMailComposeViewController class], [MFMessageComposeViewController class], nil] setTitleTextAttributes:nil];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
