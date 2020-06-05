//
//  UILabel+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2019/12/24.
//  Copyright © 2019 郑桂华. All rights reserved.
//

#import "UILabel+FMChain.h"
#import "FMChainDefine.h"

@implementation UILabel (FMChain)

+ (UILabel * _Nonnull (^)(NSString * _Nonnull))c_initText{
    return ^(NSString *text){
        UILabel *label = [[self alloc] init];
        label.text = text;
        return label;
    };
}

- (UILabel * _Nonnull (^)(NSString * _Nonnull))c_text{
    ChainWeakSelf;
    return ^(NSString *text){
        weakSelf.text = text;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(UIFont * _Nonnull))c_font{
    ChainWeakSelf;
    return ^(UIFont *font){
        weakSelf.font = font;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull))c_textColor{
    ChainWeakSelf;
    return ^(UIColor *color){
        weakSelf.textColor = color;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull))c_shadowColor{
    ChainWeakSelf;
    return ^(UIColor *color){
        weakSelf.shadowColor = color;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(CGSize))c_shadowOffset{
    ChainWeakSelf;
    return ^(CGSize offset){
        weakSelf.shadowOffset = offset;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(NSTextAlignment))c_alignment{
    ChainWeakSelf;
    return ^(NSTextAlignment alignment){
        weakSelf.textAlignment = alignment;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(NSLineBreakMode))c_lineBreak{
    ChainWeakSelf;
    return ^(NSLineBreakMode breakMode){
        weakSelf.lineBreakMode = breakMode;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(NSAttributedString * _Nonnull))c_attributeText{
    ChainWeakSelf;
    return ^(NSAttributedString *attr){
        weakSelf.attributedText = attr;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(NSInteger))c_lines{
    ChainWeakSelf;
    return ^(NSInteger lines){
        weakSelf.numberOfLines = lines;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(BOOL))c_highlighted{
    ChainWeakSelf;
    return ^(BOOL hight){
        weakSelf.highlighted = hight;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull))c_highlightedTextColor{
    ChainWeakSelf;
    return ^(UIColor *color){
        weakSelf.highlightedTextColor = color;
        return weakSelf;
    };
}

- (UILabel * _Nonnull (^)(CGFloat))c_preferredMaxLayoutWidth{
    ChainWeakSelf;
    return ^(CGFloat width){
        weakSelf.preferredMaxLayoutWidth = width;
        return weakSelf;
    };
}

@end
