//
//  ViewController.m
//  Calculator
//
//  Created by Rogers on 2013/10/28.
//  Copyright (c) 2013年 Fontech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize screenLabel = _screenLabel; //因為property的緣故

-(IBAction)Number1:(id)sender;{
    SelectNumber = SelectNumber * 10;  // 要和storyboard裡相關介面拉起來
    SelectNumber = SelectNumber + 2;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];// self表示我們要的是這對.h.m檔中的screenLabel
}
-(IBAction)Number2:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 2;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number3:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 3;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number4:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 4;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number5:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 5;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number6:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 6;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number7:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 7;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number8:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 8;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number9:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 9;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}
-(IBAction)Number0:(id)sender;{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 0;
    self.screenLabel.text = [NSString stringWithFormat:@"%i",SelectNumber];
}

-(IBAction)Times:(id)sender;{
    
    if(RunningTotal == 0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    
    Method = 1;
    SelectNumber = 0;
}
-(IBAction)Divide:(id)sender;{
    
    if(RunningTotal == 0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }

    Method = 2;
    SelectNumber = 0;
}
-(IBAction)Subtract:(id)sender;{
    
    if(RunningTotal == 0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }

    Method = 3;
    SelectNumber = 0;
}
-(IBAction)Plus:(id)sender;{
    
    if(RunningTotal == 0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }

    Method = 4;
    SelectNumber = 0;
}
-(IBAction)Equals:(id)sender;{
    
    if(RunningTotal == 0){
        RunningTotal = SelectNumber;
    }
    else{
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    Method = 0;
    SelectNumber = 0;
    self.screenLabel.text = [NSString stringWithFormat:@"%.2f",RunningTotal];
    RunningTotal = 0;

}
-(IBAction)Allclear:(id)sender;{
    Method = 0;
    SelectNumber = 0;
    RunningTotal = 0;
    self.screenLabel.text = [NSString stringWithFormat:@"0"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
