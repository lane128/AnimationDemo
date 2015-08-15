//
//  ColorViewController.m
//  AnimationDemo
//
//  Created by Lane on 8/15/15.
//  Copyright (c) 2015 Lane. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueSquare;
@property (weak, nonatomic) IBOutlet UILabel *name;

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [UIView animateWithDuration:1 animations:^{
        self.blueSquare.backgroundColor=[UIColor orangeColor];
        self.name.textColor=[UIColor blackColor];
        
    }];
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
