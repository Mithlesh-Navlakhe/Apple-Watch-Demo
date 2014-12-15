//
//  CustomizeController.m
//  WatchApp
//
//  Created by Company on 05/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import "CustomizeController.h"
#import "WatchSingleton.h"

@interface CustomizeController ()

@end

@implementation CustomizeController

@synthesize selImg;
@synthesize frtBt, secBt, thrdBt;
@synthesize frtImg, secImg, thrdImg;

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
    NSLog(@"product type is %@",obj.customize);
}

- (void)didDeactivate {
    // This method is called when the controller is no longer visible.
    NSLog(@"%@ did deactivate", self);
}

- (IBAction) firstTab {
    
    WatchSingleton *obj = [WatchSingleton sharedManager];
    
    obj.price=@"$4.44";
    
    
    if (obj.imgFlag) {
        [self.frtImg setImageNamed:nil];
        [self.secImg setImageNamed:nil];
        [self.thrdImg setImageNamed:nil];
        obj.imgFlag=FALSE;
    }else {
        [self.frtImg setImageNamed:@"05"];
        [self.secImg setImageNamed:nil];
        [self.thrdImg setImageNamed:nil];
        obj.imgFlag=TRUE;
        double delayInSeconds = 1.0;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            
            [self presentControllerWithName:@"amountController" context:nil];
            
        });
    }
}

- (IBAction) secondTab {
    
    WatchSingleton *obj = [WatchSingleton sharedManager];
    
    obj.price=@"$3.04";
    
    if (obj.imgFlag) {
        [self.frtImg setImageNamed:nil];
        [self.secImg setImageNamed:nil];
        [self.thrdImg setImageNamed:nil];
        obj.imgFlag=FALSE;
    }else {
        [self.frtImg setImageNamed:nil];
        [self.secImg setImageNamed:@"05"];
        [self.thrdImg setImageNamed:nil];
        obj.imgFlag=TRUE;
        double delayInSeconds = 1.0;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            
            [self presentControllerWithName:@"amountController" context:nil];
            
        });
    }
    
    //[self presentControllerWithName:@"amountController" context:nil];
}

- (IBAction) thirdTab {
    
    WatchSingleton *obj = [WatchSingleton sharedManager];

    obj.price=@"$2.55";
    
    if (obj.imgFlag) {
        [self.frtImg setImageNamed:nil];
        [self.secImg setImageNamed:nil];
        [self.thrdImg setImageNamed:nil];
        obj.imgFlag=FALSE;
    }else {
        [self.frtImg setImageNamed:nil];
        [self.secImg setImageNamed:nil];
        [self.thrdImg setImageNamed:@"05"];
        obj.imgFlag=TRUE;
        double delayInSeconds = 1.0;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            
            [self presentControllerWithName:@"amountController" context:nil];
            
        });
    }
    //[self presentControllerWithName:@"amountController" context:nil];
}
@end
