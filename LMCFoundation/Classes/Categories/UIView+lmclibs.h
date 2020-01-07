//
//  UIView+lmclibs.h
//  LMCLibs
//
//  Created by lyman on 2019/12/26.
//  Copyright © 2019 lyman. All rights reserved.
//
#if !TARGET_OS_IOS
#import <AppKit/AppKit.h>
#endif

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (lmclibs)

#pragma mark - properties
@property (nonatomic) CGFloat lc_left;        ///< Shortcut for frame.origin.x.
@property (nonatomic) CGFloat lc_top;         ///< Shortcut for frame.origin.y
@property (nonatomic) CGFloat lc_right;       ///< Shortcut for frame.origin.x + frame.size.width
@property (nonatomic) CGFloat lc_bottom;      ///< Shortcut for frame.origin.y + frame.size.height
@property (nonatomic) CGFloat lc_width;       ///< Shortcut for frame.size.width.
@property (nonatomic) CGFloat lc_height;      ///< Shortcut for frame.size.height.
@property (nonatomic) CGFloat lc_centerX;     ///< Shortcut for center.x
@property (nonatomic) CGFloat lc_centerY;     ///< Shortcut for center.y
@property (nonatomic) CGPoint lc_origin;      ///< Shortcut for frame.origin.
@property (nonatomic) CGSize  lc_size;        ///< Shortcut for frame.size.


- (void) lc_removeAllSubviews;

@end

NS_ASSUME_NONNULL_END
