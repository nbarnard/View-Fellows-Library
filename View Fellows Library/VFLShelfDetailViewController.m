//
//  VFLShelvesDetailViewController.m
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import "VFLShelfDetailViewController.h"
#import "FellowsLibrary.h"

@interface VFLShelfDetailViewController ()
- (void)configureView;
@end

@implementation VFLShelfDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureView {
    FellowsShelf *theShelf = self.shelf;

    if(theShelf) {
        self.shelfLabel.text = theShelf.name;
        self.libraryLabel.text = theShelf.library.name;
    }
}

@end
