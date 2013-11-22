//
//  VFLLibraryDataController.h
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FellowsLibrary;
@interface VFLLibraryDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterLibraryList;

- (NSUInteger)countOfList;
- (void)addLibraryWithLibrary:(FellowsLibrary *)newLibrary;
- (FellowsLibrary *)objectInListAtIndex:(NSUInteger)theIndex;

@end
