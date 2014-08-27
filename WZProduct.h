//
//  WZProduct.h
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WZProduct : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *number;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *size;
@property (nonatomic) int quantity;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *location;

/// Initializer for creating a Product
-(id)initWithProductName:(NSString *)name number:(NSString *)number type:(NSString *)type size:(NSString *)size image:(UIImage *)image quantity:(int)quantity location:(NSString *)location;

+ (NSMutableArray *) products;

@end
