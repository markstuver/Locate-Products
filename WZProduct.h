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
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *size;
@property (nonatomic, strong) NSNumber *quantity;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *warehouse;
@property (nonatomic, strong) NSNumber *row;
@property (nonatomic, strong) NSString *section;
@property (nonatomic, strong) NSString *vendor;




/// Initializer for creating a Product
-(id)initWithProductName:(NSString *)name number:(NSString *)number description:(NSString *)description size:(NSString *)size image:(UIImage *)image quantity:(NSNumber *)quantity warehouse:(NSString *)warehouse row:(NSNumber *)row section:(NSString *)section vendor:(NSString *)vendor;

/// Class Method that returns an array that has been created with instances of products
+ (NSMutableArray *) products;

@end
