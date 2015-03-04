//
//  SLViewController.m
//  SingleLineInput
//
//  Created by Diogo Maximo on 03/03/2015.
//  Copyright (c) 2014 Diogo Maximo. All rights reserved.
//

#import "SLViewController.h"
#import "SingleLineTextField.h"
@interface SLViewController ()
@property (weak, nonatomic) IBOutlet SingleLineTextField *cityInput;

@end

@implementation SLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _cityInput.lineDisabledColor = [UIColor cyanColor];
    _cityInput.lineNormalColor = [UIColor grayColor];
    _cityInput.lineSelectedColor = [UIColor blueColor];
    _cityInput.inputTextColor = [UIColor redColor];
    _cityInput.inputPlaceHolderColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
