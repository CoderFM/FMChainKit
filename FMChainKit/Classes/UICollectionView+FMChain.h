//
//  UICollectionView+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/3.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (FMChain)

@property(class, readonly)UICollectionView *(^c_initLayout)(UICollectionViewLayout *layout);
@property(class, readonly)UICollectionView *(^c_initFrameLayout)(CGRect frame, UICollectionViewLayout *layout);

@property(readonly)UICollectionView *(^c_delegate)(id<UICollectionViewDelegate> delegate);
@property(readonly)UICollectionView *(^c_dataSource)(id<UICollectionViewDataSource> dataSource);

@property(readonly)UICollectionView *(^c_backgroundView)(UIView *background);

@property(readonly)UICollectionView *(^c_registerClass)(Class cellClass);
@property(readonly)UICollectionView *(^c_registerClassIdentifier)(Class cellClass, NSString *identifier);

@property(readonly)UICollectionView *(^c_registerNibIdentifier)(UINib *nib, NSString *identifier);

@property(readonly)UICollectionView *(^c_registerHeaderClass)(Class headerClass);
@property(readonly)UICollectionView *(^c_registerHeaderClassIdentifier)(Class headerClass, NSString *identifier);

@property(readonly)UICollectionView *(^c_registerFooterClass)(Class footerClass);
@property(readonly)UICollectionView *(^c_registerFooterClassIdentifier)(Class footerClass, NSString *identifier);

@property(readonly)UICollectionView *(^c_registerSupplement)(Class viewClass, NSString *kind, NSString *identifier);
@property(readonly)UICollectionView *(^c_registerNibSupplement)(UINib *nib, NSString *kind, NSString *identifier);

@property(readonly)UICollectionView *(^c_layout)(UICollectionViewLayout *layout);

@property(readonly)UICollectionView *(^c_selectItem)(NSIndexPath *indexPath, BOOL animated,UICollectionViewScrollPosition position);

@property(readonly)UICollectionView *(^c_scrollToItem)(NSIndexPath *indexPath, BOOL animated,UICollectionViewScrollPosition position);

@property(readonly)UICollectionView *(^c_insertSections)(NSIndexSet *sections);
@property(readonly)UICollectionView *(^c_deleteSections)(NSIndexSet *sections);
@property(readonly)UICollectionView *(^c_reloadSections)(NSIndexSet *sections);
@property(readonly)UICollectionView *(^c_moveSectionTo)(NSInteger section, NSInteger toSection);

@property(readonly)UICollectionView *(^c_insertItems)(NSArray<NSIndexPath *> *indexPaths);
@property(readonly)UICollectionView *(^c_deleteItems)(NSArray<NSIndexPath *> *indexPaths);
@property(readonly)UICollectionView *(^c_reloadItems)(NSArray<NSIndexPath *> *indexPaths);
@property(readonly)UICollectionView *(^c_moveItemTo)(NSIndexPath *indexPath, NSIndexPath *toIndexPath);

@end

NS_ASSUME_NONNULL_END
