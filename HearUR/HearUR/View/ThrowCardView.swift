//
//  ThrowCardView.swift
//  HearUR
//
//  Created by 유정인 on 2022/08/11.
//

import SwiftUI

struct ThrowCardView: View {
    @State private var offset = CGSize.zero
    
    var body: some View {
        VStack {
            HStack {
                Image("appName")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                Spacer()
                Button {
                    print("저장된 카드 보기 뷰로 이동")
                } label: {
                    Image(systemName: "rectangle.fill.on.rectangle.angled.fill")
                        .font(.system(size: 31))
                }

            }
            .padding(EdgeInsets(top: 0, leading: 40, bottom: 27, trailing: 40))
            Image("swipeUpArrow")
            Text("Swipe up and show your card")
                .font(.custom("D2Coding", size: 16))
                .foregroundColor(.grayScale3)
                .padding(.bottom, 20)
            ZStack(alignment: .bottom) {
                Image("handBack")
                    .offset(x: -115, y: 100)
                // TODO: 명함 image로 변경
                Image("cardBackground")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 310)
                    .modifier(DraggableModifier(direction: .up))
                Image("handFront")
                    .offset(x: -115, y: 100)
            }
        }
    }
}

struct ThrowCardView_Previews: PreviewProvider {
    static var previews: some View {
        ThrowCardView()
    }
}
