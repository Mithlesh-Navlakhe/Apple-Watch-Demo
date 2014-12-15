//
//  SizeViewController.m
//  WatchApp
//
//  Created by Company on 04/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import "SizeViewController.h"
#import "WatchSingleton.h"

@interface SizeViewController ()

// Initialization of IBoutlet
@property (weak, nonatomic) IBOutlet WKInterfaceImage *prodImg;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *cupSize;
@property (weak, nonatomic) NSString *selectedSize;

// Initialization of member variable.
@property (strong, nonatomic) NSString *size;

@end

@implementation SizeViewController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    
    if (self) {
        // Initialize variables here.
        // Configure interface objects here.
         switch ([context integerValue]) {
         case 1:
         {
             self.size = @"Size";
             [self.cupSize setText:@"Full"];
             self.selectedSize = @"Full";
         }
         break;
         case 2:
         {
             self.size = @"Size";
             [self.cupSize setText:@"Medium"];
             self.selectedSize = @"Medium";
         }
         break;
         case 3:
         {
             self.size = @"Size";
             [self.cupSize setText:@"Small"];
             self.selectedSize = @"Small";
         }
         break;
         default:
         {
             self.size = @"Size";
             [self.cupSize setText:@"Medium"];
             self.selectedSize = @"Full";
         }
         break;
         }
         
    }
    return self;
}

- (void)willActivate {
    // This method is called when the controller is about to be visible to the wearer.
    
    WatchSingleton *obj = [WatchSingleton sharedManager];
    NSLog(@"product type is %@",obj.productType);
    
    [self.prodImg setImageNamed:self.size];
}

- (void)didDeactivate {
    // This method is called when the controller is no longer visible.
    NSLog(@"%@ did deactivate", self);
}

- (IBAction)sizeTab {
    WatchSingleton *obj = [WatchSingleton sharedManager];
    obj.customize = self.selectedSize;
    [self presentControllerWithName:@"customizeController" context:nil];
}

@end
