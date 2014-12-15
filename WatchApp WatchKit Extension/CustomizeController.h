//
//  CustomizeController.h
//  WatchApp
//
//  Created by Company on 05/12/14.
//  Copyright (c) 2014 Company. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface CustomizeController : WKInterfaceController

@property (nonatomic, strong) IBOutlet WKInterfaceImage *selImg;

@property (nonatomic, strong) IBOutlet WKInterfaceButton *frtBt;
@property (nonatomic, strong) IBOutlet WKInterfaceButton *secBt;
@property (nonatomic, strong) IBOutlet WKInterfaceButton *thrdBt;

@property (nonatomic, strong) IBOutlet WKInterfaceImage *frtImg;
@property (nonatomic, strong) IBOutlet WKInterfaceImage *secImg;
@property (nonatomic, strong) IBOutlet WKInterfaceImage *thrdImg;



- (IBAction) firstTab;
- (IBAction) secondTab;
- (IBAction) thirdTab;

@end
