//
//  OCRViewController.h
//  OCRFun
//
//  Created by Tyler Reardon on 10/18/16.
//  Copyright © 2016 Tyler Reardon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TesseractOCR.h"
#import "PureLayout.h"

@interface OCRViewController : UIViewController <G8TesseractDelegate,
UIImagePickerControllerDelegate,
UINavigationControllerDelegate>

@property (weak, nonatomic) UIImageView *imageToRecognize;
@property (weak, nonatomic) UIActivityIndicatorView *activityIndicator;

- (void)openCamera:(id)sender;
- (void)recognizeSampleImage:(id)sender;

@end

