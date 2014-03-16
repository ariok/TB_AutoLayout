//
//  ResizerViewController.m
//  TB_AutoLayout
//
//  Created by Yari D'areglia on 2/17/14.
//  Copyright (c) 2014 Yari D'areglia. All rights reserved.
//

#import "ResizerViewController.h"

@interface ResizerViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *CS_BottomView_Height;

@property (weak, nonatomic) IBOutlet UIView *bottomView;
@end

@implementation ResizerViewController

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
        self.CS_BottomView_Height.constant = 100;
    }else{
        self.CS_BottomView_Height.constant = 330;
    }
    
    [self.bottomView setNeedsUpdateConstraints];

}

@end
