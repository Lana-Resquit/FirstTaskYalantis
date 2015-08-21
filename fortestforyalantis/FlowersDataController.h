//
//  FlowersDataController.h
//  fortestforyalantis
//
//  Created by Kristy on 11.08.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flowers.h"

@interface FlowersDataController : NSObject

-(NSUInteger) flowersCount;
-(Flowers *) flowerAtIndex:(NSUInteger) index;
-(void) addFlowerWithFlowerImage:(UIImage *)image andFlowerLabel:(NSString *)label;

@end

