//
//  WZLocationsNavigationController.m
//  Locate Products
//
//  Created by Mark Stuver on 9/8/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import "WZLocationsNavigationController.h"
#import "WZLocationsTableViewController.h"

#import "WZProduct.h"

@interface WZLocationsNavigationController ()

@end

@implementation WZLocationsNavigationController

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
    
    NSLog(@"LocationNavigationController viewDidLoad");
    WZProduct *currentProduct = self.detailItem;
    NSLog(@"Info Sent into LocationNavigationController: %@", currentProduct.name);
    
    WZLocationsTableViewController *tableVC = self.childViewControllers.lastObject;
    
    tableVC.detailItem = self.detailItem;
    
    [tableVC viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
