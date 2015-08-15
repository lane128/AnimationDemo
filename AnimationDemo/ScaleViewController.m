//
//  ScaleViewController.m
//  AnimationDemo
//
//  Created by Lane on 8/15/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "ScaleViewController.h"

@interface ScaleViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueSquare;

@end

@implementation ScaleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:0.5 animations:^{
        self.blueSquare.transform=CGAffineTransformMakeScale(0.8, 0.8);
    }];
    
    [UIView animateWithDuration:1 delay:0.5 options:UIViewAnimationOptionTransitionNone animations:^{
        self.blueSquare.transform=CGAffineTransformMakeScale(1.5, 1.5);
    } completion:nil];
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
