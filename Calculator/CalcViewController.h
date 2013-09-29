//
//  CalcViewController.h
//  Calculator
//
//  Created by Andrew Clissold on 9/29/13.
//  Copyright (c) 2013 Andrew Clissold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalcViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)clear:(id)sender;
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

@end
