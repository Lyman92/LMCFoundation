//
//  NSURL+lmclibs.m
//  LMCFoundation
//
//  Created by lyman on 2020/1/11.
//

#import "NSURL+lmclibs.h"


@implementation NSURL (lmclibs)

+ (NSString*)queryStringFromDict: (NSDictionary <NSString*, NSString*>*)queryDict {
    NSURLComponents *urlComponents = [NSURLComponents new];
    NSMutableArray *arrURLCompnent = [NSMutableArray array];
    if (queryDict) {
        for (NSString* key in queryDict.allKeys) {
            NSURLQueryItem *item = [NSURLQueryItem queryItemWithName:key value:queryDict[key]];
            [arrURLCompnent addObject: item];
        }
    }
    [urlComponents setQueryItems:arrURLCompnent];
    return urlComponents.query;
}

@end
