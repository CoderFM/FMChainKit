//
//  UIWindow+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import "UIWindow+FMChain.h"
#import "FMChainDefine.h"

@implementation UIWindow (FMChain)

+ (UIWindow * _Nonnull (^)(UIWindowScene * _Nonnull))c_initScene{
    return ^(UIWindowScene *scene){
        return [[self alloc] initWithWindowScene:scene];
    };
}

- (UIWindow * _Nonnull (^)(UIWindowLevel))c_level{
    ChainWeakSelf;
    return ^(UIWindowLevel level){
        weakSelf.windowLevel = level;
        return weakSelf;
    };
}

- (UIWindow * _Nonnull (^)(void))c_becomeKey{
    ChainWeakSelf;
    return ^(void){
        [weakSelf becomeKeyWindow];
        return weakSelf;
    };
}

- (UIWindow * _Nonnull (^)(void))c_resignKey{
    ChainWeakSelf;
    return ^(void){
        [weakSelf resignKeyWindow];
        return weakSelf;
    };
}

- (UIWindow * _Nonnull (^)(void))c_makeKey{
    ChainWeakSelf;
    return ^(void){
        [weakSelf makeKeyWindow];
        return weakSelf;
    };
}

- (UIWindow * _Nonnull (^)(void))c_makeKeyAndVisible{
    ChainWeakSelf;
    return ^(void){
        [weakSelf makeKeyAndVisible];
        return weakSelf;
    };
}

- (UIWindow * _Nonnull (^)(UIViewController * _Nonnull))c_rootViewController{
    ChainWeakSelf;
    return ^(UIViewController *root){
        weakSelf.rootViewController = root;
        return weakSelf;
    };
}

@end
