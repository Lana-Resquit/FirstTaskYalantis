//
//  MasterViewController.m
//  fortestforyalantis
//
//  Created by Kristy on 11.08.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import "MasterViewController.h"
#import "FlowersDataController.h"
#import "FlowersTableViewCell.h"

@interface MasterViewController ()

@property (nonatomic, strong) FlowersDataController *flowersDataController;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.flowersDataController = [[FlowersDataController alloc]init];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.flowersDataController flowersCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FlowersTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Flowers *flower = [self.flowersDataController flowerAtIndex:indexPath.row];
    cell.flowerView.image = flower.flowerImage;
    cell.summaryLabel.text = flower.flowerLabel;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


@end
