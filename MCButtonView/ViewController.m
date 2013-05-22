//
//  ViewController.m
//  MCButtonView
//
//  Created by Baglan on 5/22/13.
//  Copyright (c) 2013 MobileCreators. All rights reserved.
//

#import "ViewController.h"
#import "MCButtonView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [MCButtonView wrapView:_buttonView block:^{
        NSLog(@"Tap!");
    }];
}

@end
