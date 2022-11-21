//
//  MotherView.swift
//  trackr
//
//  Created by Luis on 21/11/2022.
//

import Foundation
import SwiftUI

struct MotherView: View {
    
    @State var currentPage: Page = .page1
    @StateObject var viewRouter: ViewRouter

    var body: some View {
        Text("Hello World")
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
