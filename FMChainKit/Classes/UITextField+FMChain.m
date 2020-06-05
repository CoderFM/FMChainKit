//
//  UITextField+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import "UITextField+FMChain.h"
#import "FMChainDefine.h"

@implementation UITextField (FMChain)

+ (UITextField * _Nonnull (^)(NSString * _Nonnull))c_initText{
    return ^(NSString *text){
        UITextField *tf = [[self alloc] init];
        tf.text = text;
        return tf;
    };
}

+ (UITextField * _Nonnull (^)(NSString * _Nonnull))c_initPlaceholder{
    return ^(NSString *placeholder){
        UITextField *tf = [[self alloc] init];
        tf.placeholder = placeholder;
        return tf;
    };
}

- (UITextField * _Nonnull (^)(NSString * _Nonnull))c_text{
    ChainWeakSelf;
    return ^(NSString *text){
        weakSelf.text = text;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UIFont * _Nonnull))c_font{
    ChainWeakSelf;
    return ^(UIFont *font){
        weakSelf.font = font;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UIColor * _Nonnull))c_textColor{
    ChainWeakSelf;
    return ^(UIColor *color){
        weakSelf.textColor = color;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(NSTextAlignment))c_alignment{
    ChainWeakSelf;
    return ^(NSTextAlignment alignment){
        weakSelf.textAlignment = alignment;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(NSAttributedString * _Nonnull))c_attributeText{
    ChainWeakSelf;
    return ^(NSAttributedString *attr){
        weakSelf.attributedText = attr;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(NSString * _Nonnull))c_placeholder{
    ChainWeakSelf;
    return ^(NSString *text){
        weakSelf.placeholder = text;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(NSAttributedString * _Nonnull))c_attributePlaceholder{
    ChainWeakSelf;
    return ^(NSAttributedString *attr){
        weakSelf.attributedPlaceholder = attr;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UITextBorderStyle))c_borderStyle{
    ChainWeakSelf;
    return ^(UITextBorderStyle style){
        weakSelf.borderStyle = style;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UIImage * _Nonnull))c_background{
    ChainWeakSelf;
    return ^(UIImage *image){
        weakSelf.background = image;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UIImage * _Nonnull))c_disabledBackground{
    ChainWeakSelf;
    return ^(UIImage *image){
        weakSelf.disabledBackground = image;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UITextFieldViewMode))c_clearButtonMode{
    ChainWeakSelf;
    return ^(UITextFieldViewMode mode){
        weakSelf.clearButtonMode = mode;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UITextFieldViewMode))c_leftViewMode{
    ChainWeakSelf;
    return ^(UITextFieldViewMode mode){
        weakSelf.leftViewMode = mode;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UITextFieldViewMode))c_rightViewMode{
    ChainWeakSelf;
    return ^(UITextFieldViewMode mode){
        weakSelf.rightViewMode = mode;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UIView * _Nonnull))c_leftView{
    ChainWeakSelf;
    return ^(UIView *view){
        weakSelf.leftView = view;
        return weakSelf;
    };
}

- (UITextField * _Nonnull (^)(UIView * _Nonnull))c_rightView{
    ChainWeakSelf;
    return ^(UIView *view){
        weakSelf.rightView = view;
        return weakSelf;
    };
}

@end
