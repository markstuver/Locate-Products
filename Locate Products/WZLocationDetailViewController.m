//
//  WZLocationDetailViewController.m
//  Locate Products
//
//  Created by Mark Stuver on 8/29/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import "WZLocationDetailViewController.h"
#import "WZProduct.h"
#import "WZLocations.h"

@interface WZLocationDetailViewController ()

@end

@implementation WZLocationDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self ConfigureView];
}



-(void)ConfigureView {
    
    if (self.detailItem && self.locationItem) {
        
        WZProduct *currentProduct = self.detailItem;
        WZLocations *currentLocation = self.locationItem;
       
        self.productName.text = currentProduct.name;
        self.productNumber.text = currentProduct.number;
        self.warehouse.text = currentLocation.warehouse;
        self.rowLabel.text = currentLocation.row.stringValue;
        self.sectionLabel.text = currentLocation.section;
        self.quantity.text = currentLocation.quantity.stringValue;
        self.vendorLabel.text = currentLocation.vendor;
        
        self.locationDetailPhoto.image = [UIImage imageNamed:@"missing_image"];
        
    }
    
    
    
}

/* For COMMIT EDITING STYLE FOR ROW - TABLEVIEW - ***REQUIRED FOR EDITING MODE*** **/
////- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // DELETING ROWS
    // Make sure we are grabbing the EditingStyleDELETE
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        
//        // Create instance of BugSection and set to current bug section
//        BugSection *section = self.bugSections[indexPath.section];
//        
//        // Remove the current row from the Array
//        [section.bugs removeObjectAtIndex:indexPath.row];
//        
//        // Delete the current row with animation.
//        [tableView deleteRowsAtIndexPaths:@[indexPath]
//                         withRowAnimation:UITableViewRowAnimationAutomatic];
    // }
        /// INSERTING ROWS
        // Make sure we are grabbing the EditingStyleINSERT
     /*else*/ ///if (editingStyle == UITableViewCellEditingStyleInsert) {
        
        // Create instance of WZProducts and set to the current IndexPath's row
       /// WZProduct *currentProduct = self.detailItem[indexPath.row];
        
        // Add new row object to the array
      //  [section.bugs addObject:newBug];
        
        // Animate the row and insert
        ///[tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
  ///  }
///}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
