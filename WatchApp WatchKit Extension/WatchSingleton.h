//
//  WatchSingleton.h
//  WatchApp
//
//  Created by Sandeep Prajapat on 11/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WatchSingleton : NSObject

+ (id)sharedManager;

@property (nonatomic, strong) NSMutableArray *container;

@property (nonatomic, strong) NSString *product;
@property (nonatomic, strong) NSString *productType;
@property (nonatomic, strong) NSString *size;
@property (nonatomic, strong) NSString *customize;
@property (nonatomic, strong) NSString *price;

@property (nonatomic) BOOL imgFlag;

@end
