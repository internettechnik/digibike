//
//  ViewController.m
//  digibike
//
//  Created by Valentin Riegler on 28.01.13.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import "ViewController.h"
#import "EBike.h"

@interface ViewController ()
// some private attributes:

// Note: every property is "Zero-Initialized":
@property (nonatomic) NSUInteger currentBikeNo;
@property (strong, nonatomic)Vehicles *vehicles;

-(void)updateStatusText;
@end

@implementation ViewController



- (IBAction)flipImage:(UIButton *)bikeImageButton {
    /*if (!bikeImageButton.selected){
        bikeImageButton.selected=YES;
    }else{
        bikeImageButton.selected=NO;
    }*/
    bikeImageButton.selected = !bikeImageButton.selected;
    self.currentBikeNo++;
    [self updateStatusText];
}


@synthesize statusText = _statusText;

@synthesize vehicles = _vehicles;
- (Vehicles *)vehicles{
    if (!_vehicles)
        _vehicles= [[Vehicles alloc] init];
    return _vehicles;
}


- (void)viewDidLoad{
    [super viewDidLoad];
	
    // Do any additional setup after loading the view, typically from a nib.
    NSLog( @"We loaded view and we create Vehicles (=list of bikes)");

    [self.vehicles addSomeDemoBikes];
    [self updateStatusText];
    
}

- (void)didReceiveMemoryWarning{
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
-(void)updateStatusText{
    EBike *e = [self.vehicles selectBikeWithNo:self.currentBikeNo];
    NSLog( @"We display %d. bike '%@' of our list of vehicles.",self.currentBikeNo,e.name );
    self.statusText.text =
    [NSString stringWithFormat:@"I like my %@!" ,e.name];
}
@end
