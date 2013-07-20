//
//  AddressBookViewController.m
//  AddressBook
//
//  Created by Anoop Varghese on 20/7/13.
//  Copyright (c) 2013 Varkey Inc. All rights reserved.
//

#import "AddressBookViewController.h"
#import "AppDelegate.h"

@interface AddressBookViewController ()

@end

@implementation AddressBookViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)saveData:(id)sender
{
        // Declare delegate
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        // Create db context
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSManagedObject *newContact = [NSEntityDescription insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:context];
    [newContact setValue: _name.text forKey:@"name"];
    [newContact setValue: _age.text forKey:@"age"];
    [newContact setValue: _address.text forKey:@"address"];
    
        //set all UI to empty
    _name.text = @"";
    _age.text = @"";
    _address.text = @"";
    
    NSError *error;
    [context save:&error];
    _status.text = @"Contact Saved!";
    
}

-(IBAction)findName:(id)sender
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSEntityDescription *desc = [NSEntityDescription entityForName:@"Contacts"
                                            inManagedObjectContext:context];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:desc];
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"(name = %@)",_name.text];
        //
    NSError *error;
    
    [request setPredicate:pred];
    NSArray *objects = [context executeFetchRequest:request error:&error];
    NSManagedObject *matches = nil;
    
    if([objects count] == 0)
    {
        _status.text = @"No contacts";
    }
    else
    {
        matches = objects[0];
        _address.text = [matches valueForKey:@"address"];
        _name.text = [matches valueForKey:@"name"];
        _age.text = [matches valueForKey:@"age"];
        _status.text = [NSString stringWithFormat:
                        @"%d matches found", [objects count]];
        
    }
}


@end
