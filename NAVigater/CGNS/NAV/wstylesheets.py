#  -------------------------------------------------------------------------
#  pyCGNS.NAV - Python package for CFD General Notation System - NAVigater
#  See license.txt file in the root directory of this Python module source  
#  -------------------------------------------------------------------------
#  $Release$
#  -------------------------------------------------------------------------

colordict={'high':'#7ebaff', 'low':'#78b5e9'}

Q7CONTROLVIEWSTYLESHEET="""
 QTableView {
 show-decoration-selected: 1;
 }

 QTableView::item:selected {
 background:qlineargradient(x1:0,y1:0,x2:0,y2:1,stop:0 %(high)s,stop:1 %(low)s);
 color:black;
 border: 1px solid #bfcde4;
 }

 QTableView::item
 {
 border: 0px;
 padding: 0px;
 }
"""%colordict

Q7TABLEVIEWSTYLESHEET="""
 QTableView {
 show-decoration-selected: 1;
 }

 QTableView::item:selected {
 background:qlineargradient(x1:0,y1:0,x2:0,y2:1,stop:0 %(high)s,stop:1 %(low)s);
 color:black;
 border: 1px solid #bfcde4;
 }

 QTableView::item
 {
 border: 0px;
 padding: 0px;
 }
"""%colordict

Q7TREEVIEWSTYLESHEET="""
 QTreeView {
 show-decoration-selected: 1;
 }

 QTreeView::branch {
 background: palette(base);
 }

 QTreeView::item {
 border: 1px solid #d9d9d9;
 border-top-color: transparent;
 border-bottom-color: transparent;
 text-align:right;
 color:black;
 }

 QTreeView::item:hover {
 background:qlineargradient(x1:0,y1:0,x2:0,y2:1,stop:0 %(high)s,stop:1 %(low)s);
 border: 1px solid #bfcde4;
 }

 QTreeView::item:selected {
 border: 1px solid #567dbc;
 }

 QTreeView::item:selected:active{
 background:qlineargradient(x1:0,y1:0,x2:0,y2:1,stop:0 %(high)s,stop:1 %(low)s);
 }

 QTreeView::item:selected:!active {
 background:qlineargradient(x1:0,y1:0,x2:0,y2:1,stop:0 %(high)s,stop:1 %(low)s);
 }

 QTreeView::branch:has-siblings:!adjoins-item {
 border-image: url(:/images/icons/vline.gif) 0;
 }

 QTreeView::branch:has-siblings:adjoins-item {
 border-image: url(:/images/icons/branch-more.gif) 0;
 }

 QTreeView::branch:!has-children:!has-siblings:adjoins-item {
 border-image: url(:/images/icons/branch-end.gif) 0;
 }

 QTreeView::branch:closed:has-children:has-siblings {
 border-image: url(:/images/icons/branch-more-p.gif) 0;
 }

 QTreeView::branch:has-children:!has-siblings:closed {
 border-image: url(:/images/icons/branch-end-p.gif) 0;
 }

 QTreeView::branch:open:has-children:has-siblings {
 background: magenta;
 }

 QTreeView::branch:open:has-children:!has-siblings {
 border-image: url(:/images/icons/branch-end.gif) 0;
 }
"""%colordict

# -----------------------------------------------------------------

