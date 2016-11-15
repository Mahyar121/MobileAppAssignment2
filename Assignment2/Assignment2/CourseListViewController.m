//
//  CourseListViewController.m
//  Assignment2
//
//  Created by mahyar babaie on 10/28/16.
//  Copyright © 2016 mahyar babaie. All rights reserved.
//

#import "CourseListViewController.h"
#import "AppDelegate.h"

@interface CourseListViewController ()

@end

@implementation CourseListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    delegate.courseTableData = [NSArray arrayWithObjects:@"Chemistry", @"C++",@"Calculus",@"Physics",@"MobileApp", nil];
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
    return delegate.courseTableData.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellId = @"CCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    cell.textLabel.text=[delegate.courseTableData objectAtIndex:indexPath.row];
    return cell;
    
}



@end
