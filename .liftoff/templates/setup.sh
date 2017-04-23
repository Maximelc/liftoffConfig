#!/usr/bin/env bash

<% if enable_settings && dependency_manager_enabled?("cocoapods") %>
pod install
<% end %>