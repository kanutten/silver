#!/bin/bash

set -ouex pipefail

utility=(
  "flameshot"
  "nextcloud-client"
  "nextcloud-client-nautilus"
  "sg3_utils"
)

extensions=(
  "gnome-shell-extension-just-perfection.noarch",
 # "thinkpad-battery-threshold@marcosdalvarez.org",
 # "caffeine@patapon.info",
 # "solaar-extension@sidevesh",
 # "thinkpadthermal@moonlight.drive.vk.gmail.com",
 # "status-area-horizontal-spacing@mathematical.coffee.gmail.com",
 # "weatheroclock@CleoMenezesJr.github.io",
 # "quick-settings-tweaks@qwreey",
 # "clipboard-indicator@tudmotu.com",
 # "openbar@neuromorph",
 # "extension-list@tu.berry",
 # "pinned-apps-in-appgrid@brunosilva.io",
  #"wiggle@mechtifs",
 # "foresight@pesader.dev",
 # "tilingshell@ferrarodomenico.com",
 # "space-bar@luchrioh",
  #"appindicatorsupport@rgcjonas.gmail.com",
  #"apps-menu@gnome-shell-extensions.gcampax.github.com",
 # "blur-my-shell@aunetx",
 # "dash-to-dock@micxgx.gmail.com",
 # "gsconnect@andyholmes.github.io",
 # "launch-new-instance@gnome-shell-extensions.gcampax.github.com",
 # "logomenu@aryan_k",
 # "places-menu@gnome-shell-extensions.gcampax.github.com",
 # "search-light@icedman.github.com",
#  "tailscale@joaophi.github.com",
 # "user-theme@gnome-shell-extensions.gcampax.github.com",
  #"window-list@gnome-shell-extensions.gcampax.github.com"
)

packages=(
  ${utility[@]}
  ${extensions[@]}
)

rpm-ostree install ${packages[@]} 
