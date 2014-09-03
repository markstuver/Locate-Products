//
//  WZLocationDetailViewController.h
//  Locate Products
//
//  Created by Mark Stuver on 8/29/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZLocationDetailViewController : UIViewController


/// Property that is passed item data from WZLocationsTableVC
@property (strong, nonatomic) id detailItem;


@property (strong, nonatomic) IBOutlet UILabel *productName;

@property (strong, nonatomic) IBOutlet UILabel *warehouse;

@property (strong, nonatomic) IBOutlet UILabel *quantity;
@end
