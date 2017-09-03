//
//  SketchTypographerPanelSketchPanelDataSource.h
//  SketchTypographer
//
//  Created by Morten Christoffersen on 03/09/2017.
//  Copyright © 2017 Morten Christoffersen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SketchTypographerPanelSketchPanel;
@class SketchTypographerPanelSketchPanelCell;

@protocol SketchTypographerPanelSketchPanelDataSource <NSObject>

- (NSUInteger)numberOfRowsForSketchTypographerPanelSketchPanel:(SketchTypographerPanelSketchPanel *)panel;
- (SketchTypographerPanelSketchPanelCell *)SketchTypographerPanelSketchPanel:(SketchTypographerPanelSketchPanel *)panel itemForRowAtIndex:(NSUInteger)index;
- (SketchTypographerPanelSketchPanelCell *)headerForSketchTypographerPanelSketchPanel:(SketchTypographerPanelSketchPanel *)panel;

@end
