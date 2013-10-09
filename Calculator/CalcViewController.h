//
//  CalcViewController.h
//  Calculator
//
//  Created by Andrew Clissold on 9/29/13.
//  Copyright (c) 2013 Andrew Clissold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalcViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
@property (weak, nonatomic) IBOutlet UILabel *operatorLabel;
@property (weak, nonatomic) NSString *operator;
@property float operand;

// Clear button
- (IBAction)clear:(id)sender;

// Digit buttons
- (IBAction)numberPressed:(UIButton *)btn;

// Decimal button
- (IBAction)decimal:(id)sender;

// Operator buttons
- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)equals:(id)sender;

@end
