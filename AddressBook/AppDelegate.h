//
//  AppDelegate.h
//  AddressBook
//
//  Created by Anoop Varghese on 20/7/13.
//  Copyright (c) 2013 Varkey Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddressBookViewController.h"

@class AddressBookViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property AddressBookViewController *viewController;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
