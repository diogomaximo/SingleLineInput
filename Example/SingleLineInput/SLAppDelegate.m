//
//  SLAppDelegate.m
//  SingleLineInput
//
//  Created by CocoaPods on 03/03/2015.
//  Copyright (c) 2014 Diogo Maximo. All rights reserved.
//

#import "SLAppDelegate.h"
#import "SingleLineTextField.h"
@implementation SLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self.window makeKeyAndVisible];
    
    [[SingleLineTextField appearance] setLineDisabledColor:[UIColor colorWithRed:0.6588235294 green:0.6588235294 blue:0.6588235294 alpha:1]];
    [[SingleLineTextField appearance] setLineSelectedColor:[UIColor colorWithRed:0.1960784314 green:0.6 blue:0.8 alpha:1]];
    [[SingleLineTextField appearance] setInputPlaceHolderColor:[UIColor colorWithRed:0.65 green:0.65 blue:0.65 alpha:1]];
    [[SingleLineTextField appearance] setInputFont:[UIFont boldSystemFontOfSize:13]];
    [[SingleLineTextField appearance] setPlaceHolderFont:[UIFont boldSystemFontOfSize:13]];
    return YES;
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
