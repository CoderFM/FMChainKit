//
//  UIImageView+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/3/10.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import "UIImageView+FMChain.h"
#import "FMChainDefine.h"

@implementation UIImageView (FMChain)

+ (UIImageView * _Nonnull (^)(UIImage * _Nonnull))c_initImage{
    return ^(UIImage *image){
        UIImageView *imageV = [[self alloc] initWithImage:image];
        return imageV;
    };
}

+ (UIImageView * _Nonnull (^)(UIImage * _Nonnull, UIImage * _Nonnull))c_initImageAndHighlightedImage{
    return ^(UIImage *image, UIImage *hight){
        UIImageView *imageV = [[self alloc] initWithImage:image highlightedImage:hight];
        return imageV;
    };
}

- (UIImageView * _Nonnull (^)(UIImage * _Nonnull))c_image{
    ChainWeakSelf;
    return ^(UIImage *image){
        weakSelf.image = image;
        return weakSelf;
    };
}

- (UIImageView * _Nonnull (^)(UIImage * _Nonnull))c_highlightedImage{
    ChainWeakSelf;
    return ^(UIImage *image){
        weakSelf.highlightedImage = image;
        return weakSelf;
    };
}

@end
