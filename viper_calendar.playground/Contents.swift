//: Playground - noun: a place where people can play

import UIKit

struct SelectingDateData {
//    let selectedDate: Date
    let selectedDate: String
}

protocol SelectingDateProvider {
    func provideSelectDateData()
}

protocol SelectingDateOutput: class {
    func receiveSelectDateData(selectedDate: SelectingDateData)
}

class SelectingDateInteractor: SelectingDateProvider {
    weak var output: SelectingDateOutput!
    
    func provideSelectDateData() {
        let selectedDate = SelectingDateData(selectedDate: "")
        self.output.receiveSelectDateData(selectedDate: selectedDate)
    }
}

protocol SelectingDateViewEventHandler {
    func didTapShowCalendarButton()
}

protocol SelectingDateView: class {
    func setSelectedDate(selectedDate: String) //??
}

class SelectingDatePresenter: SelectingDateOutput, SelectingDateViewEventHandler {
    weak var view: SelectingDateView!
    var selectingDateProvider: SelectingDateProvider!
    
    func didTapShowCalendarButton() {
        self.selectingDateProvider.provideSelectDateData()
    }
    
    func receiveSelectDateData(selectedDate: SelectingDateData) {
        let selectingDate = selectedDate.selectedDate
        self.view.setSelectedDate(selectedDate: selectingDate)
    }
}

class SelectingDateViewController: UIViewController, SelectingDateView {
    var eventHandler: SelectingDateViewEventHandler!
    let showSelectingDateButton = UIButton()
    let selectedDateLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showSelectingDateButton.addTarget(self, action: Selector("didTapButton"), for: .touchUpInside)
    }
    
    func didTapButton(button: UIButton) {
        self.eventHandler.didTapShowCalendarButton()
    }
    
    func setSelectedDate(selectedDate: String) {
        self.selectedDateLabel.text = selectedDate
    }
}

let view = SelectingDateViewController()
let presenter = SelectingDatePresenter()
let interactor = SelectingDateInteractor()

view.eventHandler = presenter
presenter.view = view
presenter.selectingDateProvider = interactor
interactor.output = presenter





