//
//  ViewController.h
//  Laengenrechner
//
//  Created by Valentyn Kukushkin on 06.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *inputField;
@property (strong, nonatomic) IBOutlet UILabel *mOutputLabel;
@property (strong, nonatomic) IBOutlet UILabel *cmOutputLabel;
@property (strong, nonatomic) IBOutlet UILabel *inOutputLabel;
@property (strong, nonatomic) IBOutlet UILabel *ftOutputLabel;

- (IBAction)convertButton:(id)sender;

@end