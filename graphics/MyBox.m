//
//  MyBox.m
//  graphics
//
//  Created by ginger on 8/12/2015.
//  Copyright © 2015 test. All rights reserved.
//

#import "MyBox.h"
#import "MyImageView.h"

@interface MyBox ()
@property (strong)NSMutableArray * array;

@property (strong)NSMutableArray * imgs;
@end

@implementation MyBox

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];



    for (NSImageView * view in self.imgs) {
        [view removeFromSuperview];
    }

    for (NSView * view in self.array) {
        NSRect frameToWindow = [view convertRect:view.bounds toView:nil];
        NSData * btnData = [view dataWithPDFInsideRect:view.bounds];
        MyImageView * btnImage = [[MyImageView alloc] init];
        btnImage.image = [[NSImage alloc] initWithData:btnData];
        btnImage.frame = frameToWindow;
        [self addSubview:btnImage];
        [self.imgs addObject:btnImage];

    }


   

    // Drawing code here.
}

- (void)addView:(NSView *)view
{
    if (!self.array) {
        self.array = [NSMutableArray array];
        self.imgs = [NSMutableArray array];
    }

    [self.array addObject:view];
    [self setNeedsDisplay:YES];
}
@end
