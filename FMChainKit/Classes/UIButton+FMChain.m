//
//  UIButton+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import "UIButton+FMChain.h"
#import "FMChainDefine.h"

@implementation UIButton (FMChain)

+ (UIButton * _Nonnull (^)(UIButtonType))c_initType{
    return ^(UIButtonType type){
        return [self buttonWithType:type];
    };
}

+ (UIButton * _Nonnull (^)(id _Nonnull, SEL _Nonnull))c_initTatgetAction{
    return ^(id target, SEL action){
        UIButton *btn = [[self alloc] init];
        [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        return btn;
    };
}

- (UIButton * _Nonnull (^)(UIEdgeInsets))c_contentEdge{
    ChainWeakSelf;
    return ^(UIEdgeInsets insets){
        weakSelf.contentEdgeInsets = insets;
        return weakSelf;
    };
}

- (UIButton * _Nonnull (^)(UIEdgeInsets))c_titleEdge{
    ChainWeakSelf;
    return ^(UIEdgeInsets insets){
        weakSelf.titleEdgeInsets = insets;
        return weakSelf;
    };
}

- (UIButton * _Nonnull (^)(UIEdgeInsets))c_imageEdge{
    ChainWeakSelf;
    return ^(UIEdgeInsets insets){
        weakSelf.imageEdgeInsets = insets;
        return weakSelf;
    };
}

- (UIButton * _Nonnull (^)(NSString * _Nonnull, UIControlState))c_setTitleState{
    ChainWeakSelf;
    return ^(NSString * _Nonnull title, UIControlState state){
        [weakSelf setTitle:title forState:state];
        return weakSelf;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull, UIControlState))c_setTitleColorState{
    ChainWeakSelf;
    return ^(UIColor * _Nonnull color, UIControlState state){
        [weakSelf setTitleColor:color forState:state];
        return weakSelf;
    };
}

- (UIButton * _Nonnull (^)(UIColor * _Nonnull, UIControlState))c_setTitleShadowColorState{
    ChainWeakSelf;
    return ^(UIColor * _Nonnull color, UIControlState state){
        [weakSelf setTitleShadowColor:color forState:state];
        return weakSelf;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull, UIControlState))c_setImageState{
    ChainWeakSelf;
    return ^(UIImage * _Nonnull image, UIControlState state){
        [weakSelf setImage:image forState:state];
        return weakSelf;
    };
}

- (UIButton * _Nonnull (^)(UIImage * _Nonnull, UIControlState))c_setBgImageState{
    ChainWeakSelf;
    return ^(UIImage * _Nonnull image, UIControlState state){
        [weakSelf setBackgroundImage:image forState:state];
        return weakSelf;
    };
}

- (UIButton * _Nonnull (^)(NSAttributedString * _Nonnull, UIControlState))c_setAttrbuteTitleState{
    ChainWeakSelf;
    return ^(NSAttributedString * _Nonnull attr, UIControlState state){
        [weakSelf setAttributedTitle:attr forState:state];
        return weakSelf;
    };
}

@end
