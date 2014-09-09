//
//  WZMasterViewController.m
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import "WZMasterViewController.h"
#import "WZDetailViewController.h"
#import "WZLocationsNavigationController.h"
#import "WZLocationsTableViewController.h"

#import "WZProduct.h"
#import "WZTableViewCell.h"

@interface WZMasterViewController () {
    
    /// Local/Private NSMutableArray that will be loaded with WZProducts
    NSMutableArray *_products;
}

@end

@implementation WZMasterViewController

- (void)awakeFromNib
{
    self.clearsSelectionOnViewWillAppear = NO;
    self.preferredContentSize = CGSizeMake(320.0, 600.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /// Load local/private mutableArray with array from WZProducts
    _products = [WZProduct products];

/// Sets up MasterTableView with edit and add item bar buttons
/*    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    /// Show plus in button bar. When pressed call the insertNewObject method
        UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
        self.navigationItem.rightBarButtonItem = addButton; */
    
    /// Setting up the splitViewController feature
    self.detailViewController = (WZDetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}

#warning Need to configured to add a new product??? maybe???

/// Is Called to insert new object when plus in button bar is selected
//- (void)insertNewObject:(id)sender
//{
//    /// if the array does not exsist... create it
//    if (!_products) {
//        _products = [[NSMutableArray alloc] init];
//    }
//    /// if/after array is created insert the new item into the array
//    [_products insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    /// return amount of rows based on count of items in the products array
    return _products.count;
  }


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ProductCell" forIndexPath:indexPath];
    
    /// Create instance of WZTableViewCell
    WZTableViewCell *productCell = (WZTableViewCell *)cell;
    
    /// Create instance of WZProducts and set to the product at the current indexPath's row
   WZProduct *currentProduct = [_products objectAtIndex:indexPath.row];
    
    productCell.nameLabel.text = currentProduct.name;
    productCell.numberLabel.text = currentProduct.number;
    productCell.sizeLabel.text = currentProduct.size;
    
    /// if the current product image is set to nil..
    if (currentProduct.image == nil) {
        /// show missing_image
        productCell.productImageView.image = [UIImage imageNamed:@"missing_image.png"];

    } else {
        /// else... show the current product's image
        productCell.productImageView.image = currentProduct.image;
    }
    return cell;
}

/// When row has been selected... send that row's item to the detailItem property of the detailVC
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /// Create instance of WZProducts and set to the row's item from the product array
    WZProduct *product = _products[indexPath.row];
    
    /// Send the product instance from this VC to the detailItem property in the detailVC
    self.detailViewController.detailItem = product;
    
    WZLocationsNavigationController *navVC = self.detailViewController.childViewControllers.lastObject;
    
    
     NSLog(@"children from master : %@", navVC);
    
    navVC.detailItem = product;
    
    NSLog(@"child's contents: %@", product.name);
    

    [navVC viewDidLoad];
    
    }



/// Used to tell tableView that can allow its rows to be edited
/* - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
   // Return NO if you do not want the specified item to be editable.
    return YES;
} */

/// Used when allowing for edit and add buttons to be active in the buttonBar
/*- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_products removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
} */

@end
