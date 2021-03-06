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

+ (NSString*)queryStringFromObject: (NSObject*)obj;

@end

@interface NSURLComponents (lmclibs)

@property (copy, nonatomic) NSDictionary *queryItemAsDict;

@end


NS_ASSUME_NONNULL_END
