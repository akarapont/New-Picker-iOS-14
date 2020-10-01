//
//  ViewController.swift
//  TestPicker
//
//  Created by akharapon on 1/10/2563 BE.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var colorPickerView: UIView!
	@IBOutlet weak var colorPickerButton: UIButton!
	@IBOutlet weak var datePicker: UIDatePicker!
	@IBOutlet weak var datePickerHeight: NSLayoutConstraint!
	@IBOutlet weak var menuTopNavButton: UIButton!
	
	let colorPicker = UIColorPickerViewController()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setUp()
	}
	
	func setUp() {
		setUpMenu()
		setUpColorPicker()
		setUpDatePicker()
	}

	func setUpColorPicker() {
		colorPicker.delegate = self
		colorPicker.supportsAlpha = true
		colorPicker.selectedColor = UIColor.purple
		colorPickerButton.layer.borderWidth = 1
		colorPickerButton.layer.borderColor = UIColor.blue.cgColor
		colorPickerButton.layer.cornerRadius = 12
		colorPickerView.layer.cornerRadius = 12
	}
	
	func setUpDatePicker() {
		datePicker.preferredDatePickerStyle = .compact
	}
	
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

	@IBAction func colorPickerDidTap(_ sender: Any) {
		present(colorPicker, animated: true, completion: nil)
	}
	
}

// MARK: - UIColorPickerView
extension ViewController: UIColorPickerViewControllerDelegate {
	// Optional delegate functions
	func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
		// Check out .selectedColor property
		let color = viewController.selectedColor
		colorPickerView.backgroundColor = color
	}

	func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
		// The delegate staple function, didFinish
	}
}

