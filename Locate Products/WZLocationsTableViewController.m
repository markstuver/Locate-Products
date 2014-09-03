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
#import "WZLocations.h"
#import "WZLocationDetailViewController.h"

@interface WZLocationsTableViewController () {

    /// Private/Local mutableArray used for locations
    NSMutableArray *_locations;
}
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
    
    _locations = [WZLocations locations];
    
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


/// Call Method to set the height of the current row
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    /// Create instance of WZProduct and set to the current indexPath's row
   // WZProduct *currentProduct = self.detailItem[indexPath.row];
    
    /// Determine what kind of prototype cell the current row is
    
//    if (indexPath.row >= bugSection.bugs.count && [self isEditing]) {
//        
//        /// New Bug Row
//        return 40;
//        
//    } else {
    
        /// hight of LocationCell
        return 91;
    //}
}


/// Number of Rows in Section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return [_locations count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /// Using Cell Identifier from StoryBoard's custom prototype cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LocationCell" forIndexPath:indexPath];
    
    /// Create instance of customCell and cast it for the customCell
    WZLocationTableViewCell *locationCell = (WZLocationTableViewCell *) cell;
    
    /// Create instance of WZProducts and set to the detailItem that as passed
   
    WZProduct *currentProduct = self.detailItem;
    
    WZLocations *currentLocation = _locations[indexPath.row];
    
#warning Need to allow user to take image of location in warehouse.
    /// Currently sets the location image to the default missing_image
    locationCell.locationImageView.image = [UIImage imageNamed:@"missing_image.png"];
    
    /// Set Outlet labels to the the passed item's properties
    locationCell.warehouseLabel.text = currentLocation.warehouse;
    locationCell.rowLabel.text = currentLocation.row.stringValue;
    locationCell.sectionLabel.text = currentLocation.section;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"MM/dd/yyyy"];
    
    locationCell.moveDate.text = [formatter stringFromDate:currentLocation.dateMoved];
    
    locationCell.quantityLabel.text = currentLocation.quantity.stringValue;
    
    if (currentLocation.isMainVendor == YES) {
        locationCell.vendorLabel.text = currentProduct.vendor;
    } else {
    locationCell.vendorLabel.text = currentLocation.addlVendor;
    }
    
    locationCell.quantityLabel.text = currentLocation.quantity.stringValue;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    if ([segue.identifier isEqualToString:@"ToLocationDetail"]) {
        
        WZLocationDetailViewController *locationDetailVC = segue.destinationViewController;
        
        ///WZProduct *currentProduct = self.detailItem;
        
        locationDetailVC.detailItem = self.detailItem;
    
    }
    
    
    
    
    
    
}

@end
