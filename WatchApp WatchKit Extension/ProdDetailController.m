//
//  ProdDetailController.m
//  WatchApp
//
//  Created by Company on 04/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import "ProdDetailController.h"
#import "WatchSingleton.h"

@interface ProdDetailController()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *pageLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *prodImg;
@property (strong, nonatomic) NSString *prodName;
@property (strong, nonatomic) NSString *selectProd;
@property (strong, nonatomic) NSDictionary *dict;
@property (strong, nonatomic) NSArray *elementsList;

@end

@implementation ProdDetailController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    
    if (self) {
        
        switch ([context integerValue]) {
            case 1:
            {
                self.prodName = @"1";
            }
                break;
            case 2:
            {
                self.prodName = @"2";
            }
                break;
            case 3:
            {
                self.prodName = @"3";
            }
                break;
            case 4:
            {
                self.prodName = @"1";
            }
                break;
            default:
            {
                self.prodName = @"2";
            }
                break;
        }
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when the controller is about to be visible to the wearer.
    WatchSingleton *obj = [WatchSingleton sharedManager];
    if ([obj.container count]>0) {
        
        if ([obj.product isEqualToString:@"Coffee"]) {
            self.elementsList = [obj.container objectAtIndex:0];
        } else if ([obj.product isEqualToString:@"Tea"]) {
            self.elementsList = [obj.container objectAtIndex:1];
        } else if ([obj.product isEqualToString:@"Cake"]) {
            self.elementsList = [obj.container objectAtIndex:2];
        } else {
            self.elementsList = [obj.container objectAtIndex:0];
        }
        
        self.dict = [self.elementsList objectAtIndex:[self.prodName intValue]-1];
        [self.prodImg setImageNamed:[self.dict objectForKey:@"imgname"]];
        [self.pageLabel setText:[self.dict objectForKey:@"label"]];
        self.selectProd = [self.dict objectForKey:@"label"];
    }
}

- (void)didDeactivate {
    // This method is called when the controller is no longer visible.
    NSLog(@"%@ did deactivate", self);
}

- (IBAction)productTab {
    WatchSingleton *obj = [WatchSingleton sharedManager];
    obj.productType = self.selectProd;

    NSArray *controllerNames = @[@"sizeController", @"sizeController", @"sizeController"];
    NSArray *contexts = @[@"1", @"2", @"3"];
    [self presentControllerWithNames:controllerNames contexts:contexts];
 }

@end


