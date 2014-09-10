//
//  WZProduct.h
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WZProduct : NSObject

/// Properties of data that makes up a product item
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *number;
@property (nonatomic, strong) NSString *productDescription;
@property (nonatomic, strong) NSString *size;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic) int capacity;
@property (nonatomic, strong) NSString *vendor;
@property (nonatomic, strong) NSString *country;




/// Initializer for creating a Product
-(id)initWithProductName:(NSString *)name number:(NSString *)number productDescription:(NSString *)productDescription size:(NSString *)size image:(UIImage *)image capacity:(int)capacity vendor:(NSString *)vendor country:(NSString *)country;

/// Class Method that returns an array that has been created with instances of products
+ (NSMutableArray *) products;

@end
