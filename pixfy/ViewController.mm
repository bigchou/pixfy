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
- (IBAction)Reset:(UIButton *)sender {
    _MainImage.image = origin;
}

- (IBAction)Apply:(UIButton *)sender {
    NSLog(@"1");
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Effect Selection"
                                                                   message:@"Please select the effect"
                                                            preferredStyle:UIAlertControllerStyleActionSheet]; // 1
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"GrayScale"
                                                          style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                              NSLog(@"You pressed \"GrayScale\"");
                                                              cv::Mat img=[UIImageCVMatConverter cvMatGrayFromUIImage:_MainImage.image];
                                                              _MainImage.image = [UIImageCVMatConverter UIImageFromCVMat:img];
                                                          }]; // 2
    
    
    UIAlertAction *secondAction = [UIAlertAction actionWithTitle:@"two"
                                                           style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                               NSLog(@"You pressed button two");
                                                               _MainImage.image = origin;
                                                           }]; // 3
    
    [alert addAction:firstAction]; // 4
    [alert addAction:secondAction]; // 5
    
    [self presentViewController:alert animated:YES completion:nil]; // 6
    NSLog(@"3");
    /*cv::Mat img = [UIImageCVMatConverter cvMatGrayFromUIImage:_MainImage.image];
    printf("rows: %d\tcols: %d\t",img.rows,img.cols);
    // main processing start
    for(int i = 0; i < img.rows; i++){
        for(int j=0; j<img.cols; j++){
            if( i== j)
                img.at<uchar>(i,j) = 255; //white
        }
    }
    // main processing end
    _MainImage.image = [UIImageCVMatConverter UIImageFromCVMat:img];*/
}


UIImage *origin = NULL;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    origin  = _MainImage.image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
