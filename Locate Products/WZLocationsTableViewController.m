//
//  WZLocationsTableViewController.m
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import "WZLocationsTableViewController.h"

#import "WZLocationTableViewCell.h"
#import "WZProduct.h"

@interface WZLocationsTableViewController ()

@end

@implementation WZLocationsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


#pragma mark - Table view data source

/// Number of Sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}


/// Section Title For Header
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"Product Locations";
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /// Using Cell Identifier from StoryBoard's custom prototype cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LocationCell" forIndexPath:indexPath];
    
    /// Create instance of customCell and cast it for the customCell
    WZLocationTableViewCell *locationCell = (WZLocationTableViewCell *) cell;
    
    /// Create instance of WZProducts and set to the detailItem that as passed
    WZProduct *currentProduct = self.detailItem;
    
#warning Need to allow user to take image of location in warehouse.
    /// Currently sets the location image to the default missing_image
    locationCell.locationImageView.image = [UIImage imageNamed:@"missing_image.png"];
    
    /// Set Outlet labels to the the passed item's properties
    locationCell.warehouseLabel.text = currentProduct.warehouse;
    locationCell.rowLabel.text = currentProduct.row.stringValue;
    locationCell.sectionLabel.text = currentProduct.section;
    locationCell.vendorLabel.text = currentProduct.vendor;
    locationCell.quantityLabel.text = currentProduct.quantity.stringValue;
    
    return cell;
}

@end
