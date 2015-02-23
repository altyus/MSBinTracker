//
//  MakeSpaceBinTableViewController.m
//  MakeSpaceBinTracker
//
//  Created by AL TYUS on 2/23/15.
//  Copyright (c) 2015 TestCompany. All rights reserved.
//

#import "MakeSpaceBinTableViewController.h"
#import "CoreDataManager.h"
#import "MakeSpaceBin.h"

@interface MakeSpaceBinTableViewController()

@property (nonatomic) NSArray *bins;

@end

@implementation MakeSpaceBinTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    CoreDataManager *manager = [CoreDataManager sharedManager];
    [manager prepopulateData];
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"MakeSpaceBin"];
    
    self.bins = [[CoreDataManager sharedManager].managedObjectContext executeFetchRequest:request error:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.bins count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    MakeSpaceBin *bin = self.bins[indexPath.row];
    
    cell.textLabel.text = bin.name;
    
    return cell;
}

@end
