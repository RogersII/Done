//
//  tableViewController.h
//  exercise1
//
//  Created by Rogers on 2013/11/1.
//  Copyright (c) 2013年 Fontech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableViewController : UITableViewController
{
     NSMutableArray *list;
}

@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *EditButton;

- (IBAction)addAction:(id)sender;
- (IBAction)editAction:(id)sender;

@end
