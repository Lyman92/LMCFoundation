//
//  LMCViewController.m
//  LMCFoundation
//
//  Created by Lyman on 01/07/2020.
//  Copyright (c) 2020 Lyman. All rights reserved.
//

#import "LMCViewController.h"
#import <LMCFoundation/LMCFoundation.h>

@interface LMCViewController ()

@end

@implementation LMCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *queryStr = @"lclibs://PushVC/RouterVC?property2={aaa:bbb}&property1=呵呵呵呵";
    
    NSString *str2 = [self encodeURL:queryStr];
    
    NSURLComponents *components = [NSURLComponents componentsWithString:str2];
    
    NSString *str3 = components.query.stringByRemovingPercentEncoding;
    NSLog(@"=====");
    
    NSDictionary *dictQueryItem = components.queryItemAsDict;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSString*) encodeURL:(NSString*) unescapedString {
    
    NSString *escapedUrlString = [unescapedString stringByAddingPercentEncodingWithAllowedCharacters: [NSCharacterSet characterSetWithCharactersInString:@"!$&'()*+,-./:;=?@_~%#[]"]];
    return escapedUrlString;
    
}

@end
