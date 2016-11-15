//
//  StudentListViewController.h
//  Assignment2
//
//  Created by mahyar babaie on 10/25/16.
//  Copyright © 2016 mahyar babaie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    NSArray *keys;
}

@property (weak, nonatomic) IBOutlet UITableView *studentListTable;
@end
