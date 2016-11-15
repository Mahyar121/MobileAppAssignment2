//
//  StudentDetailViewController.m
//  Assignment2
//
//  Created by mahyar babaie on 10/25/16.
//  Copyright © 2016 mahyar babaie. All rights reserved.
//

#import "StudentDetailViewController.h"
#import "AppDelegate.h"

@interface StudentDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *studentFirstName;
@property (weak, nonatomic) IBOutlet UITextField *studentLastName;
@property (weak, nonatomic) IBOutlet UITextField *studentCWID;

- (IBAction)addStudent:(id)sender;

@end

@implementation StudentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addStudent:(id)sender {
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    
    NSString *fname = _studentFirstName.text;
    NSString *lname = _studentLastName.text;
    NSString *cwid = _studentCWID.text;
    NSString *name = [[fname stringByAppendingString:@" "] stringByAppendingString:lname];
    [delegate.studentList setObject:name forKey: cwid];
    delegate.count += 1;
    

       
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
