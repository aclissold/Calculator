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

- (IBAction)clear:(id)sender {
    self.label.text = @"";
}

- (IBAction)zero:(id)sender {
    if ([self.label.text length] != 0 && [self.label.text length] < 10) {
        self.label.text = [self.label.text stringByAppendingString:@"0"];
    }
}

- (IBAction)one:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"1"];
    }
}

- (IBAction)two:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"2"];
    }
}

- (IBAction)three:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"3"];
    }
}

- (IBAction)four:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"4"];
    }
}

- (IBAction)five:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"5"];
    }
}

- (IBAction)six:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"6"];
    }
}

- (IBAction)seven:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"7"];
    }
}

- (IBAction)eight:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"8"];
    }
}

- (IBAction)nine:(id)sender {
    if ([self.label.text length] < 9) {
        self.label.text = [self.label.text stringByAppendingString:@"9"];
    }
}

@end
