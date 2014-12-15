//
//  AmountController.m
//  WatchApp
//
//  Created by Sandeep Prajapat on 08/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import "AmountController.h"
#import "WatchSingleton.h"


@interface AmountController ()

@end

@implementation AmountController

@synthesize itemLb, priceLb, totalLb;

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    
    if (self) {
        // Initialize variables here.
        // Configure interface objects here.
    }
    return self;
}

- (void)willActivate {
    // This method is called when the controller is about to be visible to the wearer.
    //[self.prodImg setImageNamed:self.size];
    WatchSingleton *obj = [WatchSingleton sharedManager];
    obj.imgFlag = FALSE;
    [self.itemLb setText:obj.productType];
    [self.priceLb setText:obj.price];
    [self.totalLb setText:obj.price];

    
}

- (void)didDeactivate {
    // This method is called when the controller is no longer visible.
    NSLog(@"%@ did deactivate", self);
}

- (IBAction) payTab {
    [self presentControllerWithName:@"homeController" context:nil];

}


@end
