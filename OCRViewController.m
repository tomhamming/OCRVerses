//
//  OCRViewController.m
//  OCRFun
//
//  Created by Tyler Reardon on 10/18/16.
//  Copyright © 2016 Tyler Reardon. All rights reserved.
//

#import "OCRViewController.h"
#import "Regex.h"
#import "VerseListViewControllerTableViewController.h"

@interface OCRViewController ()

@property (nonatomic, strong) NSOperationQueue *operationQueue;
@property UILabel *textLabel;
@property UIProgressView *progressView;
@property (strong) UIImage *lastImg;
@property UIImageView *imageViewer;
@end


/**
 *  For more information about using `G8Tesseract`, visit the GitHub page at:
 *  https://github.com/gali8/Tesseract-OCR-iOS
 */
@implementation OCRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create a queue to perform recognition operations
    self.operationQueue = [[NSOperationQueue alloc] init];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Camera" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:20];
    [button autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:20];
    [button autoSetDimension:ALDimensionHeight toSize:30];
    [button addTarget:self action:@selector(openCamera:) forControlEvents:UIControlEventTouchUpInside];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Show Image" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:20];
    [button autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:20];
    [button autoSetDimension:ALDimensionHeight toSize:30];
    [button addTarget:self action:@selector(showImage:) forControlEvents:UIControlEventTouchUpInside];
    
    self.progressView = [[UIProgressView alloc]init];
    [self.view addSubview:self.progressView];
    [self.progressView autoAlignAxisToSuperviewAxis:ALAxisVertical];
    [self.progressView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:button withOffset:10];
    [self.progressView autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:10];
    [self.progressView autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:10];
    
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    self.textLabel = [[UILabel alloc]init];
    [self.view addSubview:scrollView];
    [scrollView addSubview:self.textLabel];
    self.textLabel.numberOfLines = 0;
    self.textLabel.text = @"Choose an Image";
    [self.textLabel autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(0, 10, 0, 10)];
    [self.textLabel autoConstrainAttribute:ALAttributeWidth toAttribute:ALAttributeWidth ofView:self.view withOffset:-20];
    [scrollView autoPinEdgeToSuperviewEdge:ALEdgeRight];
    [scrollView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [scrollView autoPinEdgeToSuperviewEdge:ALEdgeBottom];
    [scrollView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.progressView withOffset:10];
    
//    UIImage*image = [[UIImage alloc] initWithContentsOfFile:@"image_sample_bl.png"];
//    [self recognizeImageWithTesseract:image completion:^(NSString *returnedString) {
//        printf("%@",returnedString);
//    }];
    
}

-(void)recognizeImageWithTesseract:(UIImage *)image completion:(void (^)(NSString*returnedString))completionBlock
{
//    // Animate a progress activity indicator
//    [self.activityIndicator startAnimating];
    
    // Create a new `G8RecognitionOperation` to perform the OCR asynchronously
    // It is assumed that there is a .traineddata file for the language pack
    // you want Tesseract to use in the "tessdata" folder in the root of the
    // project AND that the "tessdata" folder is a referenced folder and NOT
    // a symbolic group in your project
    G8RecognitionOperation *operation = [[G8RecognitionOperation alloc] initWithLanguage:@"eng"];
    
    // Use the combined Tesseract engine mode in performing the recognition
    // (see G8Constants.h) for other engine mode options
    operation.tesseract.engineMode = G8OCREngineModeTesseractCubeCombined;
    
    // Let Tesseract automatically segment the page into blocks of text
    // based on its analysis (see G8Constants.h) for other page segmentation
    // mode options
    operation.tesseract.pageSegmentationMode = G8PageSegmentationModeAutoOnly;
    
    // Set the characters the OCR should look for
    operation.tesseract.charWhitelist = @"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-:";
    
    // Optionally limit the time Tesseract should spend performing the
    // recognition
    operation.tesseract.maximumRecognitionTime = 30.0;
    
    // Set the delegate for the recognition to be this class
    // (see `progressImageRecognitionForTesseract` and
    // `shouldCancelImageRecognitionForTesseract` methods below)
    operation.delegate = self;
    
    // Optionally limit Tesseract's recognition to the following whitelist
    // and blacklist of characters
    //operation.tesseract.charWhitelist = @"01234";
    //operation.tesseract.charBlacklist = @"56789";
    
    // Set the image on which Tesseract should perform recognition
    operation.tesseract.image = image;
    
    // Optionally limit the region in the image on which Tesseract should
    // perform recognition to a rectangle
    //operation.tesseract.rect = CGRectMake(20, 20, 100, 100);
    
    // Specify the function block that should be executed when Tesseract
    // finishes performing recognition on the image
    operation.recognitionCompleteBlock = ^(G8Tesseract *tesseract) {
        // Fetch the recognized text
        NSString *recognizedText = tesseract.recognizedText;
        completionBlock(recognizedText);
    };
    
    // Display the image to be recognized in the view
    self.imageToRecognize.image = operation.tesseract.thresholdedImage;
    
    // Finally, add the recognition operation to the queue
    [self.operationQueue addOperation:operation];
}

/**
 *  This function is part of Tesseract's delegate. It will be called
 *  periodically as the recognition happens so you can observe the progress.
 *
 *  @param tesseract The `G8Tesseract` object performing the recognition.
 */
- (void)progressImageRecognitionForTesseract:(G8Tesseract *)tesseract {
    dispatch_async(dispatch_get_main_queue(), ^
                   {
                       self.progressView.progress = tesseract.progress / 100.0f;
                   });
}

/**
 *  This function is part of Tesseract's delegate. It will be called
 *  periodically as the recognition happens so you can cancel the recogntion
 *  prematurely if necessary.
 *
 *  @param tesseract The `G8Tesseract` object performing the recognition.
 *
 *  @return Whether or not to cancel the recognition.
 */
- (BOOL)shouldCancelImageRecognitionForTesseract:(G8Tesseract *)tesseract {
    return NO;  // return YES, if you need to cancel recognition prematurely
}

- (void)openCamera:(id)sender
{
    UIImagePickerController *imgPicker = [UIImagePickerController new];
    imgPicker.delegate = self;
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        imgPicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:imgPicker animated:YES completion:nil];
    }
}

-(void)showImage:(id)sender
{
    if (self.lastImg)
    {
        self.imageViewer = [[UIImageView alloc]initWithImage:self.lastImg];
        [self.view addSubview:self.imageViewer];
        [self.imageViewer autoPinEdgesToSuperviewEdges];
        self.imageViewer.userInteractionEnabled = YES;
        self.imageViewer.contentMode = UIViewContentModeScaleAspectFit;
        UITapGestureRecognizer *recog = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOnImage:)];
        [self.imageViewer addGestureRecognizer:recog];
    }
}

-(void)tapOnImage:(UITapGestureRecognizer *)sender
{
    [self.imageViewer removeFromSuperview];
    self.imageViewer = nil;
}

- (void)clearCache:(id)sender
{
    [G8Tesseract clearCache];
}

#pragma mark - UIImagePickerController Delegate

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //get all possible orientations for the image
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    
    UIGraphicsBeginImageContext(image.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [image drawAtPoint:CGPointZero];
    CGContextRotateCTM(context, M_PI_2);
    
    UIImage *drawnImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
 
    self.lastImg = drawnImage;
    
    //get rid of the camera
    [picker dismissViewControllerAnimated:YES completion:^
     {
         self.progressView.progress = 0;
         self.textLabel.text = @"Working...";
         
         dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^
                        {
                            [self recognizeImageWithTesseract:drawnImage completion:^(NSString *returnedString) {
                                dispatch_async(dispatch_get_main_queue(), ^
                                               {
                                                   self.textLabel.text = returnedString;
                                                   self.progressView.progress = 1;
                                                   
                                                   Regex *reg = [[Regex alloc]init];
                                                   NSArray *verses = [reg findVerseRefs:returnedString];
                                                   
                                                   VerseListViewControllerTableViewController *controller = [[VerseListViewControllerTableViewController alloc]initWithVerseArray:verses];
                                                   NSLog(@"Verse results: %@", verses);
                                                   UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller];
                                                   [self presentViewController:nav animated:YES completion:nil];
                                               });
                        }];
         
         });
     }];
}
@end
