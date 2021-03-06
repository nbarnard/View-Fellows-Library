//
//  VFLMasterViewController.m
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/21/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import "VFLLibraryViewController.h"

#import "VFLLibraryDetailViewController.h"
#import "VFLLibraryDataController.h"
#import "FellowsLibrary.h"
#import "VFLLibraryTableViewCell.h"
#import "VFLShelfViewController.h"
#import "VFLShelfDataController.h"

@implementation VFLLibraryViewController

@class VFLLibraryDataController;
@class VFLShelfDataController;

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dataController = [[VFLLibraryDataController alloc] init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
 /*   self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton; */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

 */

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController countOfList];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    VFLLibraryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"LibraryNameCell"];

    FellowsLibrary *libraryAtIndex = [self.dataController objectInListAtIndex:indexPath.row];

    [[cell textLabel] setText:libraryAtIndex.name];
    cell.library = libraryAtIndex;

    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

/*
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

 */

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    VFLLibraryTableViewCell *cell = sender;


    FellowsLibrary *currentLibrary = cell.library;

    VFLShelfViewController *shelfViewController = segue.destinationViewController;

    VFLShelfDataController *currentShelfDataController = shelfViewController.dataController;

    currentShelfDataController.masterShelfList = currentLibrary.shelvesInLibrary;

    NSLog(@"destViewController");
    NSLog(NSStringFromClass([segue.destinationViewController class]));




 /*
  Fun learning about this stuff stuff.
    UILabel *label = cell.textLabel;

    NSLog(@"Label");
    NSLog(label.text);

    NSLog(@"Segue ID");
    NSLog([segue identifier]);

    NSLog(@"Sender Class");
    NSLog(NSStringFromClass([sender class]));

    NSLog(@"Segue Class");
    NSLog(NSStringFromClass([segue class]));

    NSLog(@"sourceViewController");
    NSLog(NSStringFromClass([segue.sourceViewController class]));




    NSLog(@"Library Name");
    NSLog(currentLibrary.name);

  */

 }

@end
