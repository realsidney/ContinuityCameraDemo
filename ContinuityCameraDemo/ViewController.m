//
//  ViewController.m
//  ContinuityCameraDemo
//
//  Created by sidney on 2019/5/6.
//  Copyright © 2019 sidney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<NSServicesMenuRequestor>
@property (weak) IBOutlet NSImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)rightMouseDown:(NSEvent *)event {
    
//    NSEvent *event = [NSApplication sharedApplication].currentEvent;
    [self.view.window makeFirstResponder:self];
    [NSMenu popUpContextMenu:self.view.window.menu withEvent:event forView:self.view];
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (BOOL)readSelectionFromPasteboard:(NSPasteboard *)pboard {
    self.imageView.image = [[NSImage alloc] initWithPasteboard:pboard];
    return true;
}

- (id)validRequestorForSendType:(NSPasteboardType)sendType returnType:(NSPasteboardType)returnType {
//        [NSImage.imageTypes containsObject:returnType];
    return self;
}

@end
