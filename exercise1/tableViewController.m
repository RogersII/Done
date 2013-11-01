//
//  tableViewController.m
//  exercise1
//
//  Created by Rogers on 2013/11/1.
//  Copyright (c) 2013年 Fontech. All rights reserved.
//

#import "tableViewController.h"

@interface tableViewController ()

@end

@implementation tableViewController

@synthesize EditButton = _EditButton;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    list = [[NSMutableArray alloc] init];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [list count];;
}

/*-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}*/

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 將對應的陣列資料刪除
    [list removeObjectAtIndex:indexPath.row];
    // 實際刪除表格檢視中的一列，並選擇一個喜歡的刪除動畫
    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationTop];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indicator = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indicator];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indicator];
    }
    
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    
    return cell;
}

/*-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@", [list objectAtIndex:indexPath.row]);
}*/

#pragma button action
- (IBAction)editAction:(id)sender {
    
    if ([self.EditButton.currentTitle isEqualToString:@"Edit"]) {
        [self.EditButton setTitle:@"Done" forState:UIControlStateNormal];
        [self.tableView setEditing:YES animated:YES];
        
    } else {
        [self.EditButton setTitle:@"Edit" forState:UIControlStateNormal];
        [self.tableView setEditing:NO animated:YES];
    }
}

- (IBAction)addAction:(id)sender {

    
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy/M/d HH:mm:ss"];
    NSDate *today = [NSDate date];
    
    [list addObject:[format stringFromDate:today]];
    [self.tableView reloadData]; // tableview is predifined
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);

}


@end
