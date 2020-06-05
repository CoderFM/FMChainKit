//
//  UITextView+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (FMChain)

@property(class, readonly)UITextView *(^c_initText)(NSString *text);

@property(readonly)UITextView *(^c_text)(NSString *text);
@property(readonly)UITextView *(^c_attributeText)(NSAttributedString *attribute);
@property(readonly)UITextView *(^c_font)(UIFont *font);
@property(readonly)UITextView *(^c_textColor)(UIColor *textColor);
@property(readonly)UITextView *(^c_alignment)(NSTextAlignment aligment);

@end

NS_ASSUME_NONNULL_END
