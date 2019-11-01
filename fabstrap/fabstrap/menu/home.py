from fabstrap.menu import Menu

home_header = (
"-------------------------------------------------------------------------\n"
"|\n"
"| Welcome to the FAB Suite\n"
"| Copyright (c) 2017-2019 Supernova Development Team\n"
"| <supernova@ever3st.com>\n"
"|\n"
"-------------------------------------------------------------------------\n")

class Home_menu(Menu):

    # placeholder code
    def menu(self, stdscr):
        curses.curs_set(0)
        curses.mousemask(1)
        curses.init_pair(1, curses.COLOR_WHITE, curses.COLOR_RED)
        curses.init_pair(2, curses.COLOR_WHITE, curses.COLOR_GREEN)

        stdscr.addstr(0, 0, main_header)
        stdscr.addstr(1, 0, "Red")
        stdscr.addstr(2, 0, "Green")

        while 1:
            stdscr.refresh()
            key = stdscr.getch()

            if key == curses.KEY_MOUSE:
                _, x, y, _, _ = curses.getmouse()
                if y == 1 and x in range(3):
                    stdscr.attron(curses.color_pair(1))
                    stdscr.addstr(0, 0, "Hello!")
                    stdscr.attroff(curses.color_pair(1))
                elif y == 2 and x in range(5):
                    stdscr.attron(curses.color_pair(2))
                    stdscr.addstr(0, 0, "Hello!")
                    stdscr.attroff(curses.color_pair(2))
            elif key == 27:
                break