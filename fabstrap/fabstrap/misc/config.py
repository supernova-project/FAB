# Fabstrap config loader
#============================================================================

import json
import os 

class Config:
    def __init__(self, name : str, path : str):
        self.name = name
        self.path = path 
        self.data = {}


    def load_json(self, path):
        try:
            with open(path, 'r') as config_file:
                return json.load(config_file)
        except FileNotFoundError:
            print("error: {} not found".format(path))


    def save_json(self, path):
        with open(path, 'w') as config_file:
            json.dump(self.data, config_file) 


    def set_config(self):
        path = os.path.join(self.path, self.name)
        self.save_json(path)
    

    def get_config(self):
        path = os.path.join(self.path, self.name)
        return self.load_json(path)


    def get_default_config(self):
        path = os.path.join(self.path, "default.{}".format(self.name))
        self.data = self.load_json(path)

