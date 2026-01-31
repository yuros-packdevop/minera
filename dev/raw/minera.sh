#!/bin/env bash

set -e

#--[1] master
#--[1][1] download wordpress file
#--[1][2] update wordpress file
#--[1][3] delete wordpress file
#--[2] deploy wordpress
#--[2][1] create wordpress site
#--[2][1][1] config apache
#--[2][1][2] create database
#--[2][1][3] create hostname
#--[2][2] edit wordpress site
#--[2][3] delete wordpress site
#--[2][4] start wordpress site
#--[2][5] stop wordpress site


#--[1][1] download wp
function wp_master_takers() {
   if [[ $options_master != "-t" ]]; then
    return
    fi
  echo "File wordpress has succesfully downloaded"
}


#--[1][2] update wp
function wp_master_update() {
   if [[ $options_master != "-u" ]]; then
    return
    fi
  echo "File wordpress is the latest"
}


#--[1][3] delete wp
function wp_master_delete() {
   if [[ $options_master != "-d" ]]; then
    return
    fi
  echo "File Wordpress has been deleted"
}


#--[1] function wp_master() {

  if [[ $options != "master" ]]; then
    return
  fi
  
    wp_master_takers
    wp_master_update
    wp_master_delete
}


#--[2][1] create wordpress site
function wp_deploy_create() {
   if [[ $options_deploy != "-c" ]]; then
    return
    fi
  echo "Wordpress has been deployed"
}


#-[2][1][1] config apache
function wp_deploy_create_apache() {
   if [[ $options_deploy_create != "-a" ]]; then
    return
    fi
  echo "Apache has been configured"
}


#--[2][1][2] create database
function wp_deploy_create_databs() {

   if [[ $options_deploy_create != "-d" ]]; then
    return
    fi
  echo "Database has been configured"
}


#--[2][1][3] create hostname
function wp_deploy_create_hostnm() {

   if [[ $options_deploy_create != "-h" ]]; then
    return
    fi
  echo "Hostname has been configured"
}


#--[2][2] edit wordpress site
function wp_deploy_edited() {

   if [[ $options_deploy != "-e" ]]; then
    return
    fi
  echo "Hostname has been configured"
}


#--[2][3] delete wordpress site
function wp_deploy_delete() {

   if [[ $options_deploy != "-d" ]]; then
    return
    fi
  echo "Wordpress has been deleted"
}


#--[2][4] start wordpress site
function wp_deploy_starts() {

   if [[ $options_deploy != "-st" ]]; then
    return
    fi
  echo "Wordpress has started"
}


#--[2][5] stop wordpress site
function wp_deploy_stoped() {

   if [[ $options_deploy != "-sp" ]]; then
    return
    fi
  echo "Wordpress has stopped"
}


#--[2] function wp_deploy() {

  if [[ $options != "deploy" ]]; then
    return
  fi

    wp_deploy_create
    wp_deploy_apache
    wp_deploy_databs
    wp_deploy_hostnm
}


#--[0] function wp_launch() {

  if [[ $options != "launch" ]]; then
    return
  fi
  
    wp_master
    wp_deploy
}



wp_launch
