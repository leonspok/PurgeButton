//
//  AppDelegate.h
//  PurgeButton
//
//  Created by Игорь Савельев on 03.02.13.
//  Copyright (c) 2013 Игорь Савельев. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    IBOutlet NSMenu *PurgeButton;
    NSStatusItem *PurgeCommand;
}

- (IBAction)Purge:(id)sender;

@property (assign) IBOutlet NSWindow *window;

@end
