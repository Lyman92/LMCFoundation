//
//  UIView+lmclibs.m
//  LMCLibs
//
//  Created by lyman on 2019/12/26.
//  Copyright © 2019 lyman. All rights reserved.
//

#import "UIView+lmclibs.h"

#if !TARGET_OS_IOS
#import <AppKit/AppKit.h>
#endif


@implementation UIView (lmclibs)

- (void) lc_removeAllSubviews {
    while (self.subviews.count) {
        [self.subviews.lastObject removeFromSuperview];
    }
}

- (CGFloat)lc_left {
    return self.frame.origin.x;
}

- (void)setLc_left:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)lc_top {
    return self.frame.origin.y;
}

- (void)setLc_top:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)lc_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setLc_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)lc_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setLc_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)lc_width {
    return self.frame.size.width;
}

- (void)setLc_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)lc_height {
    return self.frame.size.height;
}

- (void)setLc_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)lc_centerX {
    return self.center.x;
}

- (void)setLc_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)lc_centerY {
    return self.center.y;
}

- (void)setLc_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGPoint)lc_origin{
    return self.frame.origin;
}

- (void)setLc_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)lc_size {
    return self.frame.size;
}

- (void)setLc_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

@end
