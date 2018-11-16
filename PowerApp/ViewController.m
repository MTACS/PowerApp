//
//  ViewController.m
//  PowerApp
//
//  Created by Derek Foresman on 11/16/18.
//  Copyright © 2018 MTAC Research. All rights reserved.
//

#import "ViewController.h"
#import "STPrivilegedTask.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    
    _statusField = [[NSTextField alloc] initWithFrame:CGRectMake(5, 2, 216, 17)];
    
    _statusField.alignment = NSTextAlignmentCenter;
    
    _statusField.textColor = [NSColor redColor];
    
    _statusField.backgroundColor = [NSColor clearColor];
    
    [_statusField setFont:[NSFont systemFontOfSize:10]];
    
    _statusField.editable = false;
    
    _statusField.selectable = false;
    
    _statusField.bezeled = false;
    
    _statusField.drawsBackground = false;
    
    [self.view addSubview:_statusField];
     
    */

}

- (IBAction)shutdown:(id)sender {
    
    STPrivilegedTask *shutdown = [[STPrivilegedTask alloc] init];
    
    [shutdown setLaunchPath:@"/sbin/halt"];
    
    [shutdown launch];
    
}

- (IBAction)systemUIServer:(id)sender {
    
    NSTask *task;
    
    task = [[NSTask alloc] init];
    
    [task setLaunchPath: @"/usr/bin/killall"];
    
    NSArray *arguments;
    
    arguments = [NSArray arrayWithObjects: @"-c", @"SystemUIServer", nil];
    
    [task setArguments: arguments];
    
    [task launch];
    
    [NSThread sleepForTimeInterval:3.0f];
    
    NSUserNotification *systemNotification = [[NSUserNotification alloc] init];
    
    systemNotification.title = @"PowerApp";
    
    systemNotification.informativeText = @"SystemUIServer has been killed";
    
    systemNotification.soundName = NSUserNotificationDefaultSoundName;
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:systemNotification];
    
}

- (IBAction)reboot:(id)sender {
    
    STPrivilegedTask *reboot = [[STPrivilegedTask alloc] init];
    
    [reboot setLaunchPath:@"/sbin/reboot"];
    
    [reboot launch];
    
}

- (IBAction)killFinder:(id)sender {
    
    NSTask *finder;
    
    finder = [[NSTask alloc] init];
    
    [finder setLaunchPath: @"/usr/bin/killall"];
    
    NSArray *arguments;
    
    arguments = [NSArray arrayWithObjects: @"-c", @"Finder", nil];
    
    [finder setArguments: arguments];
    
    [finder launch];
    
    [NSThread sleepForTimeInterval:3.0f];
    
    NSUserNotification *finderNotification = [[NSUserNotification alloc] init];
    
    finderNotification.title = @"PowerApp";
    
    finderNotification.informativeText = @"Finder has been killed";
    
    finderNotification.soundName = NSUserNotificationDefaultSoundName;
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:finderNotification];
    
}

- (IBAction)killDock:(id)sender {
    
    NSTask *dock;
    
    dock = [[NSTask alloc] init];
    
    [dock setLaunchPath: @"/usr/bin/killall"];
    
    NSArray *arguments;
    
    arguments = [NSArray arrayWithObjects: @"-c", @"Dock", nil];
    
    [dock setArguments: arguments];
    
    [dock launch];
    
    [NSThread sleepForTimeInterval:3.0f];
    
    NSUserNotification *dockNotification = [[NSUserNotification alloc] init];
    
    dockNotification.title = @"PowerApp";
    
    dockNotification.informativeText = @"Dock has been killed";
    
    dockNotification.soundName = NSUserNotificationDefaultSoundName;
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:dockNotification];
    
}

- (IBAction)logout:(id)sender {
    
    STPrivilegedTask *login = [[STPrivilegedTask alloc] init];
    
    [login setLaunchPath:@"/usr/bin/pkill"];
    
    [login setArguments:@[@"loginwindow"]];
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    
}


@end
