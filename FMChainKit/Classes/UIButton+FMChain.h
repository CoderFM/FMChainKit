//
//  UIButton+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (FMChain)

@property(class, readonly)UIButton *(^c_initType)(UIButtonType type);
@property(class, readonly)UIButton *(^c_initTatgetAction)(id target, SEL action);

@property(readonly)UIButton *(^c_contentEdge)(UIEdgeInsets insets);
@property(readonly)UIButton *(^c_titleEdge)(UIEdgeInsets insets);
@property(readonly)UIButton *(^c_imageEdge)(UIEdgeInsets insets);

@property(readonly)UIButton *(^c_setTitleState)(NSString *title, UIControlState state);
@property(readonly)UIButton *(^c_setTitleColorState)(UIColor *color, UIControlState state);
@property(readonly)UIButton *(^c_setTitleShadowColorState)(UIColor *color, UIControlState state);
@property(readonly)UIButton *(^c_setImageState)(UIImage *image, UIControlState state);
@property(readonly)UIButton *(^c_setBgImageState)(UIImage *image, UIControlState state);
@property(readonly)UIButton *(^c_setAttrbuteTitleState)(NSAttributedString *title, UIControlState state);

@end

NS_ASSUME_NONNULL_END
