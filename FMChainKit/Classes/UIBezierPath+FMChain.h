//
//  UIBezierPath+FMChain.h
//  FMChainKitDemo
//
//  Created by 郑桂华 on 2020/6/3.
//  Copyright © 2020 郑桂华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBezierPath (FMChain)

@property(class, readonly)UIBezierPath *(^c_path)(void);
@property(class, readonly)UIBezierPath *(^c_pathRect)(CGRect rect);

@property(class, readonly)UIBezierPath *(^c_pathOval)(CGRect rect);
@property(class, readonly)UIBezierPath *(^c_pathRounde)(CGRect rect, CGFloat corner);
@property(class, readonly)UIBezierPath *(^c_pathRoundeCorners)(CGRect rect, UIRectCorner corners, CGSize radii);
@property(class, readonly)UIBezierPath *(^c_pathArc)(CGPoint center, CGFloat radius, CGFloat start, CGFloat end, BOOL close);
@property(class, readonly)UIBezierPath *(^c_pathCGPath)(CGPathRef cgPath);

@property(readonly)UIBezierPath *(^c_moveTo)(CGPoint point);
@property(readonly)UIBezierPath *(^c_addLineTo)(CGPoint point);

@property(readonly)UIBezierPath *(^c_addCurveTo)(CGPoint endPoint, CGPoint control1, CGPoint control2);

@property(readonly)UIBezierPath *(^c_addQuadCurveTo)(CGPoint endPoint, CGPoint control);

@property(readonly)UIBezierPath *(^c_addArc)(CGPoint center, CGFloat radius, CGFloat start, CGFloat end, BOOL clock);

@property(readonly)UIBezierPath *(^c_append)(UIBezierPath *path);

@property(readonly)UIBezierPath *(^c_reversing)(void);

@property(readonly)UIBezierPath *(^c_apply)(CGAffineTransform transform);

@property(readonly)UIBezierPath *(^c_lineWidth)(CGFloat width);
@property(readonly)UIBezierPath *(^c_lineCap)(CGLineCap style);
@property(readonly)UIBezierPath *(^c_lineJoin)(CGLineJoin style);
@property(readonly)UIBezierPath *(^c_setLineDash)(const CGFloat *pattern, NSInteger count, CGFloat phase);

@property(readonly)UIBezierPath *(^c_fill)(void);
@property(readonly)UIBezierPath *(^c_stroke)(void);

@property(readonly)UIBezierPath *(^c_addClip)(void);

@property(readonly)UIBezierPath *(^c_fillBlendMode)(CGBlendMode mode, CGFloat alpha);
@property(readonly)UIBezierPath *(^c_strokeBlendMode)(CGBlendMode mode, CGFloat alpha);

@end

NS_ASSUME_NONNULL_END
