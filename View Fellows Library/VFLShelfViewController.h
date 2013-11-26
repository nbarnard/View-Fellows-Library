//
//  VFLShelvesViewController.h
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VFLShelfDataController;

@interface VFLShelfViewController : UITableViewController

@property (strong, nonatomic) VFLShelfDataController *dataController;

@end
