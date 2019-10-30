# Fabstrap Macros
#============================================================================

import sys
from fabstrap.logger import Logger
from fabstrap.menu import Menu_Object

def test():
    print("aaaaaaaaaaa")

main_header = """
-------------------------------------------------------------------------
|
| Welcome to the FAB Suite
| Copyright (c) 2017-2019 Supernova Development Team
| <supernova@ever3st.com>
|
-------------------------------------------------------------------------
"""

main_items = [
    {
        'opts': {
            
            '1': 'a',
            '2': 'b'
        },
        'args': {
            '1': sys.exit,
            '2': test
        }
    },
    {
        'opts': {
            
            '1': 'c',
            '2': 'd'
        },
        'args': {
            '1': sys.exit,
            '2': test
        }
    }

]

class Fabstrap:

    def __init__(self):
        self.main_menu = Menu_Object(header=main_header, items=main_items)
  


  
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
        
        #self.load_logger()
        
        self.main_menu.menu()
        sys.exit()