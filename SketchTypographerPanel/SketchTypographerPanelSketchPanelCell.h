//
//  SketchTypographerPanelSketchPanelCell.h
//  SketchTypographer
//
//  Created by Morten Christoffersen on 03/09/2017.
//  Copyright © 2017 Morten Christoffersen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class SketchTypographerPanelSketchPanelCell;

@interface SketchTypographerPanelSketchPanelCell : NSView

@property (nonatomic, copy) NSString *reuseIdentifier;

+ (instancetype)loadNibNamed:(NSString *)nibName;

@end
