# CSCFPreferences

a convenince wrapper built around `CFPreferences`
This will allow you to use `CFPreferences` with the familiar syntax of `NSUserDefaults`. This can be useful for managing persistent values in tools where `NSUserDefaults` is not available.

# Importing

I recommend using git submodules to manage *CSCFPreferences*  

- Initialize git:  
`$cd path/to/my/project/root && git init`  

- Initialize the submodule:  
`$git submodule add https://github.com/CreatureSurvive/CSCFPreferences CSCFPreferences`  

- Download the submodule (optional):  
`$git submodule update --init --recursive`  

> Newer versions of git will download the submodule automatically, if you're using and older version you need to explicitly tell git to download the submodule.  

Alternatively, you can just clone the *CSCFPreferences* into your project.  

- Clone:  
`$cd path/to/my/project/root && git clone --recursive https://github.com/CreatureSurvive/CSCFPreferences`

## Usage

```
#import <CSCFPreferences.h>

@interface MyClass : NSObject
@prorperty(nonatomic, retain) CSCFPreferences *prefs;
@end

@implementation CSCFPreferences

- (void)init {
	
	if ((self = [super init])) {
		
		self.prefs = [[CSCFPreferences alloc] initWithBundleId:@"com.creaturecoding.myprefs" autoSyncronize:YES];
	}
	
	return self;
}

- (void)saveValue {
	[self.prefs setObject:@(27) forKey:@"kMyInt"];
	[self.prefs setObject:@(1.673893) forKey:@"kMyFloat"];
	[self.prefs setObject:@(0.187650089432) forKey:@"kMyDouble"];
	[self.prefs setObject:@(YES) forKey:@"kMyBool"];
	[self.prefs setObject:@"some string" forKey:@"kMyString"];
}

- (void)logValue {
	NSLog(@"MyInt = %@", [self.prefs intForKey:@"kMyInt"]);
	NSLog(@"MyFloat = %@", [self.prefs intForKey:@"kMyFloat"]);
	NSLog(@"MyDouble = %@", [self.prefs intForKey:@"kMyDouble"]);
	NSLog(@"MyBool = %@", [self.prefs intForKey:@"kMyBool"]);
	NSLog(@"MyString = %@", [self.prefs intForKey:@"kMyString"]);
}
```

## Credits and Acknowledgments

Created and Maintained by [CreatureSurvive](https://creaturecoding.com/) (Dana Buehre)

## License

This software is licensed under the MIT License, detailed in the file [LICENSE.md](https://github.com/CreatureSurvive/ CSCFPreferences/tree/master/LICENSE.md)

## Submit Bugs & or Fixes:

https://github.com/CreatureSurvive/CSCFPreferences/issues  

 