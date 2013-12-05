//
//  ViewController.m
//  calculator
//
//  Created by 乗常　理子 on 13/11/14.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)inputNumber0:(id)sender {
    currentNumber = currentNumber * 10;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber1:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 1;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber2:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 2;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber3:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 3;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber4:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 4;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber5:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 5;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber6:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 6;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber7:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 7;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber8:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 8;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)inputNumber9:(id)sender {
    currentNumber = currentNumber * 10;
    currentNumber = currentNumber + 9;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)addition:(id)sender {
    currentNumber = previousNumber + currentNumber;
    previousNumber = currentNumber;
    currentNumber = 0;
    [self setState:add];
    _numberOutput.text = [NSString stringWithFormat:@"%d",previousNumber];
}

- (IBAction)subtraction:(id)sender {
    previousNumber = currentNumber;
    currentNumber = 0;
    [self setState:sub];
    _numberOutput.text = [NSString stringWithFormat:@"%d",previousNumber];
}

- (IBAction)multiplication:(id)sender {
    previousNumber = currentNumber;
    currentNumber = 0;
    [self setState:mul];
    _numberOutput.text = [NSString stringWithFormat:@"%d",previousNumber];
}

- (IBAction)division:(id)sender {
    previousNumber = currentNumber;
    currentNumber = 0;
    [self setState:div];
    _numberOutput.text = [NSString stringWithFormat:@"%d",previousNumber];
}

- (IBAction)equal:(id)sender {
    switch (self.state) {
        case add:
            currentNumber = previousNumber + currentNumber;
            _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
            previousNumber = currentNumber;
            currentNumber = 0;
            break;
        case sub:
            currentNumber = previousNumber - currentNumber;
            _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
            currentNumber = 0;
            break;
        case mul:
            currentNumber = previousNumber * currentNumber;
            _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
            currentNumber = 0;
            break;
        case div:
            currentNumber = previousNumber / currentNumber;
            _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
            currentNumber = 0;
            break;
    }
}

- (IBAction)AC:(id)sender {
    currentNumber = 0;
    previousNumber = 0;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

- (IBAction)plusminus:(id)sender {
    currentNumber = (-1) * currentNumber;
    _numberOutput.text = [NSString stringWithFormat:@"%d",currentNumber];
}

@end
