//
//  SketchTypographerPanelSketchPanel.h
//  SketchTypographer
//
//  Created by Morten Christoffersen on 03/09/2017.
//  Copyright © 2017 Morten Christoffersen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SketchTypographerPanelSketchPanelDataSource.h"
#import "SketchTypographerPanelMSInspectorStackView.h"

@class SketchTypographerPanelSketchPanelCell;

@interface SketchTypographerPanelSketchPanel : NSObject

@property (nonatomic, strong, readonly) NSArray *views;
@property (nonatomic, weak) id <SketchTypographerPanelMSInspectorStackView> stackView;
@property (nonatomic, weak) id <SketchTypographerPanelSketchPanelDataSource> datasource;

- (instancetype)initWithStackView:(id <SketchTypographerPanelMSInspectorStackView>)stackView;
- (void)reloadData;
- (SketchTypographerPanelSketchPanelCell *)dequeueReusableCellForReuseIdentifier:(NSString *)identifier;

@end
