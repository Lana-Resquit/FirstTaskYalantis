//
//  Flowers.m
//  fortestforyalantis
//
//  Created by Kristy on 11.08.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import "Flowers.h"

@implementation Flowers

-(id)initWithFlowerImage:(UIImage *)image andFlowerLabel:(NSString *)label {
    self = [super init];
    if (self) {
        _flowerImage = image;
        _flowerLabel = label;
        
        return self;
    }
    return nil;
}

@end
