//
//  SingleLineTextField.h
//  SingleLineInput
//
//  Created by Diogo Maximo on 17/10/14.
//

#import <UIKit/UIKit.h>
@interface SingleLineTextField : UITextField<UITextFieldDelegate>{
    
}
-(void)setLineDisabledColor:(UIColor *)aLineDisabledColor NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
-(void) setLineNormalColor:(UIColor *)aLineNormalColor NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
-(void) setLineSelectedColor:(UIColor *)aLineSelectedColor NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
-(void) setInputTextColor:(UIColor *)anInputTextColor NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
-(void) setInputPlaceHolderColor:(UIColor *)anInputPlaceHolderColor NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
-(void) setPlaceHolderFont:(UIFont *)font NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
-(void) setInputFont:(UIFont *)font NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR;
-(void) updateText:(NSString *) aText;

@end
