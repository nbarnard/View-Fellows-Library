//
//  VFLLibraryDataController.m
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import "VFLLibraryDataController.h"
#import "Fellows_Library.h"

@interface VFLLibraryDataController ()
- (void)initializeDefaultDataList;
@end


@implementation VFLLibraryDataController
- (void)initializeDefaultDataList {
    NSMutableArray *libraryList = [[NSMutableArray alloc] init];
    self.masterLibraryList = libraryList;

    Fellows_Library *newLibrary;

    newLibrary = [[Fellows_Library alloc] initWithName:@"Seattle Public"];

    [self addLibraryWithLibrary:newLibrary];

}

- (void)addLibraryWithLibrary:(Fellows_Library *)newLibrary {
    [self.masterLibraryList addObject:newLibrary];
}

- (id) init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (Fellows_Library *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterLibraryList objectAtIndex:theIndex];
}

- (NSUInteger)countOfList {
    return [self.masterLibraryList count];
}


- (void)setMasterLibraryList:(NSMutableArray *)newList {
    if (_masterLibraryList != newList) {
        _masterLibraryList = [ newList copy];
    }
}

@end
