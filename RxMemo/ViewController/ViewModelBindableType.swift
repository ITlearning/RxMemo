//
//  ViewModelBindableType.swift
//  RxMemo
//
//  Created by ITlearning on 2021/09/08.
//

import UIKit

protocol ViewModelBindableType {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    func bindViewModel()
    
}


extension ViewModelBindableType where Self: UIViewController {
    mutating func bind(viewModel: Self.ViewModelType) {
        self.viewModel = viewModel
        
        loadViewIfNeeded()
        
        bindViewModel()
    }
}
