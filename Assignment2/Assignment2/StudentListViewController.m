//
//  StudentListViewController.m
//  Assignment2
//
//  Created by mahyar babaie on 10/25/16.
//  Copyright © 2016 mahyar babaie. All rights reserved.
//

#import "StudentListViewController.h"
#import "AppDelegate.h"
@interface StudentListViewController ()

@end

@implementation StudentListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    keys = [delegate.studentList allKeys];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    return delegate.studentList.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    static NSString *cellId = @"SCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    
    cell.textLabel.text=[delegate.studentList objectForKey:[keys objectAtIndex:indexPath.row]];
  
    return cell;
    
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    return indexPath;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    NSString *rowValue = [delegate.studentList objectForKey:[keys objectAtIndex:indexPath.row]];
    NSArray *temp =[delegate.studentList allKeysForObject:rowValue];
    NSString *key = [temp objectAtIndex:0];
    NSString *message =[NSString stringWithFormat:@"%@", [delegate.courseList objectForKey:key]];
    NSString *title = [[rowValue stringByAppendingString:@" CWID: "] stringByAppendingString:key];

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
    
    
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
