//
//  VFLLibraryTableViewCell.m
//  View Fellows Library
//
//  Created by Nicholas Barnard on 11/23/13.
//  Copyright (c) 2013 NMFF Development. All rights reserved.
//

#import "VFLLibraryTableViewCell.h"

@implementation VFLLibraryTableViewCell

@synthesize library;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}




@end
