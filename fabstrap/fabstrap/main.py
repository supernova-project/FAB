# Fabstrap Main
#============================================================================

import sys
from os import path
import importlib.resources
from fabstrap.logger import Logger
from fabstrap.conf import Config


main_header = (
"-------------------------------------------------------------------------"
"|"
"| Welcome to the FAB Suite"
"| Copyright (c) 2017-2019 Supernova Development Team"
"| <supernova@ever3st.com>"
"|"
"-------------------------------------------------------------------------")


class Fabstrap:

    def __init__(self):
        self.package_path = path.dirname(path.realpath(__file__))
        self.config_file_path = path.join(self.package_path, "conf", "config.json")


        

    # load internal modules
    # --------------------------------------------

    def load_logger(self):
        self.logger = Logger(
            notify_log_file = self.config.data["logger"]["notify_log_file"],
            warn_log_file = self.config.data["logger"]["warn_log_file"],
            err_log_file = self.config.data["logger"]["err_log_file"],
            log_enable = True
        )

    def load_config(self):
        self.config = Config(self.config_file_path)
        self.config.load_config()
        self.config.save_config()




    # main
    # ------------------------------------------------------------
  
    def menu(self):
        pass

    def main(self):
        print("hello!")
        


        self.load_config()
        self.load_logger()
        

        print(self.config.data)

        self.menu()

        sys.exit()
