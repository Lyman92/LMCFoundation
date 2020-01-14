#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "LMCFoundation.h"
#import "CategoryHeaders.h"
#import "NSData+lmclibs.h"
#import "NSString+lmclibs.h"
#import "NSURL+lmclibs.h"
#import "UIView+lmclibs.h"

FOUNDATION_EXPORT double LMCFoundationVersionNumber;
FOUNDATION_EXPORT const unsigned char LMCFoundationVersionString[];

