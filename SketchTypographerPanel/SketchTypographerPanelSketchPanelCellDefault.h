//
//  SketchTypographerPanelSketchPanelCellDefault.h
//  SketchTypographer
//
//  Created by Morten Christoffersen on 03/09/2017.
//  Copyright © 2017 Morten Christoffersen. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SketchTypographerPanelSketchPanelCell.h"

@interface SketchTypographerPanelSketchPanelCellDefault : SketchTypographerPanelSketchPanelCell

@property (nonatomic, weak) IBOutlet NSTextField *titleLabel;
@property (nonatomic, weak) IBOutlet NSImageView *imageView;

@end
