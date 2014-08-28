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
                    description:(NSString *)description
                    size:(NSString *)size
                   image:(UIImage *)image
                quantity:(NSNumber *)quantity
               warehouse:(NSString *)warehouse
                     row:(NSNumber *)row
                 section:(NSString *)section
                  vendor:(NSString *)vendor {

    if ((self = [super init])) {
        self.name = name;
        self.number = number;
        self.description = description;
        self.size = size;
        self.image = image;
        self.quantity = quantity;
        self.warehouse = warehouse;
        self.row = row;
        self.section = section;
        self.vendor = vendor;
    }
    return self;
}



+ (NSMutableArray *) products {
    
    WZProduct *sapphire = [[WZProduct alloc]initWithProductName:@"Sapphire" number:@"35-19061" description:@"Brass Vase" size:@"Adult" image:[UIImage imageNamed:@"35-19061_Saphire.png"] quantity:@20 warehouse:@"i" row:@1 section:@"a" vendor:@"Otto"];
    
    WZProduct *dream = [[WZProduct alloc]initWithProductName:@"Dream" number:@"35-19062" description:@"Brass Vase" size:@"Adult" image:[UIImage imageNamed:@"35-19062_Dream.png"] quantity:@10 warehouse:@"h" row:@2 section:@"b"vendor:@"Royal Craft"];

    WZProduct *primrose = [[WZProduct alloc]initWithProductName:@"Primrose" number:@"35-19063" description:@"Brass Vase" size:@"Adult" image:nil quantity:0 warehouse:nil row:nil section:nil vendor:@"Zakir"];

    WZProduct *consort = [[WZProduct alloc]initWithProductName:@"Consort" number:@"35-19064" description:@"Brass Vase" size:@"Adult" image:nil quantity:0 warehouse:@"g" row:@1 section:@"a"vendor:@"Ancamco"];

    WZProduct *aristocrat = [[WZProduct alloc]initWithProductName:@"Aristocrat" number:@"35-19065" description:@"Brass Vase" size:@"Adult" image:[UIImage imageNamed:@"35-19065_Aristocrat.png"] quantity:0 warehouse:@"i" row:@3 section:@"d"vendor:@"Otto"];

    WZProduct *patrician = [[WZProduct alloc]initWithProductName:@"Patrician" number:@"35-19066" description:@"Brass Vase" size:@"Adult" image:nil quantity:@60 warehouse:@"F" row:@4 section:@"e"vendor:@"Today Handicrafts"];

    WZProduct *castle = [[WZProduct alloc]initWithProductName:@"Castle" number:@"35-19067" description:@"Brass Vase" size:@"Adult" image:nil quantity:0 warehouse:@"i" row:@5 section:@"c"vendor:@"Royal Craft"];

    WZProduct *diamond = [[WZProduct alloc]initWithProductName:@"Diamond" number:@"35-19068" description:@"Brass Vase" size:@"Adult" image:nil quantity:@300 warehouse:@"h" row:@1 section:@"a"vendor:@"Zakir"];

    WZProduct *zeus = [[WZProduct alloc]initWithProductName:@"Zeus" number:@"35-19069" description:@"Brass Vase" size:@"Adult" image:[UIImage imageNamed:@"35-19069_Zeus.png"] quantity:@3000 warehouse:@"g" row:@3 section:@"e"vendor:@"Otto"];
    
    
    return [@[sapphire, dream, primrose, consort, aristocrat, patrician, castle, diamond, zeus] mutableCopy];

    
}




@end
