//
//  Memo.swift
//  RxMemo
//
//  Created by ITlearning on 2021/09/08.
//

import Foundation

struct Memo: Equatable {
    var content: String // 메모 저장
    var insertDate: Date // 생성날짜 저장
    var identity: String // 메모를 구분할 때 사용하는 속성
    
    init(content: String, insertDate: Date = Date()) {
        self.content = content
        self.insertDate = insertDate
        self.identity = "\(insertDate.timeIntervalSinceReferenceDate)"
    }
    
    // 업데이트 된 메모를 기준으로 새로운 메모 인스턴스를 생성할 때 사용
    init(original: Memo, updatedContent: String) {
        self = original
        self.content = updatedContent
    }
}
