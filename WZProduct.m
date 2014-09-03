//
//  WZProduct.m
//  Locate Products
//
//  Created by Mark Stuver on 8/27/14.
//  Copyright (c) 2014 Wartz Studio. All rights reserved.
//

#import "WZProduct.h"

@implementation WZProduct


/// Initializer that is called to create a product
-(id)initWithProductName:(NSString *)name
                  number:(NSString *)number
                    description:(NSString *)description
                    size:(NSString *)size
                   image:(UIImage *)image
                capacity:(int)capacity vendor:(NSString *)vendor country:(NSString *)country{

    if ((self = [super init])) {
        self.name = name;
        self.number = number;
        self.description = description;
        self.size = size;
        self.image = image;
        self.capacity = capacity;
        self.vendor = vendor;
        self.country = country;
    }
    return self;
}


/// /// Class Method that returns an array from the product data created for testing
+ (NSMutableArray *) products {
    
    WZProduct *sapphire = [[WZProduct alloc]initWithProductName:@"Sapphire" number:@"35-19061" description:@"Brass Vase" size:@"11.5 x 8 x 8" image:[UIImage imageNamed:@"35-19061_Saphire.png"] capacity:0.0 vendor:@"Otto" country:@"India"];
    
    WZProduct *dream = [[WZProduct alloc]initWithProductName:@"Dream" number:@"35-19062" description:@"Brass Vase" size:@"11.5 x 8 x 8" image:[UIImage imageNamed:@"35-19062_Dream.png"] capacity:0.0 vendor:@"Royal Craft" country:@"India"];

    WZProduct *primrose = [[WZProduct alloc]initWithProductName:@"Primrose" number:@"35-19063" description:@"Brass Vase" size:@"11.5 x 8 x 8" image:nil capacity:0.0  vendor:@"Zakir" country:@"India"];

    WZProduct *consort = [[WZProduct alloc]initWithProductName:@"Consort" number:@"35-19064" description:@"Brass Vase" size:@"11.5 x 8 x 8" image:nil capacity:0.0 vendor:@"Ancamco" country:@"India"];

    WZProduct *aristocrat = [[WZProduct alloc]initWithProductName:@"Aristocrat" number:@"35-19065" description:@"Brass Vase" size:@"12 x 8 x 8" image:[UIImage imageNamed:@"35-19065_Aristocrat.png"] capacity:0.0 vendor:@"Otto" country:@"India"];

    WZProduct *patrician = [[WZProduct alloc]initWithProductName:@"Patrician" number:@"35-19066" description:@"Brass Vase" size:@"11.5 x 8 x 8" image:nil capacity:0.0 vendor:@"Today Handicrafts" country:@"India"];

    WZProduct *castle = [[WZProduct alloc]initWithProductName:@"Castle" number:@"35-19067" description:@"Brass Vase" size:@"12 x 8 x 8" image:nil capacity:0.0 vendor:@"Royal Craft" country:@"India"];

    WZProduct *diamond = [[WZProduct alloc]initWithProductName:@"Diamond" number:@"35-19068" description:@"Brass Vase" size:@"10 x 8 x 8" image:nil capacity:0.0 vendor:@"Zakir" country:@"India"];

    WZProduct *zeus = [[WZProduct alloc]initWithProductName:@"Zeus" number:@"35-19069" description:@"Brass Vase" size:@"11.5 x 8 x 8" image:[UIImage imageNamed:@"35-19069_Zeus.png"] capacity:0.0 vendor:@"Otto" country:@"India"];
    
    
    return [@[sapphire, dream, primrose, consort, aristocrat, patrician, castle, diamond, zeus] mutableCopy];

    
}




@end
