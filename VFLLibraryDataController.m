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

    NSArray *demoLibraries = [NSArray arrayWithObjects:@"American Institute of Architects Library", @"Arnold Library", @"Center for Sex Positive Culture Library", @"Coast Guard Museum Northwest Library", @"Cornish College library", @"Dorothy Stimson Bullitt Library", @"Historic Seattle Library", @"Frye Art Museum Library", @"Gallagher Law Library", @"Gordon Ekvall Tracie Music Library", @"Group Health Cooperative Medical Library", @"King County Hazardous Waste Library", @"King County Law Library", @"Lemieux Library", @"LGBT Library", @"McCaw Foundation Library of Asian Art", @"The Mountaineers Library", @"Municipal Research and Services Center Library", @"Museum of History and Industry Library", @"Northwest and Alaska Fisheries Science Centers Library", @"Northeast Seattle Tool Library", @"PNA Tool Library", @"Harl V. Brackin Library", @"Seattle Architecture Foundation Library", @"Seattle Children's Hospital Library and Information Commons", @"Seattle Public Library", @"Seattle Municipal Archives", @"Seattle School of Theology & Psychology library", @"Temple De Hirsch Sinai Library", @"University of Washington Libraries", @"West Seattle Tool Library", @"Walter Johnson Memorial Library", @"Washington Talking Book & Braille Library", @"ZAPP", nil];

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
            [newLibrary addShelftoLibrary:newShelf];
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
        _masterLibraryList = [newList mutableCopy];
    }
}

@end
