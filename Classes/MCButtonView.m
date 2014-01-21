//
//  MCButtonView.m
//  Flat Coffee
//
//  Created by Baglan on 5/19/13.
//  Copyright (c) 2013 MobileCreators. All rights reserved.
//

#import "MCButtonView.h"

@interface MCButtonView ()

@property (nonatomic, assign) BOOL depressed;
@property (nonatomic, copy) void (^block)(void);

@end

@implementation MCButtonView

+ (MCButtonView *)wrapView:(UIView *)view block:(void (^)())block
{
    CGRect frame = view.frame;
    UIView * superView = view.superview;
    
    // Create a MCButtonView with the dimensions of the original view
    MCButtonView * buttonView = [[MCButtonView alloc] initWithFrame:frame];
    buttonView.block = block;
    [view removeFromSuperview];
    frame.origin = CGPointZero;
    view.frame = frame;
    
    // Replace existing view with the new MCButtonView
    [buttonView addSubview:view];
    [superView addSubview:buttonView];
    
    return buttonView;
}

- (void)tapped
{
    _block();
}

- (void)setDepressed:(BOOL)depressed
{
    _depressed = depressed;
    self.alpha = _depressed ? 0.6 : 1.0;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _depressed = NO;
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.depressed = YES;
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.depressed = NO;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self tapped];
    self.depressed = NO;
}

@end
