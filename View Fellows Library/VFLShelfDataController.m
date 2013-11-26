//
//  VFLShelfDataController.m
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import "VFLShelfDataController.h"

@interface VFLShelfDataController ()

@end

@implementation VFLShelfDataController

- (FellowsShelf *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterShelfList objectAtIndex:theIndex];
}

- (NSUInteger)countOfList {
    return [self.masterShelfList count];
}

- (void)setMasterShelfList:(NSMutableArray *)newList {
    if(_masterShelfList != newList) {
        _masterShelfList = [newList mutableCopy];
    }
}


@end
