//
//  VFLLibraryDataController.h
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Fellows_Library;
@interface VFLLibraryDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterLibraryList;

- (NSUInteger)countOfList;
- (void)addLibraryWithLibrary:(Fellows_Library *)newLibrary;
- (Fellows_Library *)objectInListAtIndex:(NSUInteger)theIndex;

@end
