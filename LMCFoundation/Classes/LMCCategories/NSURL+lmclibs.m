//
//  NSURL+lmclibs.m
//  LMCFoundation
//
//  Created by lyman on 2020/1/11.
//

#import "NSURL+lmclibs.h"
#import <objc/runtime.h>


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

+ (NSString*)queryStringFromObject: (NSObject*)obj {
    NSURLComponents *urlComponents = [NSURLComponents new];
    NSMutableArray *arrQueryItem = [NSMutableArray array];
    unsigned int outCount = 0;
    objc_property_t * properties = class_copyPropertyList(obj.class , &outCount);
    for (int index = 0; index < outCount; index++) {
        objc_property_t property = properties[index];
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        NSString *value = [obj valueForKey:key];
        if (!value) continue;
        NSURLQueryItem *urlItem = [NSURLQueryItem queryItemWithName:key value:value];
        [arrQueryItem addObject:urlItem];
    }
    if (arrQueryItem.count) {
        [urlComponents setQueryItems:arrQueryItem];
    }
    return urlComponents.query;
}

@end
