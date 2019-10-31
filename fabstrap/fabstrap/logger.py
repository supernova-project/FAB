# Fabstrap logger
#============================================================================

import sys
from datetime import datetime

class Logger:
    def __init__(self, notify_log_file: str, warn_log_file: str, err_log_file: str, log_enable: bool):
        self.log_enable = log_enable

        #log files
        self.notify_log_file = notify_log_file
        self.warn_log_file = warn_log_file
        self.err_log_file = err_log_file

    def log_write(self, log: str, type):
        while True:
            if type == 1:
                log = '[INFO]: {}'.format(log)
                break
            if type == 2:
                log = '[WARNING]: {}'.format(log)
                break
            if type == 3:
                log = '[ERROR]: {}'.format(log)
                break
            else:
                break
        
        print(log)
        if self.log_enable:
            log = '({}) {} \n'.format(datetime.now(), log)
            f = open(self.notify_log_file, 'a')
            f.write(log)
        
    def log_notify(self, notif):    
        self.log_write(notif, 1)    
    
    def log_warn(self, notif):    
        self.log_write(notif, 2)    
    
    def log_err(self, notif):    
        self.log_write(notif, 3)    
    
    def enable_logging(self, err):
        self.log_enable = True
        self.log_warn('logging enabled')
            
    def disable_logging(self, err):
        self.log_warn('logging disabled')
        self.log_enable = False
