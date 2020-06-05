//
//  UIWindow+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/2.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIWindow (FMChain)

@property(class, readonly)UIWindow *(^c_initScene)(UIWindowScene *scene) API_AVAILABLE(ios(13.0));

@property(readonly)UIWindow *(^c_level)(UIWindowLevel level);
@property(readonly)UIWindow *(^c_becomeKey)(void);
@property(readonly)UIWindow *(^c_resignKey)(void);
@property(readonly)UIWindow *(^c_makeKey)(void);
@property(readonly)UIWindow *(^c_makeKeyAndVisible)(void);

@property(readonly)UIWindow *(^c_rootViewController)(UIViewController *root);

@end

NS_ASSUME_NONNULL_END
