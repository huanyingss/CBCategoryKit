#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSArray+CBArray.h"
#import "NSString+CBString.h"
#import "UIAlertController+CBAlert.h"

FOUNDATION_EXPORT double CBCategoryKitVersionNumber;
FOUNDATION_EXPORT const unsigned char CBCategoryKitVersionString[];

