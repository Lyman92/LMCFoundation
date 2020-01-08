//
//  NSData+lmclibs.h
//  LMCLibs
//
//  Created by lyman on 2019/12/26.
//  Copyright © 2019 lyman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (lmclibs)

+ (NSData *)dataFromJsonFile:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
