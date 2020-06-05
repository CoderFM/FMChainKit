//
//  UIView+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2019/12/24.
//  Copyright © 2019 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FMChain)

@property(class, readonly)UIView *(^c_initFrame)(CGRect frame);

+ (instancetype)c_init;

@property(readonly)UIView *(^c_frame)(CGRect frame);

@property(readonly)UIView *(^c_bounds)(CGRect bounds);

@property(readonly)UIView *(^c_center)(CGPoint center);

@property(readonly)UIView *(^c_transform)(CGAffineTransform transform);

@property(readonly)UIView *(^c_transform3D)(CATransform3D transform3D);


@property(readonly)UIView *(^c_addSub)(UIView *view);
///添加到参数view上
@property(readonly)UIView *(^c_inView)(UIView *view);

@property(readonly)UIView *(^c_insertSubAtIndex)(UIView *view, NSInteger index);

@property(readonly)UIView *(^c_exchangeSub)(NSInteger oragin, NSInteger index);

@property(readonly)UIView *(^c_insetSubBelow)(UIView *sub, UIView *below);

@property(readonly)UIView *(^c_insetSubAbove)(UIView *sub, UIView *above);

@property(readonly)UIView *(^c_mask)(UIView *mask);

@property(readonly)UIView *(^c_bringFront)(UIView *sub);

@property(readonly)UIView *(^c_sendBack)(UIView *sub);

@property(readonly)UIView *(^c_clips)(BOOL clips);

@property(readonly)UIView *(^c_alpha)(CGFloat alpha);

@property(readonly)UIView *(^c_opaque)(BOOL opaque);

@property(readonly)UIView *(^c_hidden)(BOOL hidden);

@property(readonly)UIView *(^c_bgColor)(UIColor *bgColor);

@property(readonly)UIView *(^c_tintColor)(UIColor *tintColor);

@property(readonly)UIView *(^c_tag)(NSInteger tag);

@property(readonly)UIView *(^c_contentMode)(UIViewContentMode mode);

@end

NS_ASSUME_NONNULL_END
