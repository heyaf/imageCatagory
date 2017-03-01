//
//  UIImage+cutCircleImg.m
//  text
//
//  Created by apple on 16/12/7.
//  Copyright © 2016年 贺亚飞. All rights reserved.
//

#import "UIImage+cutCircleImg.h"

@implementation UIImage (cutCircleImg)
- (UIImage *)cutCircleImage {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    // 获取上下文
    CGContextRef ctr = UIGraphicsGetCurrentContext();
    // 设置圆形

    CGRect rect = CGRectMake(0,0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctr, rect);
    // 裁剪
    CGContextClip(ctr);
    // 将图片画上去
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

-(void)setGraphicsCutCirculayWithView:(UIImageView *) view andRadius:(CGFloat)radius
{
    //开始对imageView进行画图
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 1.0);
    //使用贝塞尔曲线画出一个圆形图
    [[UIBezierPath bezierPathWithRoundedRect:view.bounds cornerRadius:radius] addClip];
    [view drawRect:view.bounds];
    
    view.image = UIGraphicsGetImageFromCurrentImageContext();
    //结束画图
    UIGraphicsEndImageContext();

}
@end
