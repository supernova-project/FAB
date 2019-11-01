# Fabstrap Main
#============================================================================

import sys
import curses
from os import path
import importlib.resources

from fabstrap.conf import Conf




class Fabstrap:



    # main
    # ------------------------------------------------------------

    def main(self):

        self.config = Conf()

        print(self.config.data)

        #self.config.load_config()
        #self.config.save_config()


        sys.exit()
