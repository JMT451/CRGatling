//
//  ViewController.m
//  CRGatling
//
//  Created by I_MT on 2016/11/6.
//  Copyright © 2016年 I_MT. All rights reserved.
//

#import "ViewController.h"
#import "CRGatling.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textfield;

@end

@implementation ViewController
{
 CRGatling *progressView  ;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    progressView =[[CRGatling alloc]initWithFrame:CGRectMake(15, 50, 355, 75)];
    [self.view addSubview:progressView];
}
- (IBAction)resetBtn:(id)sender {
    
[progressView setProgress:[self.textfield.text floatValue]];

}
- (IBAction)sliderAction:(UISlider *)sender {
    [progressView setProgress:sender.value];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
