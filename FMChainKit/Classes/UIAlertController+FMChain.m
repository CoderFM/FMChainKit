//
//  UIAlertController+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import "UIAlertController+FMChain.h"
#import "FMChainDefine.h"

@implementation UIAlertAction (FMChain)

+ (UIAlertAction * _Nonnull (^)(NSString * _Nonnull, UIAlertActionStyle, UIAlertActionFMChainHandleBlock _Nonnull))c_initTitleStyleHandle{
    return ^(NSString * _Nonnull title, UIAlertActionStyle style, UIAlertActionFMChainHandleBlock _Nonnull block){
        return [self actionWithTitle:title style:style handler:block];
    };
}

@end


@implementation UIAlertController (FMChain)

+ (UIAlertController * _Nonnull (^)(NSString * _Nonnull, NSString * _Nonnull))c_initAlertTitleMessage{
    return ^(NSString * _Nonnull title, NSString * _Nonnull message){
        return [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    };
}

+ (UIAlertController * _Nonnull (^)(NSString * _Nonnull, NSString * _Nonnull))c_initSheetTitleMessage{
    return ^(NSString * _Nonnull title, NSString * _Nonnull message){
        return [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    };
}

- (UIAlertController * _Nonnull (^)(UIAlertAction * _Nonnull))c_addAction{
    ChainWeakSelf;
    return ^(UIAlertAction *action){
        [weakSelf addAction:action];
        return weakSelf;
    };
}

- (UIAlertController * _Nonnull (^)(UIAlertControllerFMChainAddTFHandleBlock _Nonnull))c_addTextFieldHandle{
    ChainWeakSelf;
    return ^(UIAlertControllerFMChainAddTFHandleBlock handle){
        [weakSelf addTextFieldWithConfigurationHandler:handle];
        return weakSelf;
    };
}

@end
