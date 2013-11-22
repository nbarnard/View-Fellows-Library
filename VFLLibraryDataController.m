//
//  VFLLibraryDataController.m
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import "VFLLibraryDataController.h"
#import "FellowsLibrary.h"

@interface VFLLibraryDataController ()
- (void)initializeDefaultDataList;
@end


@implementation VFLLibraryDataController
- (void)initializeDefaultDataList {
    NSMutableArray *libraryList = [[NSMutableArray alloc] init];
    self.masterLibraryList = libraryList;

    NSArray *demoLibraries = [NSArray arrayWithObjects:@"Seattle Public Library", @"King County Library", @"Vestal Hills Library", nil];

    NSArray *demoShelves = [NSArray arrayWithObjects:@"Fiction", @"Non Fiction", nil];

    FellowsLibrary *newLibrary;
    FellowsShelf *newShelf;

    for(id curLibrary in demoLibraries){
        newLibrary = NULL;
        newLibrary = [[FellowsLibrary alloc] initWithName:curLibrary];
        [self addLibraryWithLibrary:newLibrary];
        for(id curShelf in demoShelves){
            newShelf = NULL;
            newShelf = [[FellowsShelf alloc] initWithName:curShelf WithLibrary:newLibrary];
        } 
    }
}

- (void)addLibraryWithLibrary:(FellowsLibrary *)newLibrary {
    [self.masterLibraryList addObject:newLibrary];
}

- (id) init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (FellowsLibrary *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterLibraryList objectAtIndex:theIndex];
}

- (NSUInteger)countOfList {
    return [self.masterLibraryList count];
}


- (void)setMasterLibraryList:(NSMutableArray *)newList {
    if (_masterLibraryList != newList) {
        _masterLibraryList = [ newList mutableCopy];
    }
}

@end
