//
//  AppDelegate.m
//  graphics
//
//  Created by ginger on 8/12/2015.
//  Copyright © 2015 test. All rights reserved.
//

#import "AppDelegate.h"
#import "MyBox.h"
@interface AppDelegate ()
@property (weak) IBOutlet MyBox *box;
@property (weak) IBOutlet NSButton *button;

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

//    NSRect frameToWindow = [self.button convertRect:self.button.bounds toView:nil];
//    NSData * btnData = [self.button dataWithPDFInsideRect:self.button.bounds];
//    NSImageView * btnImage = [[NSImageView alloc] init];
//    btnImage.image = [[NSImage alloc] initWithData:btnData];
//    btnImage.frame = frameToWindow;
//    [self.box addSubview:btnImage];

    [self.box addView:self.button];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
