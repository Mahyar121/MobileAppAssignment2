//
//  CourseDetailViewController.m
//  Assignment2
//
//  Created by mahyar babaie on 10/28/16.
//  Copyright © 2016 mahyar babaie. All rights reserved.
//

#import "CourseDetailViewController.h"
#import "AppDelegate.h"

@interface CourseDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *cStudentCWID;
@property (weak, nonatomic) IBOutlet UITextField *cCourseName;
@property (weak, nonatomic) IBOutlet UITextField *cHwGrade;
@property (weak, nonatomic) IBOutlet UITextField *cMidtermGrade;
@property (weak, nonatomic) IBOutlet UITextField *cFinalGrade;
- (IBAction)addCourse:(id)sender;



@end

@implementation CourseDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 Chemistry, C++, Calculus, Physics, MobileApp
*/

- (IBAction)addCourse:(id)sender {
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    
    NSString *cwid = _cStudentCWID.text;
    NSString *coursename = _cCourseName.text;
    NSString *hw = _cHwGrade.text;
    NSString *midterm = _cMidtermGrade.text;
    NSString *final = _cFinalGrade.text;
    NSString *chemistry = @"Chemistry";
    NSString *c = @"C++";
    NSString *calculus = @"Calculus";
    NSString *physics = @"Physics";
    NSString *mobile =@"MobileApp";
    NSString *grade;
    NSString *coursenameGrade;
    
    NSInteger hwG = [hw intValue];
    NSInteger mtG = [midterm intValue];
    NSInteger fG = [final intValue];
    NSInteger newhwG;
    NSInteger newmtG;
    NSInteger newfG;
    NSInteger gradeTotal;
    // count == 1
    if (delegate.count == 1){
        
    
        if ([coursename isEqualToString:chemistry]){
            newhwG = hwG * .25;
            newmtG = mtG * .35;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray forKey:cwid];
        
        }
        if ([coursename isEqualToString:c]){
            newhwG = hwG * .20;
            newmtG = mtG * .40;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray forKey:cwid];
        }
        if ([coursename isEqualToString:calculus]){
            newhwG = hwG * .10;
            newmtG = mtG * .20;
            newfG = fG * .70;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray forKey:cwid];
        }
        if ([coursename isEqualToString:physics]){
            newhwG = hwG * .15;
            newmtG = mtG * .35;
            newfG = fG * .50;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray forKey:cwid];
        }
        if ([coursename isEqualToString:mobile]){
            newhwG = hwG * .30;
            newmtG = mtG * .30;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray forKey:cwid];
        }
    }
    // for count = 2
    else if(delegate.count == 2){
        
        if ([coursename isEqualToString:chemistry]){
            newhwG = hwG * .25;
            newmtG = mtG * .35;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray1 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray1 forKey:cwid];
            
        }
        if ([coursename isEqualToString:c]){
            newhwG = hwG * .20;
            newmtG = mtG * .40;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray1 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray1 forKey:cwid];
        }
        if ([coursename isEqualToString:calculus]){
            newhwG = hwG * .10;
            newmtG = mtG * .20;
            newfG = fG * .70;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray1 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray1 forKey:cwid];
        }
        if ([coursename isEqualToString:physics]){
            newhwG = hwG * .15;
            newmtG = mtG * .35;
            newfG = fG * .50;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray1 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray1 forKey:cwid];
        }
        if ([coursename isEqualToString:mobile]){
            newhwG = hwG * .30;
            newmtG = mtG * .30;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray1 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray1 forKey:cwid];
        }
        
        
        
        
        
        
        
    }
    // for count = 3
    else if(delegate.count == 3){
        
        if ([coursename isEqualToString:chemistry]){
            newhwG = hwG * .25;
            newmtG = mtG * .35;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray2 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray2 forKey:cwid];
            
        }
        if ([coursename isEqualToString:c]){
            newhwG = hwG * .20;
            newmtG = mtG * .40;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray2 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray2 forKey:cwid];
        }
        if ([coursename isEqualToString:calculus]){
            newhwG = hwG * .10;
            newmtG = mtG * .20;
            newfG = fG * .70;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray2 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray2 forKey:cwid];
        }
        if ([coursename isEqualToString:physics]){
            newhwG = hwG * .15;
            newmtG = mtG * .35;
            newfG = fG * .50;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray2 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray2 forKey:cwid];
        }
        if ([coursename isEqualToString:mobile]){
            newhwG = hwG * .30;
            newmtG = mtG * .30;
            newfG = fG * .40;
            gradeTotal = newhwG + newmtG + newfG;
            grade = [NSString stringWithFormat: @"%ld", (long)gradeTotal];
            coursenameGrade = [[coursename stringByAppendingString:@": "] stringByAppendingString:grade];
            [delegate.objectArray2 addObject:coursenameGrade];
            [delegate.courseList setObject: delegate.objectArray2 forKey:cwid];
        }
        
        
        
        
    }
    
    
    
    
}
@end
