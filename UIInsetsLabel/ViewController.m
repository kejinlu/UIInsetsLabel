//
//  ViewController.m
//  UIInsetsLabel
//
//  Created by Lu Kejin on 3/6/12.
//  Copyright (c) 2012 Taobao.com. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ViewController
@synthesize insetsLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    insetsLabel.layer.cornerRadius = 6;
    insetsLabel.textColor = [UIColor whiteColor];
    insetsLabel.backgroundColor = [UIColor redColor];
    insetsLabel.font = [UIFont boldSystemFontOfSize:18];
    insetsLabel.insets = UIEdgeInsetsMake(8, 8, 8, 8);
    
    [insetsLabel sizeToFit];//调用sizeToFit调整大小
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
