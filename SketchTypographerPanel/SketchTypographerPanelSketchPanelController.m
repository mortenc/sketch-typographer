//
//  SketchTypographerPanelSketchPanelController.m
//  SketchTypographer
//
//  Created by Morten Christoffersen on 03/09/2017.
//  Copyright © 2017 Morten Christoffersen. All rights reserved.
//

#import "SketchTypographerPanelSketchPanelController.h"
#import "SketchTypographerPanelSketchPanelCell.h"
#import "SketchTypographerPanelSketchPanelCellHeader.h"
#import "SketchTypographerPanelSketchPanelCellDefault.h"
#import "SketchTypographerPanelSketchPanel.h"
#import "SketchTypographerPanelSketchPanelDataSource.h"


@interface SketchTypographerPanelSketchPanelController ()

@property (nonatomic, strong) id <SketchTypographerPanelMSInspectorStackView> stackView; // MSInspectorStackView
@property (nonatomic, strong) id <SketchTypographerPanelMSDocument> document;
@property (nonatomic, strong) SketchTypographerPanelSketchPanel *panel;
@property (nonatomic, copy) NSArray *selection;

@end

@implementation SketchTypographerPanelSketchPanelController

- (instancetype)initWithDocument:(id <SketchTypographerPanelMSDocument>)document {
    if (self = [super init]) {
        _document = document;
        _panel = [[SketchTypographerPanelSketchPanel alloc] initWithStackView:nil];
        _panel.datasource = self;
    }
    return self;
}

- (void)selectionDidChange:(NSArray *)selection {
    self.selection = [selection valueForKey:@"layers"];         // To get NSArray from MSLayersArray

    self.panel.stackView = [(NSObject *)_document valueForKeyPath:@"inspectorController.currentController.stackView"];
    [self.panel reloadData];
}

#pragma mark - SketchTypographerPanelSketchPanelDataSource

- (SketchTypographerPanelSketchPanelCell *)headerForSketchTypographerPanelSketchPanel:(SketchTypographerPanelSketchPanel *)panel {
    SketchTypographerPanelSketchPanelCellHeader *cell = (SketchTypographerPanelSketchPanelCellHeader *)[panel dequeueReusableCellForReuseIdentifier:@"header"];
    if ( ! cell) {
        cell = [SketchTypographerPanelSketchPanelCellHeader loadNibNamed:@"SketchTypographerPanelSketchPanelCellHeader"];
        cell.reuseIdentifier = @"header";
    }
    cell.titleLabel.stringValue = @"Typographer";
    return cell;
}

- (NSUInteger)numberOfRowsForSketchTypographerPanelSketchPanel:(SketchTypographerPanelSketchPanel *)panel {
    return self.selection.count;    // Using self.selection as number of rows in the panel
}

- (SketchTypographerPanelSketchPanelCell *)SketchTypographerPanelSketchPanel:(SketchTypographerPanelSketchPanel *)panel itemForRowAtIndex:(NSUInteger)index {
    SketchTypographerPanelSketchPanelCellDefault *cell = (SketchTypographerPanelSketchPanelCellDefault *)[panel dequeueReusableCellForReuseIdentifier:@"cell"];
    if ( ! cell) {
        cell = [SketchTypographerPanelSketchPanelCellDefault loadNibNamed:@"SketchTypographerPanelSketchPanelCellDefault"];
        cell.reuseIdentifier = @"cell";
    }

    id layer = self.selection[index];
    double lineHeight = [[layer valueForKey:@"lineHeight"] doubleValue];
    double fontSize = [[layer valueForKey:@"fontSize"] doubleValue];
    double relativeLineHeight = lineHeight / fontSize;
    NSString *relativeLineHeightString = [NSString stringWithFormat:@"%.2f", relativeLineHeight];
    
    cell.titleLabel.stringValue = @"Relative Line Height";
    cell.valueLabel.stringValue = relativeLineHeightString;
    cell.imageView.image = [layer valueForKeyPath:@"previewImages.LayerListPreviewUnfocusedImage"];

    return cell;
}

@end
