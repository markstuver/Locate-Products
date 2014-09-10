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

@property (strong, nonatomic) id locationItem;


@property (strong, nonatomic) IBOutlet UILabel *productName;

@property (strong, nonatomic) IBOutlet UILabel *productNumber;

@property (strong, nonatomic) IBOutlet UILabel *warehouse;

@property (strong, nonatomic) IBOutlet UILabel *rowLabel;

@property (strong, nonatomic) IBOutlet UILabel *sectionLabel;

@property (strong, nonatomic) IBOutlet UILabel *quantity;

@property (strong, nonatomic) IBOutlet UILabel *vendorLabel;

@property (strong, nonatomic) IBOutlet UILabel *dateMovedLabel;

@property (strong, nonatomic) IBOutlet UIImageView *locationDetailPhoto;
@end
