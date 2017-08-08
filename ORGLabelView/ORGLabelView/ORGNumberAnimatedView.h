//
//  ORGNumberAnimatedView.h
//  ORGLabelView
//
//  Created by ORG on 2017/8/8.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ORGNumberAnimatedView : UIView

// 内容相关
@property (nonatomic, strong) NSNumber *number;                 // 显示数字
// 样式相关
@property (nonatomic, strong) UIColor *textColor;               // 字体颜色
@property (nonatomic, strong) UIFont *font;                     // 字体大小
@property (nonatomic, assign) NSUInteger density;               // 滚动数字的密度（默认5个）
@property (nonatomic, assign) NSUInteger minLength;             // 最小显示长度，不够补零
@property (nonatomic, assign) NSUInteger textDistance;          // 字符之间的间距(默认为3)
@property (nonatomic, assign) BOOL needUnderline;               // 文字是否需要下划线(默认为NO)
@property (nonatomic, assign) NSUInteger underlineDistance;     // 下划线和文字的距离(默认为3)
@property (nonatomic, assign) CGFloat underlineWidth;           // 下划线高度(默认为1)
@property (nonatomic, assign) BOOL needGlowLabel;               // 文字是否发光
@property (nonatomic, strong) UIColor *glowColor;                // 发光颜色

// 动画相关
@property (nonatomic, assign) NSTimeInterval duration;          // 动画总持续时间
@property (nonatomic, assign) NSTimeInterval durationOffset;    // 相邻两个数字动画持续时间间隔
@property (nonatomic, assign) BOOL isAscending;                 // 方向，默认为NO，向下

- (void)reloadView;
- (void)startAnimation;
- (void)stopAnimation;

@end
