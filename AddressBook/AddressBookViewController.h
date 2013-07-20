//
//  AddressBookViewController.h
//  AddressBook
//
//  Created by Anoop Varghese on 20/7/13.
//  Copyright (c) 2013 Varkey Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddressBookViewController : UIViewController

@property (strong,nonatomic) IBOutlet UITextField *name;
@property (strong,nonatomic) IBOutlet UITextField *age;
@property (strong,nonatomic) IBOutlet UITextField *address;
@property (strong,nonatomic) IBOutlet UILabel *status;

-(IBAction)saveData :(id)sender;
-(IBAction)findName :(id)sender;

@end
