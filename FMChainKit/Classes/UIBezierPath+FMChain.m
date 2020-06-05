//
//  UIBezierPath+FMChain.m
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/3.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import "UIBezierPath+FMChain.h"
#import "FMChainDefine.h"

@implementation UIBezierPath (FMChain)

+ (UIBezierPath * _Nonnull (^)(void))c_path{
    return ^{
        return [UIBezierPath bezierPath];
    };
}

+ (UIBezierPath * _Nonnull (^)(CGRect))c_pathRect{
    return ^(CGRect rect){
        return [UIBezierPath bezierPathWithRect:rect];
    };
}

+ (UIBezierPath * _Nonnull (^)(CGRect))c_pathOval{
    return ^(CGRect rect){
        return [UIBezierPath bezierPathWithOvalInRect:rect];
    };
}

+ (UIBezierPath * _Nonnull (^)(CGRect, CGFloat))c_pathRounde{
    return ^(CGRect rect, CGFloat redius){
        return [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:redius];
    };
}

+ (UIBezierPath * _Nonnull (^)(CGRect, UIRectCorner, CGSize))c_pathRoundeCorners{
    return ^(CGRect rect, UIRectCorner corners, CGSize radii){
        return [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:radii];
    };
}

+ (UIBezierPath * _Nonnull (^)(CGPoint, CGFloat, CGFloat, CGFloat, BOOL))c_pathArc{
    return ^(CGPoint center, CGFloat radius, CGFloat start, CGFloat end, BOOL clock){
        return [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:clock];
    };
}

+ (UIBezierPath * _Nonnull (^)(CGPathRef _Nonnull))c_pathCGPath{
    return ^(CGPathRef path){
        return [UIBezierPath bezierPathWithCGPath:path];
    };
}

- (UIBezierPath * _Nonnull (^)(CGPoint))c_moveTo{
    ChainWeakSelf;
    return ^(CGPoint point){
        [weakSelf moveToPoint:point];
        return weakSelf;
    };
}

- (UIBezierPath * _Nonnull (^)(CGPoint))c_addLineTo{
    ChainWeakSelf;
    return ^(CGPoint point){
        [weakSelf addLineToPoint:point];
        return weakSelf;
    };
}

- (UIBezierPath * _Nonnull (^)(CGPoint, CGPoint, CGPoint))c_addCurveTo{
    ChainWeakSelf;
    return ^(CGPoint end, CGPoint c1, CGPoint c2){
        [weakSelf addCurveToPoint:end controlPoint1:c1 controlPoint2:c2];
        return weakSelf;
    };
}

- (UIBezierPath * _Nonnull (^)(CGPoint, CGPoint))c_addQuadCurveTo{
    ChainWeakSelf;
    return ^(CGPoint end, CGPoint c){
        [weakSelf addQuadCurveToPoint:end controlPoint:c];
        return weakSelf;
    };
}

- (UIBezierPath * _Nonnull (^)(CGPoint, CGFloat, CGFloat, CGFloat, BOOL))c_addArc{
    ChainWeakSelf;
    return ^(CGPoint center, CGFloat radius, CGFloat start, CGFloat end, BOOL clock){
        [weakSelf addArcWithCenter:center radius:radius startAngle:start endAngle:end clockwise:clock];
        return weakSelf;
    };
}

- (UIBezierPath * _Nonnull (^)(UIBezierPath * _Nonnull))c_append{
    ChainWeakSelf;
    return ^(UIBezierPath *path){
        [weakSelf appendPath:path];
        return weakSelf;
    };
}

- (UIBezierPath * _Nonnull (^)(void))c_reversing{
    ChainWeakSelf;
    return ^{
        UIBezierPath *path = [weakSelf bezierPathByReversingPath];
        return path;
    };
}

- (UIBezierPath * _Nonnull (^)(CGAffineTransform))c_apply{
    ChainWeakSelf;
    return ^(CGAffineTransform transform){
        [weakSelf applyTransform:transform];
        return weakSelf;
    };
}

- (UIBezierPath * _Nonnull (^)(CGFloat))c_lineWidth{
    ChainWeakSelf;
    return ^(CGFloat width){
        weakSelf.lineWidth = width;
        return weakSelf;
    };
}
- (UIBezierPath * _Nonnull (^)(CGLineCap))c_lineCap{
    ChainWeakSelf;
    return ^(CGLineCap cap){
        weakSelf.lineCapStyle = cap;
        return weakSelf;
    };
}
- (UIBezierPath * _Nonnull (^)(CGLineJoin))c_lineJoin{
    ChainWeakSelf;
    return ^(CGLineJoin join){
        weakSelf.lineJoinStyle = join;
        return weakSelf;
    };
}
- (UIBezierPath * _Nonnull (^)(const CGFloat * _Nonnull, NSInteger, CGFloat))c_setLineDash{
    ChainWeakSelf;
    return ^(const CGFloat * _Nonnull pattern, NSInteger count, CGFloat phase){
        [weakSelf setLineDash:pattern count:count phase:phase];
        return weakSelf;
    };
}
- (UIBezierPath * _Nonnull (^)(void))c_fill{
    ChainWeakSelf;
    return ^{
        [weakSelf fill];
        return weakSelf;
    };
}
- (UIBezierPath * _Nonnull (^)(void))c_stroke{
    ChainWeakSelf;
    return ^{
        [weakSelf stroke];
        return weakSelf;
    };
}
- (UIBezierPath * _Nonnull (^)(void))c_addClip{
    ChainWeakSelf;
    return ^{
        [weakSelf addClip];
        return weakSelf;
    };
}
- (UIBezierPath * _Nonnull (^)(CGBlendMode, CGFloat))c_fillBlendMode{
    ChainWeakSelf;
    return ^(CGBlendMode mode, CGFloat alpha){
        [weakSelf fillWithBlendMode:mode alpha:alpha];
        return weakSelf;
    };
}
- (UIBezierPath * _Nonnull (^)(CGBlendMode, CGFloat))c_strokeBlendMode{
    ChainWeakSelf;
    return ^(CGBlendMode mode, CGFloat alpha){
        [weakSelf strokeWithBlendMode:mode alpha:alpha];
        return weakSelf;
    };
}
@end
