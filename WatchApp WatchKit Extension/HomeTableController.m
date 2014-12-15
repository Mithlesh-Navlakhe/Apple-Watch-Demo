//
//  HomeTableController.m
//  testing001
//
//  Created by Company on 05/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import "HomeTableController.h"
#import "HomeRowController.h"
#import "WatchSingleton.h"

@interface HomeTableController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *interfaceTable;
@property (strong, nonatomic) NSArray *productNames;

@end


@implementation HomeTableController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    
    if (self) {
        // Initialize variables here.
        // Configure interface objects here.
        [self loadTableData];
    }
    return self;
}

- (void)willActivate {
    // This method is called when the controller is about to be visible to the wearer.
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when the controller is no longer visible.
    NSLog(@"%@ did deactivate", self);
}

- (void)loadTableData {
    
    self.productNames = @[@"Coffee", @"Tea", @"Cake", @"Cold Coffee", @"Cold Tea"];
    [self.interfaceTable setNumberOfRows:self.productNames.count withRowType:@"default"];
    [self.productNames enumerateObjectsUsingBlock:^(NSString *citName, NSUInteger idx, BOOL *stop) {
        HomeRowController *row = [self.interfaceTable rowControllerAtIndex:idx];
        [row.rowLabel setText:citName];
    }];
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    WatchSingleton *obj = [WatchSingleton sharedManager];
    obj.product = [self.productNames objectAtIndex:rowIndex];

    NSArray *controllerNames = @[@"productDetail", @"productDetail", @"productDetail", @"productDetail", @"productDetail"];
    NSArray *contexts = @[@"1", @"2", @"3", @"4", @"5"];
    [self presentControllerWithNames:controllerNames contexts:contexts];
}

@end

















