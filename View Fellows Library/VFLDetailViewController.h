//
//  VFLDetailViewController.h
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VFLDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
