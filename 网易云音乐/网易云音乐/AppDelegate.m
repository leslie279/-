//
//  AppDelegate.m
//  网易云音乐
//
//  Created by 陈培旺 on 2019/7/23.
//  Copyright © 2019 ABC. All rights reserved.
//

#import "AppDelegate.h"
#import "VCMy.h"
#import "VCFind.h"
#import "VCVideo.h"
#import "VCAccount.h"
#import "VCFriends.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
   
    [self.window makeKeyAndVisible];
    
    VCFind* myFind = [[VCFind alloc] init];
    VCVideo* myVideo = [[VCVideo alloc] init];
    VCMy* myMusic = [[VCMy alloc] init];
    VCFriends* myFriends = [[VCFriends alloc] init];
    VCAccount* myAccount = [[VCAccount alloc] init];
    
    myFind.title = @"发现";
    myVideo.title = @"视频";
    myMusic.title = @"我的";
    myFriends.title = @"朋友";
    //myAccount.title = @"帐号";
    
    //myAccount.navigationItem.title = @"我的帐号";
    myMusic.navigationItem.title = @"我的音乐";
    
    myFind.view.backgroundColor = [UIColor whiteColor];
    myVideo.view.backgroundColor = [UIColor whiteColor];
    myMusic.view.backgroundColor = [UIColor whiteColor];
    myFriends.view.backgroundColor = [UIColor whiteColor];
    myAccount.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController* myAccountNav = [[UINavigationController alloc] initWithRootViewController: myAccount];
    UINavigationController* myMusicNav = [[UINavigationController alloc]initWithRootViewController:myMusic];
    UITabBarController* tbc = [[UITabBarController alloc] init];
    NSArray* array = [NSArray arrayWithObjects:myFind, myVideo, myMusicNav, myFriends, myAccountNav, nil];
    
    tbc.viewControllers = array;
    
    tbc.tabBar.translucent = YES;
    
    //去除分栏控制器的分割线
    tbc.tabBar.clipsToBounds = YES;
    
    tbc.tabBar.barTintColor = [UIColor whiteColor];
    
    myMusicNav.navigationBar.barTintColor = [UIColor whiteColor];
    
    myAccountNav.navigationBar.barTintColor = [UIColor whiteColor];
    
    myAccountNav.navigationBar.translucent = NO;
    
    self.window.rootViewController = tbc;
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
