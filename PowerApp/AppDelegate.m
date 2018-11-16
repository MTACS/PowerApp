//
//  AppDelegate.m
//  PowerApp
//
//  Created by Derek Foresman on 11/16/18.
//  Copyright © 2018 MTAC Research. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] setDelegate:self];
    
}

- (BOOL)userNotificationCenter:(NSUserNotificationCenter *)center shouldPresentNotification:(NSUserNotification *)notification {
    
    return YES;
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
