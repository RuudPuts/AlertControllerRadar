//
//  ViewController.m
//  AlertControllerRadar
//
//  Created by Ruud Puts on 02/06/15.
//  Copyright (c) 2015 Ruud Puts. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)actionSheetWithCancelStyle:(UIButton *)sender {
    [self presentActionSheetFromSender:sender withCancelButtonStyel:UIAlertActionStyleCancel];
}

- (IBAction)actionSheetWithDefaultStyle:(UIButton *)sender {
    [self presentActionSheetFromSender:sender withCancelButtonStyel:UIAlertActionStyleDefault];
}

- (void)presentActionSheetFromSender:(UIButton *)sender withCancelButtonStyel:(UIAlertActionStyle)cancelButtonStyle {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"TestController" message:@"TestMessage" preferredStyle:UIAlertControllerStyleActionSheet];
    alertController.popoverPresentationController.sourceRect = sender.bounds;
    alertController.popoverPresentationController.sourceView = sender;
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:cancelButtonStyle handler:^(UIAlertAction *action) {
        [alertController dismissViewControllerAnimated:YES completion:nil];
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
