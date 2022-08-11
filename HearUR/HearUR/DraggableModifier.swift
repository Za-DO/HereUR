//
//  DraggableModifier.swift
//  HearUR
//
//  Created by 유정인 on 2022/08/11.
//

import SwiftUI

/// 드래그 제스처 수정자
/// 방향 up, down을 인자로 받습니다.
struct DraggableModifier: ViewModifier {
    enum Direction {
        case up
        case down
    }
    
    @State private var dragOffset = CGSize.zero
    let direction: Direction
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(direction == .up ? .degrees(Double(dragOffset.height)/(-5)) : .degrees(0))
            .offset(x: 0,
                    y: direction == .up ? dragOffset.height * 5 : dragOffset.height * 2)
            .opacity(direction == .up ? 2 - Double((-dragOffset.height)/50) : 1)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        dragOffset = gesture.translation
                    }
                    .onEnded { _ in
                        switch direction {
                        case .up:
                            if dragOffset.height < -100 {
                            } else {
                                dragOffset = .zero
                            }
                        case .down:
                            if dragOffset.height > 200 {
                                // TODO: 200이상 드래그되면 지갑에 카드 들어가는 효과 실행
                            } else {
                                dragOffset = .zero
                            }
                        }
                    }
            )
    }
}
