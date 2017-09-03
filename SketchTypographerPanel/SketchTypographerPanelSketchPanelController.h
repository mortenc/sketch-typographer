//
//  SketchTypographerPanelSketchPanelController.h
//  SketchTypographer
//
//  Created by Morten Christoffersen on 03/09/2017.
//  Copyright © 2017 Morten Christoffersen. All rights reserved.
//

@import Cocoa;
#import "SketchTypographerPanelMSDocument.h"
#import "SketchTypographerPanelMSInspectorStackView.h"
#import "SketchTypographerPanelSketchPanelDataSource.h"
@class SketchTypographerPanelSketchPanel;

@interface SketchTypographerPanelSketchPanelController : NSObject <SketchTypographerPanelSketchPanelDataSource>

@property (nonatomic, strong, readonly) id <SketchTypographerPanelMSInspectorStackView> stackView; // MSInspectorStackView
@property (nonatomic, strong, readonly) id <SketchTypographerPanelMSDocument> document;
@property (nonatomic, strong, readonly) SketchTypographerPanelSketchPanel *panel;

- (instancetype)initWithDocument:(id <SketchTypographerPanelMSDocument>)document;
- (void)selectionDidChange:(NSArray *)selection;

@end
