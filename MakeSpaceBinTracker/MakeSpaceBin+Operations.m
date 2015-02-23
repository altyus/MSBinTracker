//
//  MakeSpaceBin+Operations.m
//  MakeSpaceBinTracker
//
//  Created by AL TYUS on 2/23/15.
//  Copyright (c) 2015 TestCompany. All rights reserved.
//

#import "MakeSpaceBin+Operations.h"

@implementation MakeSpaceBin (Operations)

- (instancetype)initWithContext:(NSManagedObjectContext *)context 
{
    return [self initWithName:@"" binId:@"" createdDate:nil context:context];
}
- (instancetype)initWithName:(NSString *)name
                       binId:(NSString *)binId
                 createdDate:(NSDate *)createdDate
                     context:(NSManagedObjectContext *)context
{
    self = [NSEntityDescription insertNewObjectForEntityForName:@"MakeSpaceBin" inManagedObjectContext:context];
    if (self) {
        self.name = name;
        self.binId = binId;
        self.createdDate = createdDate;
    }
    
    return self;
}

@end
