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
- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;

// Operator buttons
- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)equals:(id)sender;

@end
