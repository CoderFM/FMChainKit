//
//  UIControl+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2019/12/24.
//  Copyright © 2019 郑桂华. All rights reserved.
//

#import "UIControl+FMChain.h"
#import "FMChainDefine.h"

@implementation UIControl (FMChain)

- (UIControl * _Nonnull (^)(BOOL))c_enabled{
    ChainWeakSelf;
    return ^(BOOL enabled){
        weakSelf.enabled = enabled;
        return weakSelf;
    };
}

- (UIControl * _Nonnull (^)(BOOL))c_selected{
    ChainWeakSelf;
    return ^(BOOL selected){
        weakSelf.selected = selected;
        return weakSelf;
    };
}

- (UIControl * _Nonnull (^)(BOOL))c_hightlighted{
    ChainWeakSelf;
    return ^(BOOL hightlight){
        weakSelf.highlighted = hightlight;
        return weakSelf;
    };
}

- (UIControl * _Nonnull (^)(UIControlContentVerticalAlignment))c_verAlig{
    ChainWeakSelf;
    return ^(UIControlContentVerticalAlignment alig){
        weakSelf.contentVerticalAlignment = alig;
        return weakSelf;
    };
}

- (UIControl * _Nonnull (^)(UIControlContentHorizontalAlignment))c_horAlig{
    ChainWeakSelf;
    return ^(UIControlContentHorizontalAlignment alig){
        weakSelf.contentHorizontalAlignment = alig;
        return weakSelf;
    };
}

- (UIControl * _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))c_addTargetAction{
    ChainWeakSelf;
    return ^(id target, SEL action, UIControlEvents evens){
        [weakSelf addTarget:target action:action forControlEvents:evens];
        return weakSelf;
    };
}

- (UIControl * _Nonnull (^)(id _Nonnull, SEL _Nonnull, UIControlEvents))c_removeTargetAction{
    ChainWeakSelf;
    return ^(id target, SEL action, UIControlEvents evens){
        [weakSelf removeTarget:target action:action forControlEvents:evens];
        return weakSelf;
    };
}

- (UIControl * _Nonnull (^)(SEL _Nonnull, id _Nonnull, UIEvent * _Nonnull))c_sendAction{
    ChainWeakSelf;
    return ^(SEL action, id target, UIEvent *event){
        [weakSelf sendAction:action to:target forEvent:event];
        return weakSelf;
    };
}

@end
