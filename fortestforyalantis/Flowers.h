//
//  Flowers.h
//  fortestforyalantis
//
//  Created by Kristy on 11.08.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Flowers : NSObject

@property (nonatomic, copy) UIImage *flowerImage;
@property (nonatomic, copy) NSString *flowerLabel;

-(id)initWithFlowerImage:(UIImage *)image andFlowerLabel:(NSString *)label;

@end
