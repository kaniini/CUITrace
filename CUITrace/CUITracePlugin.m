//
//  CUITracePlugin.m
//  CUITrace
//
//  Created by William Pitcock on 12/27/12.
//  Copyright (c) 2012 William Pitcock. All rights reserved.
//

#import "CUITracePlugin.h"

@implementation CUITracePlugin

+ (void) load
{
    NSLog(@"CUITrace initializing");
    NSLog(@"CUITrace loaded");
}

+ (CUITracePlugin *) sharedInstance
{
    static CUITracePlugin *plugin = nil;
    
    if (plugin == nil)
        plugin = [[CUITracePlugin alloc] init];
    
    return plugin;
}

@end
