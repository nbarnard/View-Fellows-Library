//
//  VFLShelfDataController.h
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FellowsShelf;

@interface VFLShelfDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterShelfList;

- (NSUInteger)countOfList;
- (void)addShelfWithShelf:(FellowsShelf *)newShelf;
- (FellowsShelf *)objectInListAtIndex:(NSUInteger)theIndex;

@end
