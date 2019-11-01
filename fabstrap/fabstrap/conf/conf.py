# Fabstrap default config definitions
#============================================================================

from os import path
from fabstrap.misc.config import Config

class Conf(Config):
    name = "conf.json"
    path = path.dirname(path.realpath(__file__))
    def __init__(self):
        super().__init__(path = self.path, name = self.name)
        self.get_default_config()
        
        


class Deps(Config):
    name = "deps.json"
    path = path.dirname(path.realpath(__file__))
    def __init__(self):
        super().__init__(path = self.path, name = self.name)
        self.get_default_config()


        