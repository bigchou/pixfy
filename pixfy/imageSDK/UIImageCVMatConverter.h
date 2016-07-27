//
//  UIImageCVMatConverter.h
//  helloworld
//
//  Created by Timmy on 2016/7/18.
//  Copyright © 2016年 imglab23. All rights reserved.
//

#ifndef UIImageCVMatConverter_h
#define UIImageCVMatConverter_h

#import <UIKit/UIKit.h>
#endif /* UIImageCVMatConverter_h */


@interface UIImageCVMatConverter : NSObject {
    
}

+ (UIImage *)UIImageFromCVMat:(cv::Mat)cvMat;
+ (UIImage *)UIImageFromCVMat:(cv::Mat)cvMat withUIImage:(UIImage*)image;
+ (cv::Mat)cvMatFromUIImage:(UIImage *)image;
+ (cv::Mat)cvMatGrayFromUIImage:(UIImage *)image;
+ (UIImage *)scaleAndRotateImageFrontCamera:(UIImage *)image;
+ (UIImage *)scaleAndRotateImageBackCamera:(UIImage *)image;

@end