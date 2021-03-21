/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/
%hook SBPowerDownViewContoller
-(BOOL)handleLockButtonPress {
	return NO;
}
-(int)_preferredStatusBarVisibility {
	return 0;
}
-(void)viewWillAppear:(BOOL)arg1 {

}
-(void)powerDownViewAnimateOutCompleted:(id)arg1 {

}
-(void)powerDownViewWillAnimateIn:(id)arg1 {

}
-(void)powerDownViewWillAnimateOut:(id)arg1 {

}
-(void)powerDownViewRequestPowerDown:(id)arg1 {

}
-(void)powerDownViewRequestCancel:(id)arg1 {

}
-(BOOL)shouldDisableSiri {
	return NO;
}
-(void)viewDidLoad {

}
-(BOOL)shouldDisableControlCenter {
	return NO;
}
-(void)viewWillDisappear:(BOOL)arg1 {

}
-(long long)idleTimerMode {
	return 0;
}
//-(id<SBPowerDownViewControllerDelegate>)delegate;
-(void)setDelegate:(id<SBPowerDownViewControllerDelegate>)arg1 {

}
-(void)viewDidDisappear:(BOOL)arg1 {

}
-(void)viewDidLayoutSubviews {

}
-(BOOL)_canShowWhileLocked {
	retutn NO;
}
-(void)_beginTimeTracking {

}
-(void)_incrementCountForKey:(id)arg1 {

}
-(void)_endTimeTrackingIncludingReportWithKey:(id)arg1 {

}
-(void)_resetScreenBrightness {

}
-(void)powerDownViewDidBeginSlide:(id)arg1 { 

}
-(void)powerDownView:(id)arg1 didUpdateSlideWithValue:(double)arg2 {

}
-(void)powerDownViewDidCompleteSlide:(id)arg1 {

}
-(void)powerDownViewDidCancelSlide:(id)arg1 {

}
-(void)powerDownViewDidReceiveCancelButtonAction:(id)arg1 {

}
-(void)powerDownViewDidFireIdleTimer:(id)arg1 {

}
-(BOOL)allowsStackingOverlayContentAbove {
	return NO;
}
//-(id)newTransientOverlayDismissalTransitionCoordinator;
//-(id)newTransientOverlayPresentationTransitionCoordinator;
-(BOOL)shouldDisableBanners {
	return NO;
}
-(BOOL)shouldPendAlertItems {
	return NO;
}
%end
