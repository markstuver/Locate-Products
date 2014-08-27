//
//  WZProduct.m
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import "WZProduct.h"

@implementation WZProduct


-(id)initWithProductName:(NSString *)name
                  number:(NSString *)number
                    type:(NSString *)type
                    size:(NSString *)size
                   image:(UIImage *)image
                quantity:(int)quantity
                location:(NSString *)location {
    
    if ((self = [super init])) {
        self.name = name;
        self.number = number;
        self.type = type;
        self.size = size;
        self.image = image;
        self.quantity = quantity;
        self.location = location;
    }
    return self;
}



+ (NSMutableArray *) products {
    
    WZProduct *sapphire = [[WZProduct alloc]initWithProductName:@"Sapphire" number:@"35-19061" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];
    
    WZProduct *dream = [[WZProduct alloc]initWithProductName:@"Dream" number:@"35-19062" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];

    WZProduct *primrose = [[WZProduct alloc]initWithProductName:@"Primrose" number:@"35-19063" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];

    WZProduct *consort = [[WZProduct alloc]initWithProductName:@"Consort" number:@"35-19064" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];

    WZProduct *aristocrat = [[WZProduct alloc]initWithProductName:@"Aristocrat" number:@"35-19065" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];

    WZProduct *patrician = [[WZProduct alloc]initWithProductName:@"Patrician" number:@"35-19066" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];

    WZProduct *castle = [[WZProduct alloc]initWithProductName:@"Castle" number:@"35-19067" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];

    WZProduct *diamond = [[WZProduct alloc]initWithProductName:@"Diamond" number:@"35-19068" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];

    WZProduct *zeus = [[WZProduct alloc]initWithProductName:@"Zeus" number:@"35-19069" type:@"Brass Vase" size:@"Adult" image:nil quantity:0 location:nil];
    
    
    return [@[sapphire, dream, primrose, consort, aristocrat, patrician, castle, diamond, zeus] mutableCopy];

    
}




@end
