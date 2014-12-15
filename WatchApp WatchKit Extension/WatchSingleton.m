//
//  WatchSingleton.m
//  WatchApp
//
//  Created by Sandeep Prajapat on 11/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import "WatchSingleton.h"

@implementation WatchSingleton

@synthesize container;
@synthesize product, productType, size, customize, price;
@synthesize imgFlag;

+ (id)sharedManager {
    static WatchSingleton *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        container = [NSMutableArray array];
        
        NSArray *coffList = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"CoffeeData" ofType:@"plist"]];
        NSArray *teaList = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"TeaData" ofType:@"plist"]];
        NSArray *cakeList = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"CakeData" ofType:@"plist"]];
        [container addObject:coffList];
        [container addObject:teaList];
        [container addObject:cakeList];
        
        imgFlag=FALSE;
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}


@end
