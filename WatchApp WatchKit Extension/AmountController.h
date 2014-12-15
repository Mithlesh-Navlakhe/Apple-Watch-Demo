//
//  AmountController.h
//  WatchApp
//
//  Created by Sandeep Prajapat on 08/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface AmountController : WKInterfaceController

@property (nonatomic, strong) IBOutlet WKInterfaceLabel *itemLb;
@property (nonatomic, strong) IBOutlet WKInterfaceLabel *priceLb;
@property (nonatomic, strong) IBOutlet WKInterfaceLabel *totalLb;



- (IBAction) payTab;

@end
