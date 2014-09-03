//
//  WZLocations.h
//  Locate Products
//
//  Created by Mark Stuver on 8/28/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WZProduct.h"

@interface WZLocations : WZProduct

@property (nonatomic) int location;
@property (nonatomic, strong) NSString *warehouse;
@property (nonatomic, strong) NSNumber *row;
@property (nonatomic, strong) NSString *section;
@property (nonatomic, strong) NSDate *dateMoved;
@property (nonatomic, strong) NSNumber *quantity;
@property (nonatomic) BOOL isMainVendor;
@property (nonatomic, strong) NSString *addlVendor;


/// Initializer for creating a Products Location
-(id)initWithLocation:(int)location warehouse:(NSString *)warehouse row:(NSNumber *)row section:(NSString *)section dateMoved:(NSDate *)dateMoved quantity:(NSNumber *)quantity isMainVendor:(BOOL) isMainVendor addlVendor:(NSString *)addlVendor;


/// Class Method that returns an array that has been created with instances of the product's locations
+ (NSMutableArray *) locations;

@end
