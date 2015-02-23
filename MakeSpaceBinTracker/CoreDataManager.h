//
//  CoreDataManager.h
//  MakeSpaceBinTracker
//
//  Created by AL TYUS on 2/23/15.
//  Copyright (c) 2015 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreData;

@interface CoreDataManager : NSObject

@property (nonatomic, readonly) NSManagedObjectContext *managedObjectContext;

- (void)prepopulateData; 
+ (instancetype)sharedManager;

@end
