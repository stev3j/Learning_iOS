//
//  ListView.swift
//  Learning_iOS
//
//  Created by 조승완 on 2023/10/01.
//

import SwiftUI

struct ListView: View {
    let list = ["first", "second", "third"]
    var body: some View {
        NavigationStack {
            List(list, id: \.self) { list in
                Text(list)
            }
            .navigationBarTitle("Title")
        }
        
    }
}

#Preview {
    ListView()
}
