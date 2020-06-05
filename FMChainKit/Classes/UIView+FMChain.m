//
//  UIView+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2019/12/24.
//  Copyright © 2019 郑桂华. All rights reserved.
//

#import "UIView+FMChain.h"
#import "FMChainDefine.h"

@implementation UIView (FMChain)

+ (UIView * _Nonnull (^)(CGRect))c_initFrame{
    return ^(CGRect frame){
        return [[self alloc] initWithFrame:frame];
    };
}

+ (instancetype)c_init{
    return [[self alloc] init];
}

- (UIView *(^)(CGRect))c_frame{
    ChainWeakSelf;
    return ^(CGRect frame){
        weakSelf.frame = frame;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(CGRect))c_bounds{
    ChainWeakSelf;
    return ^(CGRect bounds){
        weakSelf.bounds = bounds;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(CGPoint))c_center{
    ChainWeakSelf;
    return ^(CGPoint center){
        weakSelf.center = center;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(CGAffineTransform))c_transform{
    ChainWeakSelf;
    return ^(CGAffineTransform trans){
        weakSelf.transform = trans;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(CATransform3D))c_transform3D{
    ChainWeakSelf;
    return ^(CATransform3D trans){
        weakSelf.layer.transform = trans;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))c_addSub{
    ChainWeakSelf;
    return ^(UIView *view){
        [weakSelf addSubview:view];
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))c_inView{
    ChainWeakSelf;
    return ^(UIView *view){
        [view addSubview:weakSelf];
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull, NSInteger))c_insertSubAtIndex{
    ChainWeakSelf;
    return ^(UIView *view ,NSInteger index){
        [weakSelf insertSubview:view atIndex:index];
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(NSInteger, NSInteger))c_exchangeSub{
    ChainWeakSelf;
    return ^(NSInteger oragin ,NSInteger index){
        [weakSelf exchangeSubviewAtIndex:oragin withSubviewAtIndex:index];
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))c_insetSubBelow{
    ChainWeakSelf;
    return ^(UIView *view ,UIView *below){
        [weakSelf insertSubview:view belowSubview:below];
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull, UIView * _Nonnull))c_insetSubAbove{
    ChainWeakSelf;
    return ^(UIView *view ,UIView *above){
        [weakSelf insertSubview:view aboveSubview:above];
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))c_mask{
    ChainWeakSelf;
    return ^(UIView *mask){
        weakSelf.maskView = mask;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))c_bringFront{
    ChainWeakSelf;
    return ^(UIView *front){
        [weakSelf bringSubviewToFront:front];
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIView * _Nonnull))c_sendBack{
    ChainWeakSelf;
    return ^(UIView *back){
        [weakSelf sendSubviewToBack:back];
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(BOOL))c_clips{
    ChainWeakSelf;
    return ^(BOOL clips){
        weakSelf.clipsToBounds = clips;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(CGFloat))c_alpha{
    ChainWeakSelf;
    return ^(CGFloat alpha){
        weakSelf.alpha = alpha;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(BOOL))c_opaque{
    ChainWeakSelf;
    return ^(BOOL opaque){
        weakSelf.opaque = opaque;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(BOOL))c_hidden{
    ChainWeakSelf;
    return ^(BOOL hidden){
        weakSelf.hidden = hidden;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull))c_bgColor{
    ChainWeakSelf;
    return ^(UIColor *bg){
        weakSelf.backgroundColor = bg;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull))c_tintColor{
    ChainWeakSelf;
    return ^(UIColor *tint){
        weakSelf.tintColor = tint;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(NSInteger))c_tag{
    ChainWeakSelf;
    return ^(NSInteger tag){
        weakSelf.tag = tag;
        return weakSelf;
    };
}

- (UIView * _Nonnull (^)(UIViewContentMode))c_contentMode{
    ChainWeakSelf;
    return ^(UIViewContentMode mode){
        weakSelf.contentMode = mode;
        return weakSelf;
    };
}

@end
