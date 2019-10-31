# Fabstrap Macros
#============================================================================

import sys
import os
from fabstrap.logger import Logger
from fabstrap.conf import Config


class Fabstrap:

    def __init__(self):
        self.pwd = os.path.dirname(__file__)
        self.config_path = os.path.join(self.pwd, 'conf', 'config.json')

  
    # information menus
    # --------------------------------------------

    def version():
        print ("header_version")
        sys.exit()


    def usage():
        print("header_usage")
        sys.exit()




    # load internal modules
    # --------------------------------------------

    def load_config(self):
        self.config = Config()

    def load_logger(self):
        self.logger = Logger(
            notify_log_file = self.notify_log_file,
            warn_log_file = self.warn_log_file,
            err_log_file = self.err_log_file,
            log_enable = True
        )


    # main
    # ------------------------------------------------------------
  
    def main(self):
        print("hello!")
        
        self.load_config()
        #self.load_logger()
        
        self.main_menu.menu()
        sys.exit()