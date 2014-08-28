//
//  WZLocationTableViewCell.h
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZLocationTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *warehouseLabel;

@property (strong, nonatomic) IBOutlet UILabel *sectionLabel;

@property (strong, nonatomic) IBOutlet UILabel *moveDate;

@property (strong, nonatomic) IBOutlet UILabel *vendorLabel;

@property (strong, nonatomic) IBOutlet UILabel *rowLabel;

@property (strong, nonatomic) IBOutlet UILabel *quantityLabel;

@property (strong, nonatomic) IBOutlet UIImageView *locationImageView;


@end
