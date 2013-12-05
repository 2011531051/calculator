//
//  ViewController.h
//  calculator
//
//  Created by 乗常　理子 on 13/11/14.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int currentNumber, previousNumber;
}

- (IBAction)inputNumber0:(id)sender;
- (IBAction)inputNumber1:(id)sender;
- (IBAction)inputNumber2:(id)sender;
- (IBAction)inputNumber3:(id)sender;
- (IBAction)inputNumber4:(id)sender;
- (IBAction)inputNumber5:(id)sender;
- (IBAction)inputNumber6:(id)sender;
- (IBAction)inputNumber7:(id)sender;
- (IBAction)inputNumber8:(id)sender;
- (IBAction)inputNumber9:(id)sender;

- (IBAction)addition:(id)sender;
- (IBAction)subtraction:(id)sender;
- (IBAction)multiplication:(id)sender;
- (IBAction)division:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)AC:(id)sender;
- (IBAction)plusminus:(id)sender;

@property enum {add, sub, mul, div} state;

@property (weak, nonatomic) IBOutlet UILabel *numberOutput;

@end
