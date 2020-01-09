//
//  NSData+lmclibs.m
//  LMCLibs
//
//  Created by lyman on 2019/12/26.
//  Copyright © 2019 lyman. All rights reserved.
//

#import "NSData+lmclibs.h"

@implementation NSData (lmclibs)

+ (NSData *)dataFromJsonFile:(NSString *)fileName {
    NSString *path = [NSBundle.mainBundle pathForResource: fileName ofType:@"json"];
    NSURL *url = [NSURL fileURLWithPath: path];
    NSData *data = [NSData dataWithContentsOfURL: url];
    return data;
}

@end
