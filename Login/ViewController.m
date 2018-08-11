//
//  ViewController.m
//  Login
//
//  Created by SAMUEL on 5/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtUser;
@property (weak, nonatomic) IBOutlet UITextField *txtPasswd;

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

- (void) mensaje:(NSString *) message :(NSString *) title{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title
                                                    message:message
                                                    preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK"
                                            style:UIAlertActionStyleDefault
                                            handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)login:(id)sender {
    if([_txtUser.text isEqualToString:@"educacion"] && [_txtPasswd.text isEqualToString:@"password"]){
        [self mensaje:@"User and password correct." :@"Ok"];
    }else{
        [self mensaje:@"User or password incorrect." :@"Error"];
    }
}

@end
