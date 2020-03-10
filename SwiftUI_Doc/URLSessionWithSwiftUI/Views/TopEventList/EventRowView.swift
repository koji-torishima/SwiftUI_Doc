//
//  EventRowView.swift
//  SwiftUI_Doc
//
//  Created by koji torishima on 2020/03/10.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import SwiftUI

struct EventRowView: View {
    var eventData: Event
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(eventData.title)
            .bold()
                .font(.headline)
            .lineLimit(2)
                .padding(Edge.Set.top, 8.0)
                .padding(Edge.Set.bottom, 12.0)
            HStack {
                Image(systemName: "calender")
                    .imageScale(.medium)
                    .foregroundColor(.red)
                Text(StudyGroupDateFormatter.convertNormalDateString(dateStr: eventData.startDate, isOnlyDate: false) + "~").font(.footnote)
            }.padding(Edge.Set.bottom, 6.0)
            HStack {
                Image(systemName: "person.fill")
                    .imageScale(.medium)
                    .foregroundColor(.red)
                Text(eventData.ownerDisplayName + "他").font(.footnote)
            }.padding(Edge.Set.bottom, 60)
            HStack {
                Image(systemName: "mappin.and.ellipse")
                    .imageScale(.medium)
                    .foregroundColor(.red)
                Text(eventData.address)
                    .font(.footnote)
                .lineLimit(3)
                
            }.padding(Edge.Set.bottom, 4.0)
            HStack {
                Spacer()
                Text("#" + eventData.hashTag)
                    .foregroundColor(.blue)
                    .font(.caption)
                    .padding(Edge.Set.bottom, 8.0)
                
            }
        }
    }
}

struct EventRowView_Previews: PreviewProvider {
    static var previews: some View {
        EventRowView(eventData: mockEventsData[0])
    }
}
