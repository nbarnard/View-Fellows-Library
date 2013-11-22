//
//  VFLDetailViewController.h
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Fellows_Library;

@interface VFLDetailViewController : UIViewController

@property (strong, nonatomic) Fellows_Library *library;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
