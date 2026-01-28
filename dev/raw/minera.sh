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
#--[4] wordpress
#--[4][1] wordpress list version url
#--[4](2) download wordpress via url conditional true
#--[4](2) download wordpress via url conditional false
#--[5] php adjusting with the wordpress selection
#--[5](1) validating php version conditional true
#--[5](1) validating php version conditional false
#--[6] congrats screen



















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