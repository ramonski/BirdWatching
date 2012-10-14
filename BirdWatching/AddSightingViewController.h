//
//  AddSightingViewController.h
//  BirdWatching
//
//  Created by Ramon Bartl on 14.10.12.
//  Copyright (c) 2012 Ramon Bartl. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddSightingViewControllerDelegate;


@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>

// Delegate
@property (weak, nonatomic) id <AddSightingViewControllerDelegate> delegate;

// Text field outlets (Bird Name, Bird Location)
@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;

// Button Actions (Cancel/Done)
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end

@protocol AddSightingViewControllerDelegate <NSObject>
- (void)addSightingViewControllerDidCancel:(AddSightingViewController *)controller;
- (void)addSightingViewControllerDidFinish:(AddSightingViewController *)controller name:(NSString *)name location:(NSString *)location;
@end