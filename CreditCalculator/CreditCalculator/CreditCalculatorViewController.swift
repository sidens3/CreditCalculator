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
        static let computeButtonTitle = "Рассчитать"
        static let creditBodyLabelTitle = "Сумма кредита"
        static let rateLabelTitle = "Процентная ставка (%)"
        static let periodLabelTitle = "Срок кредита (мес)"
        static let creditTypeLabelTitle = "Тип платежа"
                
        static let commonBackgroundColor: UIColor = .systemBackground
        static let textLabelFont = UIFont.systemFont(ofSize: 15.0, weight: .semibold)
    }

    //MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = Constants.screenTitle
        self.view.backgroundColor = Constants.commonBackgroundColor
        
        setupSubviews()
    }
    
    //MARK: - UI Elements
    private let containerView: UIView  = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Constants.commonBackgroundColor
        
        return view
    }()
    
    private let textFieldsView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    ///rate elements
    private let creditBodyStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.axis = .horizontal
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    private let creditBodyLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Constants.creditBodyLabelTitle
        label.textColor = .darkText
        label.textAlignment = .left
        label.font = Constants.textLabelFont
        label.backgroundColor = .clear
        return label
    }()
    
    private let creditBodyTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.placeholder = "Тело кредита"
        return textField
    }()
    
    ///rate elements
    private let rateStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.axis = .horizontal
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let rateLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Constants.rateLabelTitle
        label.textColor = .darkText
        label.textAlignment = .left
        label.font = Constants.textLabelFont
        label.backgroundColor = .clear
        return label
    }()
    
    private let rateTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.placeholder = "Ставка"
        return textField
    }()
    
    ///period elements
    private let periodStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.axis = .horizontal
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let periodLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Constants.periodLabelTitle
        label.textColor = .darkText
        label.textAlignment = .left
        label.font = Constants.textLabelFont
        label.backgroundColor = .clear
        return label
    }()
    
    private let periodTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.placeholder = "Период"
        return textField
    }()
    
    /// creditType elements
    private let creditTypeStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.axis = .vertical
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let creditTypeLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Constants.creditTypeLabelTitle
        label.textColor = .darkText
        label.textAlignment = .left
        label.font = Constants.textLabelFont
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
        
        containerView.addSubview(textFieldsView)
        containerView.addSubview(creditTypeStackView)
        
        textFieldsView.addSubview(creditBodyStackView)
        textFieldsView.addSubview(rateStackView)
        textFieldsView.addSubview(periodStackView)
        
        creditTypeStackView.addArrangedSubview(creditTypeLabel)
        creditTypeStackView.addArrangedSubview(creditTypeSegmentedControl)
        
        creditBodyStackView.addArrangedSubview(creditBodyLabel)
        creditBodyStackView.addArrangedSubview(creditBodyTextField)
        rateStackView.addArrangedSubview(rateLabel)
        rateStackView.addArrangedSubview(rateTextField)
        periodStackView.addArrangedSubview(periodLabel)
        periodStackView.addArrangedSubview(periodTextField)
        
        //constraints for hight level elements
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            containerView.bottomAnchor.constraint(equalTo: computeButton.topAnchor, constant: -50),
            
            computeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            computeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            
            textFieldsView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            textFieldsView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 10),
            textFieldsView.topAnchor.constraint(equalTo: containerView.topAnchor),
            textFieldsView.bottomAnchor.constraint(equalTo: creditTypeStackView.topAnchor),
            
            creditTypeStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            creditTypeStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 10),
            creditTypeStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -50)
        ])
        
        
        //constraints for textFieldsView elements
        NSLayoutConstraint.activate([
            creditBodyStackView.leadingAnchor.constraint(equalTo: textFieldsView.leadingAnchor),
            creditBodyStackView.trailingAnchor.constraint(equalTo: textFieldsView.trailingAnchor),
            creditBodyStackView.topAnchor.constraint(equalTo: textFieldsView.topAnchor, constant: 5),
            creditBodyStackView.bottomAnchor.constraint(equalTo: rateStackView.topAnchor, constant: -15),
            
            rateStackView.leadingAnchor.constraint(equalTo: textFieldsView.leadingAnchor),
            rateStackView.trailingAnchor.constraint(equalTo: textFieldsView.trailingAnchor),
            rateStackView.bottomAnchor.constraint(equalTo: periodStackView.topAnchor, constant: -15),

            periodStackView.leadingAnchor.constraint(equalTo: textFieldsView.leadingAnchor),
            periodStackView.trailingAnchor.constraint(equalTo: textFieldsView.trailingAnchor),
            periodStackView.bottomAnchor.constraint(lessThanOrEqualTo: textFieldsView.bottomAnchor, constant: -15)
        ])
    }
}
