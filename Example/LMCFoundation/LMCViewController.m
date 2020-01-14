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
    NSString *queryStr = [NSURL queryStringFromObject:self];
    if(queryStr){
        NSLog(@"aaaaaaaaaa");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
