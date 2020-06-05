//
//  UIAlertController+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^UIAlertActionFMChainHandleBlock)(UIAlertAction *action);

@interface UIAlertAction (FMChain)

@property(class, readonly)UIAlertAction *(^c_initTitleStyleHandle)(NSString *title, UIAlertActionStyle style, UIAlertActionFMChainHandleBlock handle);

@end


typedef void(^UIAlertControllerFMChainAddTFHandleBlock)(UITextField *textField);

@interface UIAlertController (FMChain)

@property(class, readonly)UIAlertController *(^c_initAlertTitleMessage)(NSString *title, NSString *message);
@property(class, readonly)UIAlertController *(^c_initSheetTitleMessage)(NSString *title, NSString *message);

@property(readonly)UIAlertController *(^c_addAction)(UIAlertAction *action);
@property(readonly)UIAlertController *(^c_addTextFieldHandle)(UIAlertControllerFMChainAddTFHandleBlock handle);
@end


NS_ASSUME_NONNULL_END
