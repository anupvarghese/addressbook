//
//  DetailViewController.h
//  AddressBook
//
//  Created by Anoop Varghese on 20/7/13.
//  Copyright (c) 2013 Varkey Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
