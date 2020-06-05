//
//  UIControl+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2019/12/24.
//  Copyright © 2019 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIControl (FMChain)

@property(readonly)UIControl *(^c_enabled)(BOOL enabled);
@property(readonly)UIControl *(^c_selected)(BOOL selected);
@property(readonly)UIControl *(^c_hightlighted)(BOOL hightlighted);

@property(readonly)UIControl *(^c_verAlig)(UIControlContentVerticalAlignment verAlig);
@property(readonly)UIControl *(^c_horAlig)(UIControlContentHorizontalAlignment horAlig);

@property(readonly)UIControl *(^c_addTargetAction)(id target, SEL action, UIControlEvents events);
@property(readonly)UIControl *(^c_removeTargetAction)(id target, SEL action, UIControlEvents events);

@property(readonly)UIControl *(^c_sendAction)(SEL action, id target, UIEvent *event);

@end

NS_ASSUME_NONNULL_END
