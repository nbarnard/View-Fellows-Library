//
//  VFLShelvesDetailViewController.h
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FellowsShelf;

@interface VFLShelfDetailViewController : UIViewController

@property (strong, nonatomic) FellowsShelf *shelf;
@property (weak, nonatomic) IBOutlet UILabel *shelfLabel;
@property (weak, nonatomic) IBOutlet UILabel *libraryLabel;
@end
