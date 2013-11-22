//
//  VFLDetailViewController.m
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import "VFLDetailViewController.h"
#import "Fellows_Library.h"

@interface VFLDetailViewController ()
- (void)configureView;
@end

@implementation VFLDetailViewController

#pragma mark - Managing the detail item

- (void)setLibraryItem:(Fellows_Library *)newLibrary {
    if (_library != newLibrary) {
        _library = newLibrary;
    }

    // Update the view.
        [self configureView];
}


- (void)configureView
{
// Update the user interface for the detail item.

    Fellows_Library *theLibrary = self.library;

    if(theLibrary) {
        self.nameLabel.text = theLibrary.name;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
