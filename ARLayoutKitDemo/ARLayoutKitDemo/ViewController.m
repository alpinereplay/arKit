//
//  ViewController.m
//  ARLayoutKitDemo
//
//  Created by Brian Bal on 5/7/13.
//  Copyright (c) 2013 AlpineReplay. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <ARKit/ARKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view applyStyle:@"page_background"];
    
    UILabel *titleLabel = [[UILabel alloc] initWithWidth:320 height:44];
    [titleLabel applyStyle:@"page_background"];
    [titleLabel applyStyle:@"title_label"];
    titleLabel.y = 0;
    titleLabel.text = [ARStrings localized:@"title"];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    UIImageView *imageView = [[UIImageView alloc] initWithWidth:145 height:140];
    [imageView applyStyle:@"avatar_style"];
    [self.view addSubview:imageView below:titleLabel offsetTop:10 offsetLeft:10];
    
    UIView *aView = [[UIView alloc] initWithWidth:145 height:20];
    [aView applyStyle:@"a_view_style"];
    [self.view addSubview:aView rightOf:imageView offsetTop:0 offsetLeft:10];
    
    UILabel *descriptionLabel = [[UILabel alloc] initWithWidth:145 height:110];
    [descriptionLabel applyStyle:@"description_label"];
    descriptionLabel.text = [ARStrings localized:@"description"];
    [self.view addSubview:descriptionLabel below:aView offsetTop:10 offsetLeft:0];
    
    UIView *bView = [[UIView alloc] initWithWidth:145 height:44];
    [bView applyStyle:@"b_view_style"];
    [self.view addSubview:bView below:descriptionLabel offsetTop:10 offsetLeft:0];
    
    if ([[ARTheme sharedTheme] boolForSetting:@"show_button"])
    {
        UIButton *button = [[UIButton alloc] initWithWidth:125 height:44];
        [button setTitle:[ARStrings localized:@"button"] forState:UIControlStateNormal];
        [button applyStyle:@"button_style1"];
        [self.view addSubview:button leftOf:bView offsetTop:0 offsetRight:20];
        
        UIButton *button2 = [[UIButton alloc] initWithWidth:125 height:34];
        [button2 setTitle:[ARStrings localized:@"button"] forState:UIControlStateNormal];
        [button2 applyStyle:@"button_with_image_insets"];
        [self.view addSubview:button2 below:button offsetTop:10 offsetLeft:0];
        
        UITextField *textField = [[UITextField alloc] initWithWidth:125 height:44];
        [textField applyStyle:@"text_field_style"];
        [self.view addSubview:textField below:button2 offsetTop:64 offsetLeft:0];
    }
    
    UIButton *button3 = [[UIButton alloc] initWithWidth:125 height:44];
    [button3 setTitle:[ARStrings localized:@"button"] forState:UIControlStateNormal];
    [button3 applyStyle:@"button_style2"];
    [self.view addSubview:button3 leftOf:bView offsetTop:150 offsetRight:20];
}


@end
