//
//  MyImageView.m
//  graphics
//
//  Created by ginger on 8/12/2015.
//  Copyright © 2015 test. All rights reserved.
//

#import "MyImageView.h"

@implementation MyImageView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];

    // round
    NSRect rect = NSMakeRect(5, 5, self.frame.size.width-10, self.frame.size.height-10); // leave space for shadow
    NSBezierPath* roundedRectanglePath = [NSBezierPath bezierPathWithRoundedRect:rect xRadius: 5 yRadius: 5];

    NSColor *strokeColor = [NSColor whiteColor];
    NSColor *fillColor = [NSColor clearColor];

    [strokeColor setStroke];
    [fillColor setFill];
    [roundedRectanglePath stroke];
    [roundedRectanglePath fill];


    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [NSColor colorWithSRGBRed:52.0/255 green:155.0/255 blue:257.0/255 alpha:0.8];
    shadow.shadowOffset = NSMakeSize(5, 5);
    shadow.shadowBlurRadius = 5;
    [self setShadow:shadow];
    // Drawing code here.
}

@end
