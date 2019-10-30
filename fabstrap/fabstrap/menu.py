import os
#from typing import TypedDict
# class menu_opt(TypedDict):
# ^^ add this when 3.8 is released

class Menu_Object(object):
    menu_active = True
    can_next_page = False
    can_prev_page = False
    page = 0

    def __init__(self, header : str, items : list):
        self.header = header
        self.items = items

    def get_page_index(self):
        if self.page > 0:
            self.can_prev_page = True
        else:
            self.can_prev_page = False

        if len(self.items) > self.page + 1:
            self.can_next_page = True
        else:
            self.can_next_page = False  

    def print_menu(self):
        os.system('clear')
        print(self.header)

        self.get_page_index()

        for x,y in self.items[self.page]['opts'].items():
            print('{}    {}'.format(x,y))

        print("")
        if self.can_prev_page:
            print("P    Previous Page")   
        if self.can_next_page:
            print("N    Next Page") 
        print("0    Return \n")

    def prev_page(self):
        self.page -= 1
        self.print_menu()
        
    def next_page(self):
        self.page += 1
        self.print_menu()

    def bad_option(self):
        input('Bad menu option!')
        self.print_menu()

    def get_option(self):

        print(len(self.items))
        print(self.page)
        option = str(input('please choose a menu option: '))

        if option == '0':
            self.menu_active = False
        elif (option.lower() == 'p') and (self.can_prev_page):
                self.prev_page()   
        elif (option.lower() == 'n') and (self.can_next_page):
                self.next_page()  
        else:
            return self.items[self.page]['args'].get(option, self.bad_option)()

    def update_menu(self, header : str, items : dict):
        self.header = header
        self.items = items
        self.print_menu()

    def menu(self):
        while self.menu_active:
            self.update_menu(self.header, self.items)
            self.get_option()
