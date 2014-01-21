//
//  MCButtonView.h
//  Flat Coffee
//
//  Created by Baglan on 5/19/13.
//  Copyright (c) 2013 MobileCreators. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCButtonView : UIView

+ (MCButtonView *)wrapView:(UIView *)view block:(void (^)())block;
- (void)tapped;

@end
