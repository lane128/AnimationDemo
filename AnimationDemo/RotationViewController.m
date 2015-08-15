//
//  RotationViewController.m
//  AnimationDemo
//
//  Created by Lane on 8/15/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *wheel;
@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) repeat{
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.wheel.transform=CGAffineTransformRotate(self.wheel.transform, M_PI);
    } completion:^(BOOL finished){[self repeat];}];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self repeat];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/ 

@end
