//
//  AppDelegate.h
//  OCRFun
//
//  Created by Tyler Reardon on 10/18/16.
//  Copyright © 2016 Tyler Reardon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

