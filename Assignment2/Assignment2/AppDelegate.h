//
//  AppDelegate.h
//  Assignment2
//
//  Created by mahyar babaie on 10/23/16.
//  Copyright © 2016 mahyar babaie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableDictionary *studentList;
@property (strong, nonatomic) NSMutableDictionary *courseList;
@property (strong, nonatomic) NSArray *courseTableData;
@property (strong, nonatomic) NSMutableArray *objectArray;
@property (strong, nonatomic) NSMutableArray *objectArray1;
@property (strong, nonatomic) NSMutableArray *objectArray2;
@property (nonatomic, assign) NSInteger count;

@end

