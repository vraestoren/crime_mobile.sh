#!/bin/bash

API="https://cdn.crime-mobile.ru"
USER_AGENT="okhttp/3.14.9"

function _get() {
    curl -s -X GET "$API/$1" \
        -H "User-Agent: $USER_AGENT" \
        -H "accept: application/json" \
        -H "content-type: application/json"
}

function get_api_info() {
    _get "api.json"
}

function get_servers_info() {
    _get "servers_info.json"
}

function get_story_info() {
    _get "story.json"
}

function get_files_info() {
    _get "files.json"
}

function get_online_info() {
    _get "monitoring/online.json"
}

function get_black_list() {
    _get "black_list.json"
}
