//
//  ViewController.m
//  AddressBook
//
//  Created by test on 4/5/17.
//  Copyright © 2017 com.neorays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)contackButton:(id)sender {
    
    CNContactPickerViewController *contactPicker = [[CNContactPickerViewController alloc] init];
    contactPicker.delegate = self;
    [self presentViewController:contactPicker animated:YES completion:nil];
    
}

-(void)contactPickerDidCancel:(CNContactPickerViewController *)picker
{
    NSLog(@"did cancel");
}

-(void)contactPicker:(CNContactPickerViewController *)picker didSelectContact:(CNContact *)contact
{
    NSLog(@"didselect");
    [self getContactDetails:contact];
}

-(void)contactPicker:(CNContactPickerViewController *)picker didSelectContactProperty:(CNContactProperty *)contactProperty
{
    NSLog(@"didSelectContactProperty");
}


-(void)getContactDetails:(CNContact *)contactObject {
    
    NSString * phone = @"";
    NSString * userPHONE_NO = @"";
    for(CNLabeledValue * phonelabel in contactObject.phoneNumbers) {
        CNPhoneNumber * phoneNo = phonelabel.value;
        phone = [phoneNo stringValue];
        if (phone) {
            userPHONE_NO = phone;
        }}
}
@end
