//
//  ViewController.swift
//  CreditCalculator
//
//  Created by Михаил Зиновьев on 27.09.2021.
//

import UIKit

class CreditCalculatorViewController: UIViewController {
    
    private enum Constants {
        
        static let screenTitle = "Рассчет кредита"
        static let commonBackgroundColor: UIColor = .systemBackground
        static let computeButtonTitle: String = "Рассчитать"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = Constants.screenTitle
        self.view.backgroundColor = Constants.commonBackgroundColor
    }
    
    //MARK: - UI Elements
    private let containerView: UIView  = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Constants.commonBackgroundColor
        
        return view
    }()
    
    private let textFieldsStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.backgroundColor = .clear
        
        return stackView
    }()
    
    ///rate elements
    private let creditBodyStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.backgroundColor = .clear
        
        return stackView
    }()
    
    private let creditBodyLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.backgroundColor = .clear
        
        return label
    }()
    
    private let creditBodyTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.backgroundColor = .clear
        return textField
    }()
    
    ///rate elements
    private let rateStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.backgroundColor = .clear
        
        return stackView
    }()
    
    private let rateBodyLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.backgroundColor = .clear
        return label
    }()
    
    private let rateTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.backgroundColor = .clear
        return textField
    }()
    
    ///period elements
    private let periodStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.backgroundColor = .clear
        
        return stackView
    }()
    
    private let periodLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.backgroundColor = .clear
        return label
    }()
    
    private let periodTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.backgroundColor = .clear
        return textField
    }()
    
    /// creditType elements
    private let creditTypeLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.backgroundColor = .clear
        return label
    }()
    
    private let creditTypeSegmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(frame: .zero)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        segmentedControl.backgroundColor = .clear
        return segmentedControl
    }()
    
    private let computeButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(Constants.computeButtonTitle, for: .selected)
        button.backgroundColor = .systemBlue
        
        return button
    }()
    
    //MARK: - Setup UI Elements
    func setupSubviews() {
        self.view.addSubview(containerView)
        self.view.addSubview(computeButton)
        
        containerView.addSubview(textFieldsStackView)
        containerView.addSubview(creditTypeSegmentedControl)
    }
}


