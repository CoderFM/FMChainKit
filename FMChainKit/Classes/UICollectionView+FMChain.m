//
//  UICollectionView+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/3.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import "UICollectionView+FMChain.h"
#import "FMChainDefine.h"

@implementation UICollectionView (FMChain)

+ (UICollectionView * _Nonnull (^)(UICollectionViewLayout * _Nonnull))c_initLayout{
    return ^(UICollectionViewLayout *layout){
        return [[self alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    };
}
+ (UICollectionView * _Nonnull (^)(CGRect, UICollectionViewLayout * _Nonnull))c_initFrameLayout{
    return ^(CGRect rect,UICollectionViewLayout *layout){
        return [[self alloc] initWithFrame:rect collectionViewLayout:layout];
    };
}
- (UICollectionView * _Nonnull (^)(id<UICollectionViewDelegate> _Nonnull))c_delegate{
    ChainWeakSelf;
    return ^(id<UICollectionViewDelegate> delegate){
        weakSelf.delegate = delegate;
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(id<UICollectionViewDataSource> _Nonnull))c_dataSource{
    ChainWeakSelf;
    return ^(id<UICollectionViewDataSource> dataSource){
        weakSelf.dataSource = dataSource;
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(UIView * _Nonnull))c_backgroundView{
    ChainWeakSelf;
    return ^(UIView *bg){
        weakSelf.backgroundView = bg;
        return weakSelf;
    };
}

- (UICollectionView * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))c_registerClass{
    ChainWeakSelf;
    return ^(Class cellClass){
        [weakSelf registerClass:cellClass forCellWithReuseIdentifier:NSStringFromClass(cellClass)];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))c_registerClassIdentifier{
    ChainWeakSelf;
    return ^(Class cellClass, NSString *iden){
        [weakSelf registerClass:cellClass forCellWithReuseIdentifier:iden];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))c_registerNibIdentifier{
    ChainWeakSelf;
    return ^(UINib *nib, NSString *iden){
        [weakSelf registerNib:nib forCellWithReuseIdentifier:iden];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))c_registerHeaderClass{
    ChainWeakSelf;
    return ^(Class viewClass){
        [weakSelf registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass(viewClass)];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))c_registerHeaderClassIdentifier{
    ChainWeakSelf;
    return ^(Class viewClass, NSString *iden){
        [weakSelf registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:iden];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(Class  _Nonnull __unsafe_unretained))c_registerFooterClass{
    ChainWeakSelf;
    return ^(Class viewClass){
        [weakSelf registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass(viewClass)];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))c_registerFooterClassIdentifier{
    ChainWeakSelf;
    return ^(Class viewClass, NSString *iden){
        [weakSelf registerClass:viewClass forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:iden];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull, NSString * _Nonnull))c_registerSupplement{
    ChainWeakSelf;
    return ^(Class viewClass, NSString *kind, NSString *iden){
        [weakSelf registerClass:viewClass forSupplementaryViewOfKind:kind withReuseIdentifier:iden];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull, NSString * _Nonnull))c_registerNibSupplement{
    ChainWeakSelf;
    return ^(UINib *nib, NSString *kind, NSString *iden){
        [weakSelf registerNib:nib forSupplementaryViewOfKind:kind withReuseIdentifier:iden];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(UICollectionViewLayout * _Nonnull))c_layout{
    ChainWeakSelf;
    return ^(UICollectionViewLayout *layout){
        weakSelf.collectionViewLayout = layout;
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSIndexPath * _Nonnull, BOOL, UICollectionViewScrollPosition))c_selectItem{
    ChainWeakSelf;
    return ^(NSIndexPath *indexPath, BOOL ani, UICollectionViewScrollPosition position){
        [weakSelf selectItemAtIndexPath:indexPath animated:ani scrollPosition:position];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSIndexPath * _Nonnull, BOOL, UICollectionViewScrollPosition))c_scrollToItem{
    ChainWeakSelf;
    return ^(NSIndexPath *indexPath, BOOL ani, UICollectionViewScrollPosition position){
        [weakSelf scrollToItemAtIndexPath:indexPath atScrollPosition:position animated:ani];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSIndexSet * _Nonnull))c_insertSections{
    ChainWeakSelf;
    return ^(NSIndexSet *sections){
        [weakSelf insertSections:sections];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSIndexSet * _Nonnull))c_deleteSections{
    ChainWeakSelf;
    return ^(NSIndexSet *sections){
        [weakSelf deleteSections:sections];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSIndexSet * _Nonnull))c_reloadSections{
    ChainWeakSelf;
    return ^(NSIndexSet *sections){
        [weakSelf reloadSections:sections];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSInteger, NSInteger))c_moveSectionTo{
    ChainWeakSelf;
    return ^(NSInteger section, NSInteger to){
        [weakSelf moveSection:section toSection:to];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSArray<NSIndexPath *> * _Nonnull))c_insertItems{
    ChainWeakSelf;
    return ^(NSArray<NSIndexPath *> *indexPaths){
        [weakSelf insertItemsAtIndexPaths:indexPaths];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSArray<NSIndexPath *> * _Nonnull))c_deleteItems{
    ChainWeakSelf;
    return ^(NSArray<NSIndexPath *> *indexPaths){
        [weakSelf deleteItemsAtIndexPaths:indexPaths];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSArray<NSIndexPath *> * _Nonnull))c_reloadItems{
    ChainWeakSelf;
    return ^(NSArray<NSIndexPath *> *indexPaths){
        [weakSelf reloadItemsAtIndexPaths:indexPaths];
        return weakSelf;
    };
}
- (UICollectionView * _Nonnull (^)(NSIndexPath * _Nonnull, NSIndexPath * _Nonnull))c_moveItemTo{
    ChainWeakSelf;
    return ^(NSIndexPath *indexPath, NSIndexPath *to){
        [weakSelf moveItemAtIndexPath:indexPath toIndexPath:to];
        return weakSelf;
    };
}
@end
