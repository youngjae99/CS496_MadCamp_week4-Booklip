//
//  ThirdTab.swift
//  Project4
//
//  Created by Youngjae Jang on 2020/08/06.
//  Copyright © 2020 Youngjae Jang. All rights reserved.
//

import SwiftUI
import ModalView

struct ThirdTab: View {
    @Environment(\.colorScheme) var scheme

    var body: some View {
        ModalPresenter {
            ModalLink(destination: Text("Modal View")) {
                Text("Main view")
                    .foregroundColor(Color.primary)
            }
        }.padding(.horizontal, 30)
    }
}

struct ThirdTab_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTab()
    }
}
