//
//  FlowersDataController.m
//  fortestforyalantis
//
//  Created by Kristy on 11.08.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import "FlowersDataController.h"

@interface FlowersDataController ()

@property (nonatomic, strong) NSArray *tablePhotos;
@property (nonatomic, strong) NSArray *tableSummary;
@property (nonatomic, readonly) NSMutableArray *flowersList;

-(void) initializeDefaultFlower;

@end

@implementation FlowersDataController

-(id)init {
    self = [super init];
    
    if (self) {
        _flowersList = [[NSMutableArray alloc]init];
        [self initializeDefaultFlower];
        return self;
    }
    return nil;
}

-(void) initializeDefaultFlower {
    
    self.tablePhotos = @[[UIImage imageNamed:@"test1.jpg"],
                         [UIImage imageNamed:@"test2.jpg"],
                         [UIImage imageNamed:@"test3.jpg"],
                         [UIImage imageNamed:@"test4.jpg"],
                         [UIImage imageNamed:@"test5.jpg"],
                         [UIImage imageNamed:@"test6.jpg"],
                         [UIImage imageNamed:@"test7.jpg"],
                         [UIImage imageNamed:@"test8.jpg"],
                         [UIImage imageNamed:@"test9.jpg"],
                         [UIImage imageNamed:@"test10.jpg"]];
    
    self.tableSummary = @[@"Цветок Калла очень популярен из-за своего величия и красоты",
                          @"Этот цветок имеет волшебную притягательность и необыкновенную красоту.",
                          @"Орхидеи похожи на произведения искусства, радуют и обогащают нас своей красотой.",
                          @"Собирать ромашку следует только в сухую погоду, в ранние утренние часы.",
                          @"Пион относится к классу многолетних растений и может быть травянистым.",
                          @"По описанию - на букетные хризантемы, множество соцветий похожи на плотные шаровидные шапки незагнутых цветков.",
                          @"Многолетнее красивоцветущее травянистое растение семейства сложноцветных или астровых (Asteraceae).",
                          @"Значение цветка варьируется и от цвета, так красные тюльпаны могут символизировать объяснение в любви (поверь мне), в то время как белые олицетворяют признание вины и желание получить прощение.",
                          @"Подснежник — многолетне луковичное растение. Луковица округлая, до 3 см в диаметре. Листья немногочисленные, узкие, плоские, линейные или ланцетные.",
                          @"Альпиния пурпурная, она же красный имбирь, из пряного и ароматного семейства Имбирные."];
    
    for (int i = 0; i < 10; i++) {
        [self addFlowerWithFlowerImage:[self.tablePhotos objectAtIndex:i] andFlowerLabel:[self.tableSummary objectAtIndex:i]];
    }
}

-(NSUInteger) flowersCount {
    return [self.flowersList count];
}

-(Flowers *)flowerAtIndex:(NSUInteger)index {
    return [self.flowersList objectAtIndex:index];
}

-(void)addFlowerWithFlowerImage:(UIImage *)image andFlowerLabel:(NSString *)label {
    
    Flowers *newFlower = [[Flowers alloc]initWithFlowerImage:image andFlowerLabel:label];
    [self.flowersList addObject:newFlower];
}

@end
