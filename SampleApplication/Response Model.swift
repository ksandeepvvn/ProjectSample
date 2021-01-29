//
//  Response Model.swift
//  SampleApplication
//
//  Created by Sandeep on 29/01/21.
//

import Foundation
import Foundation
import ObjectMapper

struct ResponseModelObj : Mappable {
    var success : Bool?
    var data : Data?
    var additional_data : Additional_data?
    var related_objects : Related_objects?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        success <- map["success"]
        data <- map["data"]
        additional_data <- map["additional_data"]
        related_objects <- map["related_objects"]
    }

}

struct Additional_data : Mappable {
    var dropbox_email : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        dropbox_email <- map["dropbox_email"]
    }

}

struct Age : Mappable {
    var y : Int?
    var m : Int?
    var d : Int?
    var h : Int?
    var i : Int?
    var s : Int?
    var total_seconds : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        y <- map["y"]
        m <- map["m"]
        d <- map["d"]
        h <- map["h"]
        i <- map["i"]
        s <- map["s"]
        total_seconds <- map["total_seconds"]
    }

}

struct Average_time_to_won : Mappable {
    var y : Int?
    var m : Int?
    var d : Int?
    var h : Int?
    var i : Int?
    var s : Int?
    var total_seconds : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        y <- map["y"]
        m <- map["m"]
        d <- map["d"]
        h <- map["h"]
        i <- map["i"]
        s <- map["s"]
        total_seconds <- map["total_seconds"]
    }

}

struct Data : Mappable {
    var id : Int?
    var creator_user_id : Int?
    var user_id : Int?
    var person_id : Person_id?
    var org_id : Org_id?
    var stage_id : Int?
    var title : String?
    var value : Int?
    var currency : String?
    var add_time : String?
    var update_time : String?
    var stage_change_time : String?
    var active : Bool?
    var deleted : Bool?
    var status : String?
    var probability : String?
    var next_activity_date : String?
    var next_activity_time : String?
    var next_activity_id : String?
    var last_activity_id : String?
    var last_activity_date : String?
    var lost_reason : String?
    var visible_to : String?
    var close_time : String?
    var pipeline_id : Int?
    var won_time : String?
    var first_won_time : String?
    var lost_time : String?
    var products_count : Int?
    var files_count : Int?
    var notes_count : Int?
    var followers_count : Int?
    var email_messages_count : Int?
    var activities_count : Int?
    var done_activities_count : Int?
    var undone_activities_count : Int?
    var participants_count : Int?
    var expected_close_date : String?
    var last_incoming_mail_time : String?
    var last_outgoing_mail_time : String?
    var label : String?
    var stage_order_nr : Int?
    var person_name : String?
    var org_name : String?
    var next_activity_subject : String?
    var next_activity_type : String?
    var next_activity_duration : String?
    var next_activity_note : String?
    var formatted_value : String?
    var weighted_value : Int?
    var formatted_weighted_value : String?
    var weighted_value_currency : String?
    var rotten_time : String?
    var owner_name : String?
    var cc_email : String?
    var org_hidden : Bool?
    var person_hidden : Bool?
    var average_time_to_won : Average_time_to_won?
    var average_stage_progress : Int?
    var age : Age?
    var stay_in_pipeline_stages : Stay_in_pipeline_stages?
    var last_activity : String?
    var next_activity : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        id <- map["id"]
        creator_user_id <- map["creator_user_id"]
        user_id <- map["user_id"]
        person_id <- map["person_id"]
        org_id <- map["org_id"]
        stage_id <- map["stage_id"]
        title <- map["title"]
        value <- map["value"]
        currency <- map["currency"]
        add_time <- map["add_time"]
        update_time <- map["update_time"]
        stage_change_time <- map["stage_change_time"]
        active <- map["active"]
        deleted <- map["deleted"]
        status <- map["status"]
        probability <- map["probability"]
        next_activity_date <- map["next_activity_date"]
        next_activity_time <- map["next_activity_time"]
        next_activity_id <- map["next_activity_id"]
        last_activity_id <- map["last_activity_id"]
        last_activity_date <- map["last_activity_date"]
        lost_reason <- map["lost_reason"]
        visible_to <- map["visible_to"]
        close_time <- map["close_time"]
        pipeline_id <- map["pipeline_id"]
        won_time <- map["won_time"]
        first_won_time <- map["first_won_time"]
        lost_time <- map["lost_time"]
        products_count <- map["products_count"]
        files_count <- map["files_count"]
        notes_count <- map["notes_count"]
        followers_count <- map["followers_count"]
        email_messages_count <- map["email_messages_count"]
        activities_count <- map["activities_count"]
        done_activities_count <- map["done_activities_count"]
        undone_activities_count <- map["undone_activities_count"]
        participants_count <- map["participants_count"]
        expected_close_date <- map["expected_close_date"]
        last_incoming_mail_time <- map["last_incoming_mail_time"]
        last_outgoing_mail_time <- map["last_outgoing_mail_time"]
        label <- map["label"]
        stage_order_nr <- map["stage_order_nr"]
        person_name <- map["person_name"]
        org_name <- map["org_name"]
        next_activity_subject <- map["next_activity_subject"]
        next_activity_type <- map["next_activity_type"]
        next_activity_duration <- map["next_activity_duration"]
        next_activity_note <- map["next_activity_note"]
        formatted_value <- map["formatted_value"]
        weighted_value <- map["weighted_value"]
        formatted_weighted_value <- map["formatted_weighted_value"]
        weighted_value_currency <- map["weighted_value_currency"]
        rotten_time <- map["rotten_time"]
        owner_name <- map["owner_name"]
        cc_email <- map["cc_email"]
        org_hidden <- map["org_hidden"]
        person_hidden <- map["person_hidden"]
        average_time_to_won <- map["average_time_to_won"]
        average_stage_progress <- map["average_stage_progress"]
        age <- map["age"]
        stay_in_pipeline_stages <- map["stay_in_pipeline_stages"]
        last_activity <- map["last_activity"]
        next_activity <- map["next_activity"]
    }

}

struct Email : Mappable {
    var value : String?
    var primary : Bool?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        value <- map["value"]
        primary <- map["primary"]
    }

}

struct Org_id : Mappable {
    var name : String?
    var people_count : Int?
    var owner_id : Int?
    var address : String?
    var active_flag : Bool?
    var cc_email : String?
    var value : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        name <- map["name"]
        people_count <- map["people_count"]
        owner_id <- map["owner_id"]
        address <- map["address"]
        active_flag <- map["active_flag"]
        cc_email <- map["cc_email"]
        value <- map["value"]
    }

}

struct Person_id : Mappable {
    var active_flag : Bool?
    var name : String?
    var email : [Email]?
    var phone : [Phone]?
    var value : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        active_flag <- map["active_flag"]
        name <- map["name"]
        email <- map["email"]
        phone <- map["phone"]
        value <- map["value"]
    }

}

struct Phone : Mappable {
    var value : String?
    var primary : Bool?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        value <- map["value"]
        primary <- map["primary"]
    }

}

struct Related_objects : Mappable {
    var organization : Organization?
    var person : Person?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        organization <- map["organization"]
        person <- map["person"]
    }
}

struct Stay_in_pipeline_stages : Mappable {
    var times_in_stages : Times_in_stages?
    var order_of_stages : [Int]?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        times_in_stages <- map["times_in_stages"]
        order_of_stages <- map["order_of_stages"]
    }

}

struct Times_in_stages : Mappable {
    var isd : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        isd <- map["1"]
    }

}

struct Organization : Mappable {
    var aan : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        aan <- map["1"]
    }

}

struct Person : Mappable {
    var per : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        per <- map["1"]
    }

}
