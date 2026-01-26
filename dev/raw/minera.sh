#!/bin/env bash

sed -e

#--[1] validating package
#--[1][1] validating package apache

#--[1](1) validating package apache conditional true

#--[1](1) validating package apache conditional false

#--[1][2] validating package mariadb
#--[1](2) validating package mariadb conditional true
#--[1](2) validating package mariadb conditional false
#--[2] database configuration
#--[3] apache configuration
#--[4] list wordpress
#--[4][1]
#--[5] 


















#--[1] install package
function minera_install_package() {

}
#--[1][1] sub bab
#--[1](2) conditional true
function minera_install_conditional_true() {

}
#--[1](2) conditional false
function minera_install_conditional_false() {

}

function minera_install_conditional() {
    minera_install_conditional_true
    minera_install_conditional_false
}

function minera_install() {
    minera_install_package
    minera_install_conditional
}

function minera() {
    minera_install
}