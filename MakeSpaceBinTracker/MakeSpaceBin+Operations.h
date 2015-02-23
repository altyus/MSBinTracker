//
//  MakeSpaceBin+Operations.h
//  MakeSpaceBinTracker
//
//  Created by AL TYUS on 2/23/15.
//  Copyright (c) 2015 TestCompany. All rights reserved.
//

#import "MakeSpaceBin.h"

@interface MakeSpaceBin (Operations)

- (instancetype)initWithContext:(NSManagedObjectContext *)context;
- (instancetype)initWithName:(NSString *)name
                       binId:(NSString *)binId
                 createdDate:(NSDate *)createdDate
                     context:(NSManagedObjectContext *)context;


@end
