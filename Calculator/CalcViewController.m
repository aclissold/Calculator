//
//  CalcViewController.m
//  Calculator
//
//  Created by Andrew Clissold on 9/29/13.
//  Copyright (c) 2013 Andrew Clissold. All rights reserved.
//

#import "CalcViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface CalcViewController ()

@end

@implementation CalcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playClick:(id)sender {
    AudioServicesPlaySystemSound(0x450);
}

- (IBAction)clear:(id)sender {
    self.displayLabel.text = @"";
    self.operatorLabel.text = @"";
    self.operator = nil;
}

- (IBAction)numberPressed:(UIButton *)btn {
    if ([self.displayLabel.text length] < 9) {
        NSString *theStringToAppend = [NSString new];
        switch (btn.tag) {
            case 0:
                theStringToAppend = @"0";
                break;
            case 1:
                theStringToAppend = @"1";
                break;
            case 2:
                theStringToAppend = @"2";
                break;
            case 3:
                theStringToAppend = @"3";
                break;
            case 4:
                theStringToAppend = @"4";
                break;
            case 5:
                theStringToAppend = @"5";
                break;
            case 6:
                theStringToAppend = @"6";
                break;
            case 7:
                theStringToAppend = @"7";
                break;
            case 8:
                theStringToAppend = @"8";
                break;
            case 9:
                theStringToAppend = @"9";
                break;
            default:
                NSLog(@"Unexpected button tag found.");
                break;
        }
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:theStringToAppend];
    }
}

- (IBAction)decimal:(id)sender {
    if ([self.displayLabel.text rangeOfString:@"."].location == NSNotFound) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"."];
    }
}

- (IBAction)add:(id)sender {
    self.operatorLabel.text = @"+";
    self.operator = @"+";
    self.operand = [self.displayLabel.text floatValue];
    self.displayLabel.text = @"";
}

- (IBAction)subtract:(id)sender {
    self.operatorLabel.text = @"-";
    self.operator = @"-";
    self.operand = [self.displayLabel.text floatValue];
    self.displayLabel.text = @"";
}

- (IBAction)multiply:(id)sender {
    self.operatorLabel.text = @"*";
    self.operator = @"*";
    self.operand = [self.displayLabel.text floatValue];
    self.displayLabel.text = @"";
}

- (IBAction)divide:(id)sender {
    self.operatorLabel.text = @"/";
    self.operator = @"/";
    self.operand = [self.displayLabel.text floatValue];
    self.displayLabel.text = @"";
}

- (IBAction)equals:(id)sender {
    self.operatorLabel.text = @"";
    // TODO: use switch case instead
    if (self.operator) {
        
        float newOperand;
        newOperand = [self.displayLabel.text floatValue];
        
        // Add
        if ([self.operator isEqualToString:@"+"]) {
            float output = self.operand + newOperand;
            self.displayLabel.text = [[NSNumber numberWithFloat:output] stringValue];
            self.operand = newOperand;
        }
        // Subtract
        else if ([self.operator isEqualToString:@"-"]) {
            float output = self.operand - newOperand;
            self.displayLabel.text = [[NSNumber numberWithFloat:output] stringValue];
            self.operand = newOperand;
        }
        // Multiply
        else if ([self.operator isEqualToString:@"*"]) {
            float output = self.operand * newOperand;
            self.displayLabel.text = [[NSNumber numberWithFloat:output] stringValue];
            self.operand = newOperand;
        }
        // Divide
        else if ([self.operator isEqualToString:@"/"]) {
            if (newOperand == 0) {
                self.displayLabel.text = @"Error";
                self.operand = 0;
            } else {
                float output = self.operand / newOperand;
                self.displayLabel.text = [[NSNumber numberWithFloat:output] stringValue];
                self.operand = newOperand;
            }
        }
    }
    self.operator = nil;
}

@end
