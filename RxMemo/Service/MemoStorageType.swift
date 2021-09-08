//
//  MemoStorageType.swift
//  RxMemo
//
//  Created by ITlearning on 2021/09/08.
//

import Foundation
import RxSwift

// 기본적인 CRUD 메서드 선언
protocol MemoStorageType {
    @discardableResult
    func createMemo(content: String) -> Observable<Memo>
    
    @discardableResult
    func memoList() -> Observable<[Memo]>
    
    @discardableResult
    func update(memo: Memo, content: String) -> Observable<Memo>
    
    @discardableResult
    func delete(memo: Memo) -> Observable<Memo>
}
