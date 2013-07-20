//
//  MasterViewController.h
//  AddressBook
//
//  Created by Anoop Varghese on 20/7/13.
//  Copyright (c) 2013 Varkey Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
