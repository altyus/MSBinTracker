//
//  MakeSpaceBin.h
//  MakeSpaceBinTracker
//
//  Created by AL TYUS on 2/23/15.
//  Copyright (c) 2015 TestCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MakeSpaceBin : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * binId;
@property (nonatomic, retain) NSDate * createdDate;

@end
