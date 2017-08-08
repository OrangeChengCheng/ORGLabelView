//
//  ORGGlowLabel.h
//  ORGLabelView
//
//  Created by ORG on 2017/8/7.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ORGGlowLabel : UILabel

{
    CGSize glowOffset;
    
    CGFloat glowAmount;
    
    UIColor *glowColor;
    
    
    
    CGColorSpaceRef colorSpaceRef;
    
    CGColorRef glowColorRef;
}

@property (nonatomic, assign) CGSize glowOffset;

@property (nonatomic, assign) CGFloat glowAmount;

@property (nonatomic, strong) UIColor *glowColor;


@end
