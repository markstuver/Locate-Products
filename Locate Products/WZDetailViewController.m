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

@interface WZDetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
- (void)configureView;
@end

@implementation WZDetailViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /// Call helper method to setup detail view
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


#pragma mark - Managing the detail item

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
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        
        /// Create instance of WZProduct and set to the passed item
        WZProduct *currentProduct = self.detailItem;
        
        
        self.numberLabel.text = currentProduct.number;
        self.nameLabel.text = currentProduct.name;
        self.sizeLabel.text = currentProduct.size;
        self.descriptionLabel.text = currentProduct.description;
        
        /// if the product image is nil...
        if (currentProduct.image == nil) {
            /// ... show missing_image image
            self.productImageView.image = [UIImage imageNamed:@"missing_image.png"];
            
        } else {
            /// else... show product image
            self.productImageView.image = currentProduct.image;
        }
    }
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    
//    if ([sender isKindOfClass:[WZDetailViewController class]]) {
//        
//        if ([segue.destinationViewController isKindOfClass:[WZLocationsTableViewController class]]) {
//            
//            WZLocationsTableViewController *nextVC = segue.destinationViewController;
//            
//            WZProduct *currentProduct = self.detailItem;
//            
//            nextVC.detailItem = currentProduct;
//        }
//    }
//    
//}



@end
