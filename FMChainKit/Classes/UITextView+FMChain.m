//
//  UITextView+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import "UITextView+FMChain.h"
#import "FMChainDefine.h"

@implementation UITextView (FMChain)

+ (UITextView * _Nonnull (^)(NSString * _Nonnull))c_initText{
    return ^(NSString *text){
        UITextView *tf = [[self alloc] init];
        tf.text = text;
        return tf;
    };
}

- (UITextView * _Nonnull (^)(NSString * _Nonnull))c_text{
    ChainWeakSelf;
    return ^(NSString *text){
        weakSelf.text = text;
        return weakSelf;
    };
}

- (UITextView * _Nonnull (^)(UIFont * _Nonnull))c_font{
    ChainWeakSelf;
    return ^(UIFont *font){
        weakSelf.font = font;
        return weakSelf;
    };
}

- (UITextView * _Nonnull (^)(UIColor * _Nonnull))c_textColor{
    ChainWeakSelf;
    return ^(UIColor *color){
        weakSelf.textColor = color;
        return weakSelf;
    };
}

- (UITextView * _Nonnull (^)(NSTextAlignment))c_alignment{
    ChainWeakSelf;
    return ^(NSTextAlignment alignment){
        weakSelf.textAlignment = alignment;
        return weakSelf;
    };
}

- (UITextView * _Nonnull (^)(NSAttributedString * _Nonnull))c_attributeText{
    ChainWeakSelf;
    return ^(NSAttributedString *attr){
        weakSelf.attributedText = attr;
        return weakSelf;
    };
}


@end
