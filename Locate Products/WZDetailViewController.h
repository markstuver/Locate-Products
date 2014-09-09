//
//  WZDetailViewController.h
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WZProduct;

@interface WZDetailViewController : UIViewController <UISplitViewControllerDelegate>

/// Property that will receive the current item from the MasterVC
@property (strong, nonatomic) id detailItem;


/// Outlets for labels in detail view
@property (strong, nonatomic) IBOutlet UILabel *numberLabel;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

@property (strong, nonatomic) IBOutlet UILabel *sizeLabel;

@property (strong, nonatomic) IBOutlet UILabel *capacityLabel;

@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;

@property (strong, nonatomic) IBOutlet UILabel *mainVendorLabel;

@property (strong, nonatomic) IBOutlet UILabel *countryOriginLabel;

@property (strong, nonatomic) IBOutlet UIImageView *productImageView;

@property (weak, nonatomic) IBOutlet UIView *containerView;
@end
