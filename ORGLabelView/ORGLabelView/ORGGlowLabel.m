//
//  ORGGlowLabel.m
//  ORGLabelView
//
//  Created by ORG on 2017/8/7.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "ORGGlowLabel.h"

@implementation ORGGlowLabel

@synthesize glowColor, glowOffset, glowAmount;

- (void)setGlowColor:(UIColor *)newGlowColor

{
    
    if (newGlowColor != glowColor) {
        
        glowColor = nil;
        
        CGColorRelease(glowColorRef);
        
        
        
        glowColor = newGlowColor;
        
        glowColorRef = CGColorCreate(colorSpaceRef, CGColorGetComponents(glowColor.CGColor));
        
    }
    
}



- (void)initialize {
    
    colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    
    
    
    self.glowOffset = CGSizeMake(0.0, 0.0);
    
    self.glowAmount = 15.0;
    
    self.glowColor = [UIColor clearColor];
    
}



- (void)awakeFromNib {
    [super awakeFromNib];
    [self initialize];
    
}



- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if(self != nil) {
        
        [self initialize];
        
    }
    
    return self;
    
}



- (void)drawTextInRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(context);
    
    
    
    CGContextSetShadow(context, self.glowOffset, self.glowAmount);
    
    CGContextSetShadowWithColor(context, self.glowOffset, self.glowAmount, glowColorRef);
    
    
    
    [super drawTextInRect:rect];
    
    
    
    CGContextRestoreGState(context);
    
}



- (void)dealloc {
    
    CGColorRelease(glowColorRef);
    
    CGColorSpaceRelease(colorSpaceRef);
    
    glowColor = nil;
    
    
}

@end
