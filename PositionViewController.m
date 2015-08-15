//
//  PositionViewController.m
//  AnimationDemo
//
//  Created by Lane on 8/15/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "PositionViewController.h"

@interface PositionViewController ()
@property (weak, nonatomic) IBOutlet UIView *BlueSquare;
@property (weak, nonatomic) IBOutlet UIView *RedSquare;
@property (weak, nonatomic) IBOutlet UIView *GreenSquare;

@end

@implementation PositionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [UIView animateWithDuration:1 animations:^{
        self.BlueSquare.center=CGPointMake(self.view.bounds.size.width-self.BlueSquare.center.x, self.BlueSquare.center.y);
    }];
    
    [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionTransitionNone animations:^{
        self.RedSquare.center=CGPointMake(self.RedSquare.center.x, self.view.bounds.size.height-self.RedSquare.center.y);
    } completion:nil];
    
    [UIView animateWithDuration:1 delay:2 options:UIViewAnimationOptionTransitionNone animations:^{
        self.GreenSquare.center=CGPointMake(self.view.bounds.size.width-self.GreenSquare.center.x, self.view.bounds.size.height-self.GreenSquare.center.y);
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
