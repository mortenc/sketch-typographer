//
//  SketchTypographerPanelSketchPanelCell.m
//  SketchTypographer
//
//  Created by Morten Christoffersen on 03/09/2017.
//  Copyright © 2017 Morten Christoffersen. All rights reserved.
//

#import "SketchTypographerPanelSketchPanelCell.h"

@interface SketchTypographerPanelSketchPanelCell ()

@end

@implementation SketchTypographerPanelSketchPanelCell

- (NSView *)view {
    return self;
}

+ (instancetype)loadNibNamed:(NSString *)nibName {
    NSNib *nib = [[NSNib alloc] initWithNibNamed:nibName bundle:[NSBundle bundleForClass:[self class]]];
    NSArray *views;
    [nib instantiateWithOwner:nil topLevelObjects:&views];

    NSArray *filtered = [views filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
        return [evaluatedObject isKindOfClass:[self class]];
    }]];

    return [filtered firstObject];
}

@end
