//
//  ViewController.h
//  digibike
//
//  Created by Valentin Riegler on 28.01.13.
//  Copyright (c) 2013 FH Johanneum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)InfoButton:(UIButton *)sender;


// we created a User-Interface Control of type "Label" on the GUI
// we create now a corresponding element inside the code
// NOTE: you have to connect the Label on the storyboard
//       with this Controller-element "statusText":
//       by CTRL-dragging from View-Controller to the label,
//       thereby select "statusText"...
// weak, because if view "goes away" the statusText MUST NOT
//       be removed from memory (so we not use "strong")
// nonatomic => not thread safe
@property (weak, nonatomic) IBOutlet UILabel *statusText;

@end
