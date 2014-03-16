//
//  ScreamViewController.m
//  TB_AutoLayout
//
//  Created by Yari D'areglia on 2/17/14.
//  Copyright (c) 2014 Yari D'areglia. All rights reserved.
//

#import "ScreamViewController.h"

@interface ScreamViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *CS_Mounth_Height;

@end

@implementation ScreamViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation)) {
        self.CS_Mounth_Height.constant = 100;
    }else{
        self.CS_Mounth_Height.constant = 238;
    }
    
    [self.view setNeedsUpdateConstraints];
    
}

@end
