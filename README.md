# New-Picker-iOS-14
Example New Picker iOS 14

## Features

* UIMenu
* UIColorPicker
* UIDatePicker

## Requirements

- iOS 14
- Xcode 12.0

## Example
![image](https://raw.githubusercontent.com/devnoz/New-Picker-iOS-14/master/Image/Simulator%20Screen%20Shot%20-%20iPod%20touch%20(7th%20generation)%20-%202020-10-01%20at%2011.06.58.png)

## Example UIMenu
![image](https://raw.githubusercontent.com/devnoz/New-Picker-iOS-14/master/Image/Simulator%20Screen%20Shot%20-%20iPod%20touch%20(7th%20generation)%20-%202020-10-01%20at%2011.07.00.png)
``` swift
func setUpMenu() {
		
		let menuItem1 = UIAction(title: "compact", handler: { (action) in
			self.datePicker.preferredDatePickerStyle = .compact
			self.datePickerHeight.constant = 60
		})
		
		let menuItem2 = UIAction(title: "automatic", handler: { (action) in
			self.datePicker.preferredDatePickerStyle = .automatic
			self.datePickerHeight.constant = 60
		})
		
		let menuItem3 = UIAction(title: "inline", handler: { (action) in
			self.datePicker.preferredDatePickerStyle = .inline
			self.datePickerHeight.constant = 350
		})
		
		let menuItem4 = UIAction(title: "wheels", handler: { (action) in
			self.datePicker.preferredDatePickerStyle = .wheels
			self.datePickerHeight.constant = 300
		})
		
		let menu = UIMenu(title: "preferredDatePickerStyle", children: [menuItem1, menuItem2, menuItem3, menuItem4])
		menuTopNavButton.menu = menu
		menuTopNavButton.showsMenuAsPrimaryAction = true
		
}
```
## Example UIColorPicker
![image](https://raw.githubusercontent.com/devnoz/New-Picker-iOS-14/master/Image/Simulator%20Screen%20Shot%20-%20iPod%20touch%20(7th%20generation)%20-%202020-10-01%20at%2011.07.20.png)
``` swift
func setUpColorPicker() {
	colorPicker.delegate = self
	colorPicker.supportsAlpha = true
	colorPicker.selectedColor = UIColor.purple
	colorPickerButton.layer.borderWidth = 1
	colorPickerButton.layer.borderColor = UIColor.blue.cgColor
	colorPickerButton.layer.cornerRadius = 12
	colorPickerView.layer.cornerRadius = 12
}
```
## Example UIDatePicker
![image](https://raw.githubusercontent.com/devnoz/New-Picker-iOS-14/master/Image/Simulator%20Screen%20Shot%20-%20iPod%20touch%20(7th%20generation)%20-%202020-10-01%20at%2011.07.14.png)
``` swift
func setUpDatePicker() {
	datePicker.preferredDatePickerStyle = .compact
}
```
