//
//  VHProfileVC.m
//  VHGithubNotifier
//
//  Created by viktorhuang on 2016/12/29.
//  Copyright © 2016年 黄伟平. All rights reserved.
//

#import "VHProfileVC.h"
#import "VHSettingsWC.h"

@interface VHProfileVC ()

@property (weak) IBOutlet NSButton *settingsButton;

@property (nonatomic, strong) VHSettingsWC *settingsWC;

@end

@implementation VHProfileVC

#pragma mark - Life

- (void)loadView
{
    [super loadView];
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor whiteColor].CGColor;
    
    self.settingsButton.image.template = YES;
}

#pragma mark - Actions

- (IBAction)onSettingsButtonClicked:(id)sender
{
    NOTIFICATION_POST(kNotifyWindowShouldHide);
    if (self.settingsWC == nil)
    {
        self.settingsWC = [[VHSettingsWC alloc] initWithWindowNibName:@"VHSettingsWC"];
    }
    [self.settingsWC showWindow:self];
}

@end
