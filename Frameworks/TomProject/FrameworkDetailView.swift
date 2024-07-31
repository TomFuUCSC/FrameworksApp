//
//  FrameworkDetailView.swift
//  TomProject
//
//  Created by Tom Fu on 5/31/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    var body: some View {
        VStack{
            HStack(){
                Spacer()
                Button {
                    viewModel.isShowingDetailView.wrappedValue = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            

            Spacer()
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!, label: {
                FrameworkButton(title: "Learn More")
            })
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                FrameworkButton(title: "Learn More")
//            }
        }
//        .sheet(isPresented: $viewModel.isShowingSafariView){
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        }
    }
}

//struct FrameworkDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView)
//    }
//}
