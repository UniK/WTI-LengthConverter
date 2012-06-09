//
//  ViewController.m
//  Laengenrechner
//
//  Created by Valentyn Kukushkin on 06.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Length.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize inputField;
@synthesize mOutputLabel;
@synthesize cmOutputLabel;
@synthesize inOutputLabel;
@synthesize ftOutputLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setInputField:nil];
    [self setMOutputLabel:nil];
    [self setCmOutputLabel:nil];
    [self setInOutputLabel:nil];
    [self setFtOutputLabel:nil];
    [self setInputField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (IBAction)convertButton:(id)sender {
    NSLog(@"Button was clicked.");
    Length *length = [[Length alloc] initWithString: inputField.text];
    if ([length setInput: inputField.text]) {
        self.mOutputLabel.text = [length getMeter];
        self.cmOutputLabel.text = [length getCentimeter];
        self.inOutputLabel.text = [length getInch];
        self.ftOutputLabel.text = [length getFoot];
    } else {
        self.mOutputLabel.text = @"Error";
        self.cmOutputLabel.text = @"Error";
        self.inOutputLabel.text = @"Error";
        self.ftOutputLabel.text = @"Error";
        NSLog(@"Error: invalid input %@",  inputField.text);
    }
}

@end
