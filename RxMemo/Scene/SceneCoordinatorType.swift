//
//  SceneCoordinatorType.swift
//  RxMemo
//
//  Created by ITlearning on 2021/09/09.
//

import Foundation
import RxSwift

protocol SceneCoordinatorType {
    @discardableResult
    
    // 새로운 Scene을 표시하는 메서드
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool) -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
}
