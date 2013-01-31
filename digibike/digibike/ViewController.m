//
//  ViewController.m
//  digibike
//
//  Created by Valentin Riegler on 28.01.13.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import "ViewController.h"
#import "Vehicles.h"
#import "EBike.h"

@interface ViewController ()
@end

@implementation ViewController

- (IBAction)flipImage:(UIButton *)bikeImageButton {
    if (!bikeImageButton.selected){
        bikeImageButton.selected=YES;
    }else{
        bikeImageButton.selected=NO;
    }
    
}


@synthesize statusText = _statusText;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Do any additional setup after loading the view, typically from a nib.
    EBike *ebike;
    ebike = [[EBike alloc] initEBikeWithName: @"Maxi-Super"];
    self.statusText.text =  [NSString stringWithFormat:@"I like my %@!" ,ebike.name];
    NSLog( @"We loaded view, and so we just created another bike named '%@'",ebike.name );
    
    Vehicles *vehicles;
    vehicles = [[Vehicles alloc] init];
    [vehicles addEBike: ebike];
    EBike *e = [vehicles selectDefaultBike];
    NSLog( @"We added bike '%@' to our list of vehicles.",e.name );
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)InfoButton:(UIButton *)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Infos zu DigiBike"
        message:@"Infos zum Projekt DigiBike erhältst du unter https://github.com/internettechnik/digibike. "
        delegate:nil
        cancelButtonTitle:@"OK"
        otherButtonTitles:nil, //@"Info",
        nil
        ];
    [alert show];
    
    
}
@end
