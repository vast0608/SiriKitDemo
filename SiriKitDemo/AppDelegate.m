//
//  AppDelegate.m
//  SiriKitDemo
//
//  Created by 李晓璐 on 2018/2/9.
//  Copyright © 2018年 onmmc. All rights reserved.
//

#import "AppDelegate.h"
#import <Intents/Intents.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray *restorableObjects))restorationHandler {
    
    if ([userActivity.interaction.intent isKindOfClass:[INSendMessageIntent class]]) {
        INSendMessageIntent *intent = (INSendMessageIntent *)(userActivity.interaction.intent);
        NSLog(@"%@",[[intent.recipients lastObject] displayName]);
    }
    
    return YES;
}
@end
