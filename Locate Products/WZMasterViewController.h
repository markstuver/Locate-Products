//
//  WZMasterViewController.h
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WZDetailViewController;

@interface WZMasterViewController : UITableViewController

@property (strong, nonatomic) WZDetailViewController *detailViewController;

@end
