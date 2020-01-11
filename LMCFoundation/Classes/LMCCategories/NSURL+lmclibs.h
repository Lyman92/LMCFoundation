//
//  NSURL+lmclibs.h
//  LMCFoundation
//
//  Created by lyman on 2020/1/11.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURL (lmclibs)

+ (NSString*)queryStringFromDict: (NSDictionary <NSString*, NSString*>*)queryDict;

@end

NS_ASSUME_NONNULL_END
