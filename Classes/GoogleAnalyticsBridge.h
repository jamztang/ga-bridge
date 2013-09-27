/*
 * This file is part of the ga-bridge package
 * (c) Jamz Tang <jamz@jamztang.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import <Foundation/Foundation.h>

@class WebView;

@interface GoogleAnalyticsBridge : NSObject

@property (strong) WebView *webView;
@property (copy, nonatomic) NSString *trackerID;
@property (copy, nonatomic) NSString *pageViewURL;

-(id)init:(NSWindow*)window trackerID:(NSString*)trackerID;
-(void)trackView:(NSString*)viewName;

@end
