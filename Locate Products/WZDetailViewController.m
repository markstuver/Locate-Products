//
//  WZDetailViewController.m
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import "WZDetailViewController.h"
#import "WZProduct.h"
#import "WZLocationsTableViewController.h"
#import "WZLocationsNavigationController.h"

@interface WZDetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation WZDetailViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /// Call helper method to setup detail view
    [self configureView];
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}


#pragma mark - Helper Methods - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        /// Update the view by calling helper method
        [self configureView];
    }
    
    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }
}

/// Helper method that links the products data to the Storyboard outlets.
- (void)configureView
{
    /// if this is detailItem
    if (self.detailItem) {
        
        /// Create instance of WZProduct and set to the passed item (current product)
       WZProduct *currentProduct = self.detailItem;
        
        /// Set Outlet labels with the current product's data
        self.numberLabel.text = currentProduct.number;
        self.nameLabel.text = currentProduct.name;
        self.descriptionLabel.text = currentProduct.description;
        self.sizeLabel.text = currentProduct.size;
        self.capacityLabel.text = [NSString stringWithFormat:@"%i", currentProduct.capacity];
        self.mainVendorLabel.text = currentProduct.vendor;
        self.countryOriginLabel.text = currentProduct.country;
    
        
        
        /// if the product image is nil...
        if (currentProduct.image == nil) {
            /// ... show missing_image image
            self.productImageView.image = [UIImage imageNamed:@"missing_image.png"];
            
        /// else...
        } else {
            /// ...show product image
            self.productImageView.image = currentProduct.image;
        }
        
        /// Call Helper method to extend data to the embedded NavigationController
        [self configureEmbeddedController];
    }
    
    
    /// refresh the view of the embedded tableView to reflect current item
    [self.childViewControllers.firstObject loadView];
}


/// Helper method to update the item passed to the embedded tableView
-(void)configureEmbeddedController {
    
    /// Create instance of the embedded navigationController and set it to the childVC
    WZLocationsNavigationController *navVC = self.childViewControllers.lastObject;


    
       /// Create instance of WZProducts and set to the current item
    WZProduct *currentProduct = self.detailItem;
    NSLog(@"DetailVC received: %@", currentProduct.name);
    
        
    
    
    /// Set the embedded navigationController's detailItem instance to equal the current item.
    
    navVC.detailItem = self.detailItem;
    
   // NSLog(@"Info sent to NavigationController: %@", currentProduct.name);
    
    NSLog(@"children : %@", navVC);
    
    WZProduct *currentProductToPass = navVC.detailItem;

    NSLog(@"child's data passed: %@", currentProductToPass.name);
    
        //[locationVC.tableView reloadData];
}


@end
