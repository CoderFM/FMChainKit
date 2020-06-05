//
//  UILabel+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2019/12/24.
//  Copyright © 2019 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (FMChain)

@property(class, readonly)UILabel *(^c_initText)(NSString *text);

@property(readonly)UILabel *(^c_text)(NSString *text);
@property(readonly)UILabel *(^c_font)(UIFont *font);
@property(readonly)UILabel *(^c_textColor)(UIColor *textColor);
@property(readonly)UILabel *(^c_shadowColor)(UIColor *shadowColor);
@property(readonly)UILabel *(^c_shadowOffset)(CGSize shadowOffset);
@property(readonly)UILabel *(^c_alignment)(NSTextAlignment aligment);
@property(readonly)UILabel *(^c_lineBreak)(NSLineBreakMode breakModel);
@property(readonly)UILabel *(^c_attributeText)(NSAttributedString *attribute);
@property(readonly)UILabel *(^c_lines)(NSInteger lines);

@property(readonly)UILabel *(^c_highlightedTextColor)(UIColor *color);
@property(readonly)UILabel *(^c_highlighted)(BOOL highlighted);

@property(readonly)UILabel *(^c_preferredMaxLayoutWidth)(CGFloat width);



@end

NS_ASSUME_NONNULL_END
