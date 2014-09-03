//
//  WZLocations.m
//  Locate Products
//
//  Created by Mark Stuver on 8/28/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import "WZLocations.h"

@implementation WZLocations

/// Initializer that is called to create a productLocation
-(id)initWithLocation:(int)location
               warehouse:(NSString *)warehouse
                     row:(NSNumber *)row
                 section:(NSString *)section
               dateMoved:(NSDate *)dateMoved
                quantity:(NSNumber *)quantity
            isMainVendor:(BOOL)isMainVendor
              addlVendor:(NSString *)addlVendor{
    
    if ((self = [super init])) {
        self.location = location;
        self.warehouse = warehouse;
        self.row = row;
        self.section = section;
        self.dateMoved = dateMoved;
        self.quantity = quantity;
        self.isMainVendor = isMainVendor;
        self.addlVendor = addlVendor;
    }
    return self;
}

+(NSMutableArray *)locations {
    
    WZLocations *location1 = [[WZLocations alloc]initWithLocation:1 warehouse:@"I" row:@3 section:@"A" dateMoved:[NSDate date] quantity:@4 isMainVendor:NO addlVendor:@"Otto"];
    
    WZLocations *location2 = [[WZLocations alloc]initWithLocation:1 warehouse:@"F" row:@2 section:@"B" dateMoved:[NSDate date] quantity:@4 isMainVendor:YES addlVendor:nil];
    
    WZLocations *location3 = [[WZLocations alloc]initWithLocation:1 warehouse:@"H" row:@4 section:@"E" dateMoved:[NSDate date] quantity:@4 isMainVendor:NO addlVendor:@"Oscar Myers"];
    
    
    return [@[location1, location2, location3] mutableCopy];
    
}


@end
