//
//  ViewController.h
//  PowerApp
//
//  Created by Derek Foresman on 11/16/18.
//  Copyright © 2018 MTAC Research. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (strong, nonatomic) NSTextField *statusField;

@property(getter=isSelectable) BOOL selectable;

@property(getter=isEditable) BOOL editable;

@end

