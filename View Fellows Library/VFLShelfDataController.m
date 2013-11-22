//
//  VFLShelfDataController.m
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import "VFLShelfDataController.h"

@interface VFLShelfDataController ()
- (void)initializeDefaultDataList;
@end

@implementation VFLShelfDataController

-(void)initializeDefaultDataList {
    
}

- (void)addShelfWithShelf:(FellowsShelf *)newShelf {
    [self.masterShelfList addObject:newShelf];
}

- (FellowsShelf *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterShelfList objectAtIndex:theIndex];
}

- (NSUInteger)countOfList {
    return [self.masterShelfList count];
}

@end
