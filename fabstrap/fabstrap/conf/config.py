# Fabstrap config
#============================================================================
import json

class Config(dict):

    def __init__(self, file):
        self.file_path = file
        

    def load_config(self):
        with open(self.file_path, 'r') as config_file:
            self.data = json.load(config_file)   
    
    def save_config(self):
        with open(self.file_path, 'w') as config_file:
            json.dump(self.data, config_file) 

    def set_file_path(self, path):
        self.file_path = path
