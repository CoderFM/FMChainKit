//
//  UIImageView+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/3/10.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (FMChain)
@property(class, readonly)UIImageView *(^c_initImage)(UIImage *image);
@property(class, readonly)UIImageView *(^c_initImageAndHighlightedImage)(UIImage *image, UIImage *hightlightedImage);

@property(readonly)UIImageView *(^c_image)(UIImage *image);
@property(readonly)UIImageView *(^c_highlightedImage)(UIImage *highlightedImage);



@end

NS_ASSUME_NONNULL_END
