

class Config:
    def __init__(self, file):
        self.file = file

    
    def load_config(self):
        with open(self.file) as f:
            self.data = json.load(f)
    
    def save_config(self):
        with open(self.file, 'w') as f:
            self.data = json.dump(self.data, f)
        