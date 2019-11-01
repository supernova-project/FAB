# Fabstrap default config definitions
#============================================================================

from os import path
from fabstrap.misc.config import Config

class Conf(Config):
    name = "conf.json"
    home_path = path.join(path.expanduser("~"), ".fabstrap")
    default_path = path.dirname(path.realpath(__file__))
    
    def __init__(self):
        if path.exists(path.join(self.home_path, self.name)):
            super().__init__(path = self.home_path, name = self.name)
            self.data = self.get_config()
        else:
            super().__init__(path = self.default_path, name = self.name)
            self.data = self.get_default_config()
        
        


class Deps(Config):
    name = "deps.json"
    path = path.dirname(path.realpath(__file__))
    def __init__(self):
        super().__init__(path = self.path, name = self.name)
        self.get_default_config()


        