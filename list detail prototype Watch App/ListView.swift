//
//  ContentView.swift
//  prototype Watch App
//
//  Created by Jory Phillips on 3/5/24.
//

import SwiftUI

struct ListView: View {
    @State private var activities = Activities()
    
    var body: some View {
            NavigationStack {
                List(activities.list) {item in
                    NavigationLink(
                        destination: DetailView(detail: item),
                        label: {
                            VStack(alignment: .leading) {
                                Text("\(item.location)").font(.title3)
                                Text("\(item.name)").font(.caption2)
                            }
                        }
                    )
                }

            }
    }
}

#Preview {
    ListView()
}
