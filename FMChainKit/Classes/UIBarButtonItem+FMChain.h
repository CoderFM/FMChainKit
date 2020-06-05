//
//  UIBarButtonItem+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (FMChain)

@property(class, readonly)UIBarButtonItem *(^c_initTitle)(NSString *title, NSString *message);

@end

NS_ASSUME_NONNULL_END
