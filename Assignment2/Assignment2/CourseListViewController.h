//
//  CourseListViewController.h
//  Assignment2
//
//  Created by mahyar babaie on 10/28/16.
//  Copyright © 2016 mahyar babaie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *courseList;
@end
