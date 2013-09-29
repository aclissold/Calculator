//
//  CalcViewController.m
//  Calculator
//
//  Created by Andrew Clissold on 9/29/13.
//  Copyright (c) 2013 Andrew Clissold. All rights reserved.
//

#import "CalcViewController.h"

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

- (IBAction)clear:(id)sender {
    self.displayLabel.text = @"";
    self.operatorLabel.text = @"";
    self.operator = nil;
}

- (IBAction)zero:(id)sender {
    if ([self.displayLabel.text length] != 0 && [self.displayLabel.text length] < 10) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"0"];
    }
}

- (IBAction)one:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"1"];
    }
}

- (IBAction)two:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"2"];
    }
}

- (IBAction)three:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"3"];
    }
}

- (IBAction)four:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"4"];
    }
}

- (IBAction)five:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"5"];
    }
}

- (IBAction)six:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"6"];
    }
}

- (IBAction)seven:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"7"];
    }
}

- (IBAction)eight:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"8"];
    }
}

- (IBAction)nine:(id)sender {
    if ([self.displayLabel.text length] < 9) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:@"9"];
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
}

- (IBAction)multiply:(id)sender {
    self.operatorLabel.text = @"*";
    self.operator = @"*";
}

- (IBAction)divide:(id)sender {
    self.operatorLabel.text = @"/";
    self.operator = @"/";
}

- (IBAction)equals:(id)sender {
    self.operatorLabel.text = @"";
    // TODO: use switch case instead
    if (self.operator) {
        float newOperand;
        newOperand = [self.displayLabel.text floatValue];
        
        if ([self.operator isEqualToString:@"+"]) {
            float output = self.operand + newOperand;
            self.displayLabel.text = [[NSNumber numberWithFloat:output] stringValue];
            self.operand = newOperand;
        } else if ([self.operator isEqualToString:@"-"]) {
            NSLog(@"Subtracting stuff");
        } else if ([self.operator isEqualToString:@"*"]) {
            NSLog(@"Multiplying stuff");
        } else if ([self.operator isEqualToString:@"/"]) {
            NSLog(@"Dividing stuff");
        }


    }
    self.operator = nil;
}

@end
