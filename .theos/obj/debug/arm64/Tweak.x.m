#line 1 "Tweak.x"



































#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBPowerDownViewContoller; 
static BOOL (*_logos_orig$_ungrouped$SBPowerDownViewContoller$handleLockButtonPress)(_LOGOS_SELF_TYPE_NORMAL SBPowerDownViewContoller* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBPowerDownViewContoller$handleLockButtonPress(_LOGOS_SELF_TYPE_NORMAL SBPowerDownViewContoller* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SBPowerDownViewContoller$shouldDisableControlCenter)(_LOGOS_SELF_TYPE_NORMAL SBPowerDownViewContoller* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBPowerDownViewContoller$shouldDisableControlCenter(_LOGOS_SELF_TYPE_NORMAL SBPowerDownViewContoller* _LOGOS_SELF_CONST, SEL); 

#line 35 "Tweak.x"

static BOOL _logos_method$_ungrouped$SBPowerDownViewContoller$handleLockButtonPress(_LOGOS_SELF_TYPE_NORMAL SBPowerDownViewContoller* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return NO;
}
static BOOL _logos_method$_ungrouped$SBPowerDownViewContoller$shouldDisableControlCenter(_LOGOS_SELF_TYPE_NORMAL SBPowerDownViewContoller* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return NO;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBPowerDownViewContoller = objc_getClass("SBPowerDownViewContoller"); { MSHookMessageEx(_logos_class$_ungrouped$SBPowerDownViewContoller, @selector(handleLockButtonPress), (IMP)&_logos_method$_ungrouped$SBPowerDownViewContoller$handleLockButtonPress, (IMP*)&_logos_orig$_ungrouped$SBPowerDownViewContoller$handleLockButtonPress);}{ MSHookMessageEx(_logos_class$_ungrouped$SBPowerDownViewContoller, @selector(shouldDisableControlCenter), (IMP)&_logos_method$_ungrouped$SBPowerDownViewContoller$shouldDisableControlCenter, (IMP*)&_logos_orig$_ungrouped$SBPowerDownViewContoller$shouldDisableControlCenter);}} }
#line 43 "Tweak.x"
