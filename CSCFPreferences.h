//
//  CSCFPreferences.h
//
//  Created by CreatureSurvive on 9/2/18.
//  Copyright (c) 2018 Dana Buehre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSCFPreferences : NSObject

- (instancetype)initWithBundleID:(NSString *)bundleID;
- (id)objectForKey:(NSString *)key;
- (void)setObject:(id)object forKey:(NSString *)key;
- (BOOL)synchronize;

@end
