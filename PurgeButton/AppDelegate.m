//
//  AppDelegate.m
//  PurgeButton
//
//  Created by Игорь Савельев on 03.02.13.
//  Copyright (c) 2013 Игорь Савельев. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window;

- (void)awakeFromNib
{
    PurgeCommand = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    [PurgeCommand setTitle: @"P"];
    [PurgeCommand setMenu: PurgeButton];
    [PurgeCommand setHighlightMode:YES];
}

- (IBAction)Purge:(id)sender
{
    NSTask *task;
    task = [[NSTask alloc] init];
    [task setLaunchPath: @"/usr/bin/purge"];
    
    [task launch];
}

@end
