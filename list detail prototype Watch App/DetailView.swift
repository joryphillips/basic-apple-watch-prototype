//
//  DetailView.swift
//  prototype Watch App
//
//  Created by Jory Phillips on 3/5/24.
//

import SwiftUI

struct DetailView: View {
    let detail: Activity
    
    var body: some View {
        ScrollView {
            Image("\(detail.imagePath)").resizable().scaledToFit().clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading, spacing: 8) {
                Text("\(detail.location)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("\(detail.name)").font(.title3)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec laoreet venenatis laoreet. Vivamus sit amet porta enim. Donec risus tortor, maximus ac metus ut, sagittis volutpat nisl. Vivamus eget leo in massa fermentum bibendum. Quisque aliquet blandit leo, eu efficitur ante. Phasellus eros ligula, viverra vel erat vel, luctus convallis mauris. Quisque id tincidunt urna. Nulla vel dui ligula.")
                
            }
        }
    }
}

#Preview {
    let activities = Activities()
    return DetailView(detail: activities.list[4])
}
