//
//  ViewController.m
//  pixfy
//
//  Created by Timmy on 2016/7/26.
//  Copyright © 2016年 bigchou image. All rights reserved.
//

#import "ViewController.h"
#import "UIImageCVMatConverter.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *MainImage;

@end

@implementation ViewController
- (IBAction)Apply:(UIButton *)sender {
    cv::Mat img = [UIImageCVMatConverter cvMatGrayFromUIImage:_MainImage.image];
    printf("rows: %d\tcols: %d\t",img.rows,img.cols);
    // main processing start
    for(int i = 0; i < img.rows; i++){
        for(int j=0; j<img.cols; j++){
            if( i== j)
                img.at<uchar>(i,j) = 255; //white
        }
    }
    // main processing end
    _MainImage.image = [UIImageCVMatConverter UIImageFromCVMat:img];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
