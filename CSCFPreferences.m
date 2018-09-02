//
//  CSCFPreferences.m
//
//  Created by CreatureSurvive on 9/2/18.
//  Copyright (c) 2018 Dana Buehre. All rights reserved.
//

#import "CSCFPreferences.h"

@interface CSCFPreferences ()

@property(nonatomic, copy) NSString* bundleID;

@end

@implementation CSCFPreferences

#pragma mark - Initializer

- (instancetype)initWithbundleID:(NSString*)bundleID {
    
    if ((self = [super init])) {
        self.bundleID = bundleID;
    }

    return self;
}

- (id)objectForKey:(NSString*)key {
    CFPropertyListRef value = CFPreferencesCopyValue(
        (__bridge CFStringRef)key,
        (__bridge CFStringRef)self.bundleID,
        kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    
    id object = nil;

    if (value != NULL) {
        object = (__bridge id)value;
        CFRelease(value);
    }

    return object;
}

- (void)setObject:(id)object forKey:(NSString*)key {
    CFPreferencesSetValue((__bridge CFStringRef)key,
                          (__bridge CFPropertyListRef)object,
                          (__bridge CFStringRef)self.bundleID,
                          kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

- (BOOL)synchronize {
    return CFPreferencesSynchronize(
        (__bridge CFStringRef)self.bundleID,
        kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

@end
