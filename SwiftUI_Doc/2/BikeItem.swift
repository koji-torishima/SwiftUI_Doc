//
//  BikeItem.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/02/24.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

// cell
struct BikeItem: View {
    var bike: Bike
    var body: some View {
        HStack {
            Image(bike.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            
            Text(bike.maker)
                .font(.title)
                .fontWeight(.medium)
            
            Spacer()
        }
    }
}

struct BikeItem_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ContentSizeCategory.allCases, id: \.self) { category in
            BikeItem(bike: bikes[0])
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, category)
            .previewDisplayName("\(category)")
        }
    }
}
