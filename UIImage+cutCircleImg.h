//
//  UIImage+cutCircleImg.h
//  text
//
//  Created by apple on 16/12/7.
//  Copyright © 2016年 贺亚飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (cutCircleImg)
//切圆形图片
-(UIImage *)cutCircleImage;
//按尺寸切图
-(void)setGraphicsCutCirculayWithView:(UIImageView *) view andRadius:(CGFloat)radius;
@end
