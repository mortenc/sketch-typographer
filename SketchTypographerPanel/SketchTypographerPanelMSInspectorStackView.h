//
//  SketchTypographerPanelMSInspectorStackView.h
//  SketchTypographer
//
//  Created by Morten Christoffersen on 03/09/2017.
//  Copyright © 2017 Morten Christoffersen. All rights reserved.
//

#ifndef SketchTypographerPanelMSInspectorStackView_h
#define SketchTypographerPanelMSInspectorStackView_h

@protocol SketchTypographerPanelMSInspectorStackView <NSObject>

@property (nonatomic, strong) NSArray *sectionViewControllers;
- (void)reloadWithViewControllers:(NSArray *)controllers;

@end

#endif /* SketchTypographerPanelMSInspectorStackView_h */
