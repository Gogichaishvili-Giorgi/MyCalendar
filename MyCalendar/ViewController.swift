//
//  ViewController.swift
//  MyCalendar
//
//  Created by Giorgi Gogichaishvili on 10/25/20.
//
import FSCalendar
import UIKit


class ViewController: UIViewController, FSCalendarDelegate {
    @IBOutlet var calendar: FSCalendar!
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
    }

}

