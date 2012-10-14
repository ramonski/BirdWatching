//
//  AddSightingViewController.m
//  BirdWatching
//
//  Created by Ramon Bartl on 14.10.12.
//  Copyright (c) 2012 Ramon Bartl. All rights reserved.
//

#import "AddSightingViewController.h"

@interface AddSightingViewController ()

@end

@implementation AddSightingViewController


@synthesize birdNameInput = _birdNameInput;
@synthesize locationInput = _locationInput;
@synthesize delegate = _delegate;


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setBirdNameInput:nil];
    [self setLocationInput:nil];
    [super viewDidUnload];
}

- (IBAction)cancel:(id)sender {
    // call deleagte method
    [[self delegate] addSightingViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender {
    // call delegate method
    [[self delegate] addSightingViewControllerDidFinish:self name:self.birdNameInput.text location:self.locationInput.text];
}


# pragma mark UITextFieldDelegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ((textField == self.birdNameInput) || (textField == self.locationInput))
    {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
