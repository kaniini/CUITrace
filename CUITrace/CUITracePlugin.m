//
//  CUITracePlugin.m
//  CUITrace
//
//  Created by William Pitcock on 12/27/12.
//  Copyright (c) 2012 William Pitcock. All rights reserved.
//

#import "CUITracePlugin.h"

typedef CFTypeRef CUIRendererRef;
extern void CUIDraw(CUIRendererRef renderer, CGRect frame, CGContextRef context, CFDictionaryRef object, CFDictionaryRef *unk);

typedef void (*CUIDrawProc)();
static CUIDrawProc CUIDrawOriginalProc;

static void CUIDrawOverride(CUIRendererRef renderer, CGRect frame, CGContextRef context, CFDictionaryRef object, CFDictionaryRef *unk)
{
    NSLog(@"%@", (__bridge NSDictionary *) object);
    CUIDrawOriginalProc(renderer, frame, context, object, unk);
}

@implementation CUITracePlugin

+ (void) load
{
    NSLog(@"CUITrace initializing");
    mach_override_ptr((void *)&CUIDraw,
                      (void *)&CUIDrawOverride,
                      (void **)&CUIDrawOriginalProc);
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
