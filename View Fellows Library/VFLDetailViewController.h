//
//  VFLDetailViewController.h
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FellowsLibrary;

@interface VFLDetailViewController : UIViewController

@property (strong, nonatomic) FellowsLibrary *library;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
