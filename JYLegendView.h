//
//  JYLegendView.h
//  JYRadarChart
//
//  Created by jy on 13-10-31.
//  Copyright (c) 2013年 wcode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JYLegendView : UIView

@property (nonatomic, copy) NSArray *titles;
@property (nonatomic, strong) NSMutableArray *colors;

#define JY_TEXT_SIZE(text, font) [text length] > 0 ? [text sizeWithAttributes : @{ NSFontAttributeName : font }] : CGSizeZero;
#define JY_DRAW_TEXT_AT_POINT(text, point, font) [text drawAtPoint : point withAttributes : @{ NSFontAttributeName:font }];
#define JY_DRAW_TEXT_IN_RECT(text, rect, font) [text drawInRect : rect withAttributes : @{ NSFontAttributeName:font }];

@end
