//
//  ViewController.h
//  AddressBook
//
//  Created by test on 4/5/17.
//  Copyright © 2017 com.neorays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ContactsUI/ContactsUI.h>

@interface ViewController : UIViewController<CNContactPickerDelegate>
- (IBAction)contackButton:(id)sender;


@end

