//
//  ViewController.m
//  myGPUImageVideoCamera
//
//  Created by 沐沐 on 17/2/15.
//  Copyright © 2017年 yushi. All rights reserved.
//

#import "ViewController.h"
#import <GPUImageView.h>
#import <GPUImageVideoCamera.h>
#import <GPUImageSepiaFilter.h>

@interface ViewController ()
@property (nonatomic , strong) GPUImageView *myGPUImageView;
@property (nonatomic , strong) GPUImageVideoCamera *myGPUVideoCamera;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myGPUVideoCamera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPreset640x480 cameraPosition:AVCaptureDevicePositionFront];
    self.myGPUVideoCamera.outputImageOrientation = UIInterfaceOrientationPortrait;
    self.myGPUVideoCamera.horizontallyMirrorFrontFacingCamera = YES;
    self.myGPUImageView = [[GPUImageView alloc] initWithFrame:self.view.bounds];
    self.myGPUImageView.fillMode = kGPUImageFillModePreserveAspectRatioAndFill;//kGPUImageFillModePreserveAspectRatioAndFill;
    [self.view addSubview:self.myGPUImageView];
    [self.myGPUVideoCamera addTarget:self.myGPUImageView];
    [self.myGPUVideoCamera startCameraCapture];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
