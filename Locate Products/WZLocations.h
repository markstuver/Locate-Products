//
//  WZLocations.h
//  Locate Products
//
//  Created by Mark Stuver on 8/28/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WZLocations : NSObject

@property (nonatomic, strong) NSMutableArray *location;

@property (nonatomic, strong) NSMutableDictionary *productLocations;

@property (nonatomic, strong) NSString *warehouse;
@property (nonatomic, strong) NSNumber *row;
@property (nonatomic, strong) NSString *section;
@property (nonatomic, strong) NSDate *dateMoved;
@property (nonatomic, strong) NSString *vendor;
@property (nonatomic, strong) NSNumber *quantity;

@end
