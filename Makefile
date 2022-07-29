# Temporary makefile for testing configs
BASE_DIR = /etc/regolith/sway/
PARTIALS_DIR = /usr/share/regolith/sway/config.d/

INSTALL_DATA = ln -s

install:
	-sudo ${INSTALL_DATA} ${PWD}/partials/15_base_launchers  ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/40_next-workspace  ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/70_bar ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/30_navigation ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/40_workspace-config ${PARTIALS_DIR}  
	-sudo ${INSTALL_DATA} ${PWD}/partials/35_i3-gaps ${PARTIALS_DIR}     
	-sudo ${INSTALL_DATA} ${PWD}/partials/50_resize-mode ${PARTIALS_DIR}       
	-sudo ${INSTALL_DATA} ${PWD}/partials/80_output ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/86_unclutter ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/40_default-style ${PARTIALS_DIR} 
	-sudo ${INSTALL_DATA} ${PWD}/partials/55_session_keybindings ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/88_network-manager ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/40_i3-swap-focus ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/60_config_keybindings ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/partials/90_user-programs ${PARTIALS_DIR}
	-sudo ${INSTALL_DATA} ${PWD}/config ${BASE_DIR}
