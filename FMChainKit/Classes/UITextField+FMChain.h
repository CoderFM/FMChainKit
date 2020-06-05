//
//  UITextField+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (FMChain)

@property(class, readonly)UITextField *(^c_initText)(NSString *text);
@property(class, readonly)UITextField *(^c_initPlaceholder)(NSString *placeholder);

@property(readonly)UITextField *(^c_text)(NSString *text);
@property(readonly)UITextField *(^c_attributeText)(NSAttributedString *attribute);
@property(readonly)UITextField *(^c_font)(UIFont *font);
@property(readonly)UITextField *(^c_textColor)(UIColor *textColor);
@property(readonly)UITextField *(^c_alignment)(NSTextAlignment aligment);
@property(readonly)UITextField *(^c_borderStyle)(UITextBorderStyle style);
@property(readonly)UITextField *(^c_placeholder)(NSString *text);
@property(readonly)UITextField *(^c_attributePlaceholder)(NSAttributedString *attribute);

@property(readonly)UITextField *(^c_background)(UIImage *image);
@property(readonly)UITextField *(^c_disabledBackground)(UIImage *image);

@property(readonly)UITextField *(^c_clearButtonMode)(UITextFieldViewMode mode);
@property(readonly)UITextField *(^c_leftViewMode)(UITextFieldViewMode mode);
@property(readonly)UITextField *(^c_rightViewMode)(UITextFieldViewMode mode);

@property(readonly)UITextField *(^c_leftView)(UIView *view);
@property(readonly)UITextField *(^c_rightView)(UIView *view);

@end

NS_ASSUME_NONNULL_END
