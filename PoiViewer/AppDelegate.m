//
//  AppDelegate.m
//  PoiViewer
//
//  Created by Greg Ball on 10/29/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [self setWindow: [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease]];
    // Override point for customization after application launch.
    [self setViewController:[[[ViewController alloc] init] autorelease]];
    [[self window] setRootViewController:[self viewController]];
    [self.window makeKeyAndVisible];
    return YES;
}




@end