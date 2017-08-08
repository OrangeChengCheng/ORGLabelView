//
//  ViewController.m
//  ORGLabelView
//
//  Created by ORG on 2017/8/8.
//  Copyright © 2017年 Orange. All rights reserved.
//

#import "ViewController.h"
#import "ORGNumberAnimatedView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet ORGNumberAnimatedView *numberAnmiatedView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.numberAnmiatedView.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:30];
    self.numberAnmiatedView.textColor = [UIColor whiteColor];
    self.numberAnmiatedView.minLength = 1;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(UIButton *)sender {
    
    self.numberAnmiatedView.number = @(arc4random()%300);
    [self.numberAnmiatedView startAnimation];
    
}


@end
