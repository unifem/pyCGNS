# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'CGNS/NAV/T/Q7FormWindow.ui'
#
# Created: Fri Mar 30 13:38:31 2012
#      by: pyside-uic 0.2.13 running on PySide 1.0.9
#
# WARNING! All changes made in this file will be lost!

from PySide import QtCore, QtGui

class Ui_Q7FormWindow(object):
    def setupUi(self, Q7FormWindow):
        Q7FormWindow.setObjectName("Q7FormWindow")
        Q7FormWindow.resize(495, 595)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Fixed, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(Q7FormWindow.sizePolicy().hasHeightForWidth())
        Q7FormWindow.setSizePolicy(sizePolicy)
        Q7FormWindow.setMinimumSize(QtCore.QSize(495, 595))
        Q7FormWindow.setMaximumSize(QtCore.QSize(495, 595))
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(":/images/icons/cgSpy.gif"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        Q7FormWindow.setWindowIcon(icon)
        self.tabWidget = QtGui.QTabWidget(Q7FormWindow)
        self.tabWidget.setGeometry(QtCore.QRect(0, 70, 491, 481))
        self.tabWidget.setObjectName("tabWidget")
        self.tData = QtGui.QWidget()
        self.tData.setEnabled(True)
        self.tData.setObjectName("tData")
        self.label = QtGui.QLabel(self.tData)
        self.label.setGeometry(QtCore.QRect(9, 9, 27, 16))
        self.label.setObjectName("label")
        self.cDataType = QtGui.QComboBox(self.tData)
        self.cDataType.setGeometry(QtCore.QRect(49, 9, 51, 20))
        self.cDataType.setObjectName("cDataType")
        self.eDims = QtGui.QLineEdit(self.tData)
        self.eDims.setGeometry(QtCore.QRect(110, 10, 111, 20))
        self.eDims.setObjectName("eDims")
        self.line = QtGui.QFrame(self.tData)
        self.line.setGeometry(QtCore.QRect(220, 9, 16, 46))
        self.line.setFrameShape(QtGui.QFrame.VLine)
        self.line.setFrameShadow(QtGui.QFrame.Sunken)
        self.line.setObjectName("line")
        self.label_6 = QtGui.QLabel(self.tData)
        self.label_6.setGeometry(QtCore.QRect(9, 35, 34, 16))
        self.label_6.setObjectName("label_6")
        self.eItems = QtGui.QLineEdit(self.tData)
        self.eItems.setGeometry(QtCore.QRect(50, 32, 171, 20))
        self.eItems.setObjectName("eItems")
        self.verticalLayoutWidget = QtGui.QWidget(self.tData)
        self.verticalLayoutWidget.setGeometry(QtCore.QRect(10, 60, 471, 361))
        self.verticalLayoutWidget.setObjectName("verticalLayoutWidget")
        self.verticalLayout = QtGui.QVBoxLayout(self.verticalLayoutWidget)
        self.verticalLayout.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout.setObjectName("verticalLayout")
        self.tableView = Q7TableView(self.verticalLayoutWidget)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.tableView.sizePolicy().hasHeightForWidth())
        self.tableView.setSizePolicy(sizePolicy)
        self.tableView.setSelectionMode(QtGui.QAbstractItemView.ContiguousSelection)
        self.tableView.setObjectName("tableView")
        self.verticalLayout.addWidget(self.tableView)
        self.label_24 = QtGui.QLabel(self.tData)
        self.label_24.setGeometry(QtCore.QRect(234, 36, 47, 16))
        self.label_24.setObjectName("label_24")
        self.cMinimize = QtGui.QCheckBox(self.tData)
        self.cMinimize.setGeometry(QtCore.QRect(400, 5, 81, 22))
        self.cMinimize.setObjectName("cMinimize")
        self.cEnumType = QtGui.QComboBox(self.tData)
        self.cEnumType.setGeometry(QtCore.QRect(50, 426, 211, 22))
        self.cEnumType.setObjectName("cEnumType")
        self.label_4 = QtGui.QLabel(self.tData)
        self.label_4.setGeometry(QtCore.QRect(10, 430, 56, 14))
        self.label_4.setObjectName("label_4")
        self.cEnumValue = QtGui.QComboBox(self.tData)
        self.cEnumValue.setGeometry(QtCore.QRect(270, 426, 211, 22))
        self.cEnumValue.setObjectName("cEnumValue")
        self.checkBox_18 = QtGui.QCheckBox(self.tData)
        self.checkBox_18.setGeometry(QtCore.QRect(237, 5, 151, 22))
        self.checkBox_18.setObjectName("checkBox_18")
        self.cRowColSize = QtGui.QComboBox(self.tData)
        self.cRowColSize.setGeometry(QtCore.QRect(266, 32, 212, 22))
        self.cRowColSize.setObjectName("cRowColSize")
        self.tabWidget.addTab(self.tData, "")
        self.tFiles = QtGui.QWidget()
        self.tFiles.setObjectName("tFiles")
        self.groupBox_2 = QtGui.QGroupBox(self.tFiles)
        self.groupBox_2.setGeometry(QtCore.QRect(0, 280, 471, 171))
        self.groupBox_2.setObjectName("groupBox_2")
        self.label_9 = QtGui.QLabel(self.groupBox_2)
        self.label_9.setGeometry(QtCore.QRect(10, 20, 59, 27))
        self.label_9.setObjectName("label_9")
        self.lineEdit_8 = QtGui.QLineEdit(self.groupBox_2)
        self.lineEdit_8.setGeometry(QtCore.QRect(80, 20, 381, 27))
        self.lineEdit_8.setObjectName("lineEdit_8")
        self.label_10 = QtGui.QLabel(self.groupBox_2)
        self.label_10.setGeometry(QtCore.QRect(10, 90, 20, 17))
        self.label_10.setObjectName("label_10")
        self.lineEdit = QtGui.QLineEdit(self.groupBox_2)
        self.lineEdit.setGeometry(QtCore.QRect(80, 80, 161, 27))
        self.lineEdit.setObjectName("lineEdit")
        self.label_12 = QtGui.QLabel(self.groupBox_2)
        self.label_12.setGeometry(QtCore.QRect(10, 120, 51, 17))
        self.label_12.setObjectName("label_12")
        self.lineEdit_9 = QtGui.QLineEdit(self.groupBox_2)
        self.lineEdit_9.setGeometry(QtCore.QRect(80, 110, 111, 27))
        self.lineEdit_9.setObjectName("lineEdit_9")
        self.label_13 = QtGui.QLabel(self.groupBox_2)
        self.label_13.setGeometry(QtCore.QRect(10, 150, 51, 17))
        self.label_13.setObjectName("label_13")
        self.lineEdit_10 = QtGui.QLineEdit(self.groupBox_2)
        self.lineEdit_10.setGeometry(QtCore.QRect(80, 140, 111, 27))
        self.lineEdit_10.setObjectName("lineEdit_10")
        self.checkBox_8 = QtGui.QCheckBox(self.groupBox_2)
        self.checkBox_8.setGeometry(QtCore.QRect(200, 140, 151, 22))
        self.checkBox_8.setObjectName("checkBox_8")
        self.lineEdit_11 = QtGui.QLineEdit(self.groupBox_2)
        self.lineEdit_11.setGeometry(QtCore.QRect(80, 50, 381, 27))
        self.lineEdit_11.setObjectName("lineEdit_11")
        self.label_14 = QtGui.QLabel(self.groupBox_2)
        self.label_14.setGeometry(QtCore.QRect(10, 50, 59, 27))
        self.label_14.setObjectName("label_14")
        self.frame = QtGui.QFrame(self.groupBox_2)
        self.frame.setGeometry(QtCore.QRect(320, 120, 131, 41))
        self.frame.setFrameShape(QtGui.QFrame.StyledPanel)
        self.frame.setFrameShadow(QtGui.QFrame.Sunken)
        self.frame.setLineWidth(2)
        self.frame.setObjectName("frame")
        self.checkBox_11 = QtGui.QCheckBox(self.frame)
        self.checkBox_11.setGeometry(QtCore.QRect(10, 10, 151, 22))
        self.checkBox_11.setObjectName("checkBox_11")
        self.label_23 = QtGui.QLabel(self.groupBox_2)
        self.label_23.setGeometry(QtCore.QRect(270, 90, 31, 17))
        self.label_23.setObjectName("label_23")
        self.lineEdit_18 = QtGui.QLineEdit(self.groupBox_2)
        self.lineEdit_18.setGeometry(QtCore.QRect(300, 80, 161, 27))
        self.lineEdit_18.setObjectName("lineEdit_18")
        self.groupBox_3 = QtGui.QGroupBox(self.tFiles)
        self.groupBox_3.setGeometry(QtCore.QRect(0, 10, 471, 261))
        self.groupBox_3.setObjectName("groupBox_3")
        self.label_16 = QtGui.QLabel(self.groupBox_3)
        self.label_16.setGeometry(QtCore.QRect(10, 50, 20, 17))
        self.label_16.setObjectName("label_16")
        self.lineEdit_13 = QtGui.QLineEdit(self.groupBox_3)
        self.lineEdit_13.setGeometry(QtCore.QRect(80, 50, 161, 27))
        self.lineEdit_13.setObjectName("lineEdit_13")
        self.label_17 = QtGui.QLabel(self.groupBox_3)
        self.label_17.setGeometry(QtCore.QRect(10, 140, 31, 17))
        self.label_17.setObjectName("label_17")
        self.lineEdit_14 = QtGui.QLineEdit(self.groupBox_3)
        self.lineEdit_14.setGeometry(QtCore.QRect(80, 140, 171, 27))
        self.lineEdit_14.setObjectName("lineEdit_14")
        self.label_18 = QtGui.QLabel(self.groupBox_3)
        self.label_18.setGeometry(QtCore.QRect(10, 80, 51, 17))
        self.label_18.setObjectName("label_18")
        self.lineEdit_15 = QtGui.QLineEdit(self.groupBox_3)
        self.lineEdit_15.setGeometry(QtCore.QRect(80, 80, 111, 27))
        self.lineEdit_15.setObjectName("lineEdit_15")
        self.label_19 = QtGui.QLabel(self.groupBox_3)
        self.label_19.setGeometry(QtCore.QRect(10, 110, 51, 17))
        self.label_19.setObjectName("label_19")
        self.lineEdit_16 = QtGui.QLineEdit(self.groupBox_3)
        self.lineEdit_16.setGeometry(QtCore.QRect(80, 110, 111, 27))
        self.lineEdit_16.setObjectName("lineEdit_16")
        self.checkBox_10 = QtGui.QCheckBox(self.groupBox_3)
        self.checkBox_10.setGeometry(QtCore.QRect(210, 110, 151, 22))
        self.checkBox_10.setObjectName("checkBox_10")
        self.lineEdit_17 = QtGui.QLineEdit(self.groupBox_3)
        self.lineEdit_17.setGeometry(QtCore.QRect(80, 20, 381, 27))
        self.lineEdit_17.setObjectName("lineEdit_17")
        self.label_20 = QtGui.QLabel(self.groupBox_3)
        self.label_20.setGeometry(QtCore.QRect(10, 20, 59, 27))
        self.label_20.setObjectName("label_20")
        self.frame_2 = QtGui.QFrame(self.groupBox_3)
        self.frame_2.setGeometry(QtCore.QRect(320, 100, 131, 41))
        self.frame_2.setFrameShape(QtGui.QFrame.StyledPanel)
        self.frame_2.setFrameShadow(QtGui.QFrame.Sunken)
        self.frame_2.setLineWidth(2)
        self.frame_2.setObjectName("frame_2")
        self.checkBox_20 = QtGui.QCheckBox(self.frame_2)
        self.checkBox_20.setGeometry(QtCore.QRect(10, 10, 151, 22))
        self.checkBox_20.setObjectName("checkBox_20")
        self.groupBox_5 = QtGui.QGroupBox(self.groupBox_3)
        self.groupBox_5.setGeometry(QtCore.QRect(6, 170, 281, 82))
        self.groupBox_5.setObjectName("groupBox_5")
        self.lineEdit_19 = QtGui.QLineEdit(self.groupBox_5)
        self.lineEdit_19.setGeometry(QtCore.QRect(70, 20, 171, 27))
        self.lineEdit_19.setObjectName("lineEdit_19")
        self.label_25 = QtGui.QLabel(self.groupBox_5)
        self.label_25.setGeometry(QtCore.QRect(10, 20, 41, 17))
        self.label_25.setObjectName("label_25")
        self.label_29 = QtGui.QLabel(self.groupBox_5)
        self.label_29.setGeometry(QtCore.QRect(10, 60, 61, 17))
        self.label_29.setObjectName("label_29")
        self.lineEdit_23 = QtGui.QLineEdit(self.groupBox_5)
        self.lineEdit_23.setGeometry(QtCore.QRect(70, 50, 171, 27))
        self.lineEdit_23.setObjectName("lineEdit_23")
        self.groupBox_4 = QtGui.QGroupBox(self.groupBox_3)
        self.groupBox_4.setGeometry(QtCore.QRect(298, 170, 161, 71))
        self.groupBox_4.setObjectName("groupBox_4")
        self.radioButton_4 = QtGui.QRadioButton(self.groupBox_4)
        self.radioButton_4.setGeometry(QtCore.QRect(20, 20, 104, 22))
        self.radioButton_4.setObjectName("radioButton_4")
        self.radioButton_5 = QtGui.QRadioButton(self.groupBox_4)
        self.radioButton_5.setGeometry(QtCore.QRect(20, 40, 104, 22))
        self.radioButton_5.setObjectName("radioButton_5")
        self.radioButton_6 = QtGui.QRadioButton(self.groupBox_4)
        self.radioButton_6.setGeometry(QtCore.QRect(90, 20, 104, 22))
        self.radioButton_6.setObjectName("radioButton_6")
        self.radioButton_7 = QtGui.QRadioButton(self.groupBox_4)
        self.radioButton_7.setGeometry(QtCore.QRect(90, 40, 104, 22))
        self.radioButton_7.setObjectName("radioButton_7")
        self.tabWidget.addTab(self.tFiles, "")
        self.tChecks = QtGui.QWidget()
        self.tChecks.setObjectName("tChecks")
        self.checkBox = QtGui.QCheckBox(self.tChecks)
        self.checkBox.setGeometry(QtCore.QRect(10, 10, 161, 22))
        self.checkBox.setObjectName("checkBox")
        self.checkBox_2 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_2.setGeometry(QtCore.QRect(10, 30, 211, 22))
        self.checkBox_2.setObjectName("checkBox_2")
        self.checkBox_3 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_3.setGeometry(QtCore.QRect(10, 100, 211, 22))
        self.checkBox_3.setObjectName("checkBox_3")
        self.checkBox_4 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_4.setGeometry(QtCore.QRect(10, 130, 211, 22))
        self.checkBox_4.setObjectName("checkBox_4")
        self.checkBox_12 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_12.setGeometry(QtCore.QRect(230, 30, 211, 22))
        self.checkBox_12.setObjectName("checkBox_12")
        self.checkBox_13 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_13.setGeometry(QtCore.QRect(10, 50, 211, 22))
        self.checkBox_13.setObjectName("checkBox_13")
        self.checkBox_14 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_14.setGeometry(QtCore.QRect(230, 10, 211, 22))
        self.checkBox_14.setObjectName("checkBox_14")
        self.checkBox_15 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_15.setGeometry(QtCore.QRect(230, 50, 211, 22))
        self.checkBox_15.setObjectName("checkBox_15")
        self.checkBox_16 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_16.setGeometry(QtCore.QRect(10, 150, 211, 22))
        self.checkBox_16.setObjectName("checkBox_16")
        self.checkBox_17 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_17.setGeometry(QtCore.QRect(10, 70, 211, 22))
        self.checkBox_17.setObjectName("checkBox_17")
        self.line_3 = QtGui.QFrame(self.tChecks)
        self.line_3.setGeometry(QtCore.QRect(210, 10, 20, 301))
        self.line_3.setFrameShape(QtGui.QFrame.VLine)
        self.line_3.setFrameShadow(QtGui.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.checkBox_19 = QtGui.QCheckBox(self.tChecks)
        self.checkBox_19.setGeometry(QtCore.QRect(10, 180, 211, 22))
        self.checkBox_19.setObjectName("checkBox_19")
        self.tabWidget.addTab(self.tChecks, "")
        self.tPython = QtGui.QWidget()
        self.tPython.setObjectName("tPython")
        self.label_11 = QtGui.QLabel(self.tPython)
        self.label_11.setGeometry(QtCore.QRect(10, 10, 33, 27))
        self.label_11.setObjectName("label_11")
        self.comboBox_5 = QtGui.QComboBox(self.tPython)
        self.comboBox_5.setGeometry(QtCore.QRect(60, 10, 101, 27))
        self.comboBox_5.setObjectName("comboBox_5")
        self.lineEdit_20 = QtGui.QLineEdit(self.tPython)
        self.lineEdit_20.setGeometry(QtCore.QRect(60, 40, 171, 27))
        self.lineEdit_20.setObjectName("lineEdit_20")
        self.label_26 = QtGui.QLabel(self.tPython)
        self.label_26.setGeometry(QtCore.QRect(10, 40, 41, 27))
        self.label_26.setObjectName("label_26")
        self.lineEdit_21 = QtGui.QLineEdit(self.tPython)
        self.lineEdit_21.setGeometry(QtCore.QRect(60, 70, 171, 27))
        self.lineEdit_21.setObjectName("lineEdit_21")
        self.label_27 = QtGui.QLabel(self.tPython)
        self.label_27.setGeometry(QtCore.QRect(10, 70, 51, 27))
        self.label_27.setObjectName("label_27")
        self.checkBox_5 = QtGui.QCheckBox(self.tPython)
        self.checkBox_5.setGeometry(QtCore.QRect(250, 20, 161, 22))
        self.checkBox_5.setObjectName("checkBox_5")
        self.checkBox_6 = QtGui.QCheckBox(self.tPython)
        self.checkBox_6.setGeometry(QtCore.QRect(250, 40, 161, 22))
        self.checkBox_6.setObjectName("checkBox_6")
        self.checkBox_7 = QtGui.QCheckBox(self.tPython)
        self.checkBox_7.setGeometry(QtCore.QRect(380, 40, 161, 22))
        self.checkBox_7.setObjectName("checkBox_7")
        self.checkBox_9 = QtGui.QCheckBox(self.tPython)
        self.checkBox_9.setGeometry(QtCore.QRect(250, 60, 161, 22))
        self.checkBox_9.setObjectName("checkBox_9")
        self.checkBox_21 = QtGui.QCheckBox(self.tPython)
        self.checkBox_21.setGeometry(QtCore.QRect(380, 20, 161, 22))
        self.checkBox_21.setObjectName("checkBox_21")
        self.label_28 = QtGui.QLabel(self.tPython)
        self.label_28.setGeometry(QtCore.QRect(10, 100, 51, 27))
        self.label_28.setObjectName("label_28")
        self.lineEdit_22 = QtGui.QLineEdit(self.tPython)
        self.lineEdit_22.setGeometry(QtCore.QRect(60, 100, 171, 27))
        self.lineEdit_22.setObjectName("lineEdit_22")
        self.plainTextEdit = QtGui.QPlainTextEdit(self.tPython)
        self.plainTextEdit.setGeometry(QtCore.QRect(10, 130, 461, 321))
        self.plainTextEdit.setObjectName("plainTextEdit")
        self.pushButton = QtGui.QPushButton(self.tPython)
        self.pushButton.setGeometry(QtCore.QRect(310, 100, 161, 27))
        self.pushButton.setObjectName("pushButton")
        self.tabWidget.addTab(self.tPython, "")
        self.label_2 = QtGui.QLabel(Q7FormWindow)
        self.label_2.setGeometry(QtCore.QRect(10, 10, 38, 27))
        self.label_2.setObjectName("label_2")
        self.eName = QtGui.QLineEdit(Q7FormWindow)
        self.eName.setGeometry(QtCore.QRect(50, 10, 191, 27))
        self.eName.setObjectName("eName")
        self.label_3 = QtGui.QLabel(Q7FormWindow)
        self.label_3.setGeometry(QtCore.QRect(250, 10, 41, 27))
        self.label_3.setObjectName("label_3")
        self.eType = QtGui.QComboBox(Q7FormWindow)
        self.eType.setGeometry(QtCore.QRect(290, 10, 201, 27))
        self.eType.setObjectName("eType")
        self.label_8 = QtGui.QLabel(Q7FormWindow)
        self.label_8.setGeometry(QtCore.QRect(10, 40, 26, 17))
        self.label_8.setObjectName("label_8")
        self.ePath = QtGui.QLineEdit(Q7FormWindow)
        self.ePath.setGeometry(QtCore.QRect(50, 40, 441, 27))
        self.ePath.setObjectName("ePath")
        self.bClose = QtGui.QPushButton(Q7FormWindow)
        self.bClose.setGeometry(QtCore.QRect(400, 560, 88, 27))
        self.bClose.setObjectName("bClose")
        self.bApply = QtGui.QPushButton(Q7FormWindow)
        self.bApply.setGeometry(QtCore.QRect(310, 560, 88, 27))
        self.bApply.setObjectName("bApply")
        self.bBackControl = QtGui.QPushButton(Q7FormWindow)
        self.bBackControl.setGeometry(QtCore.QRect(0, 570, 25, 25))
        self.bBackControl.setMinimumSize(QtCore.QSize(25, 25))
        self.bBackControl.setMaximumSize(QtCore.QSize(25, 25))
        self.bBackControl.setText("")
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(":/images/icons/top.gif"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.bBackControl.setIcon(icon1)
        self.bBackControl.setObjectName("bBackControl")

        self.retranslateUi(Q7FormWindow)
        self.tabWidget.setCurrentIndex(0)
        QtCore.QMetaObject.connectSlotsByName(Q7FormWindow)

    def retranslateUi(self, Q7FormWindow):
        Q7FormWindow.setWindowTitle(QtGui.QApplication.translate("Q7FormWindow", "Form", None, QtGui.QApplication.UnicodeUTF8))
        self.label.setText(QtGui.QApplication.translate("Q7FormWindow", "Data", None, QtGui.QApplication.UnicodeUTF8))
        self.label_6.setText(QtGui.QApplication.translate("Q7FormWindow", "Items", None, QtGui.QApplication.UnicodeUTF8))
        self.label_24.setText(QtGui.QApplication.translate("Q7FormWindow", "Size", None, QtGui.QApplication.UnicodeUTF8))
        self.cMinimize.setText(QtGui.QApplication.translate("Q7FormWindow", "Minimize", None, QtGui.QApplication.UnicodeUTF8))
        self.label_4.setText(QtGui.QApplication.translate("Q7FormWindow", "Enum", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_18.setText(QtGui.QApplication.translate("Q7FormWindow", "Node status OK", None, QtGui.QApplication.UnicodeUTF8))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tData), QtGui.QApplication.translate("Q7FormWindow", "Data", None, QtGui.QApplication.UnicodeUTF8))
        self.groupBox_2.setTitle(QtGui.QApplication.translate("Q7FormWindow", "Destination", None, QtGui.QApplication.UnicodeUTF8))
        self.label_9.setText(QtGui.QApplication.translate("Q7FormWindow", "Path", None, QtGui.QApplication.UnicodeUTF8))
        self.label_10.setText(QtGui.QApplication.translate("Q7FormWindow", "File", None, QtGui.QApplication.UnicodeUTF8))
        self.label_12.setText(QtGui.QApplication.translate("Q7FormWindow", "Date", None, QtGui.QApplication.UnicodeUTF8))
        self.label_13.setText(QtGui.QApplication.translate("Q7FormWindow", "Owner", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_8.setText(QtGui.QApplication.translate("Q7FormWindow", "Read Only", None, QtGui.QApplication.UnicodeUTF8))
        self.label_14.setText(QtGui.QApplication.translate("Q7FormWindow", "Directory", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_11.setText(QtGui.QApplication.translate("Q7FormWindow", "Link not found", None, QtGui.QApplication.UnicodeUTF8))
        self.label_23.setText(QtGui.QApplication.translate("Q7FormWindow", "Size", None, QtGui.QApplication.UnicodeUTF8))
        self.groupBox_3.setTitle(QtGui.QApplication.translate("Q7FormWindow", "Source", None, QtGui.QApplication.UnicodeUTF8))
        self.label_16.setText(QtGui.QApplication.translate("Q7FormWindow", "File", None, QtGui.QApplication.UnicodeUTF8))
        self.label_17.setText(QtGui.QApplication.translate("Q7FormWindow", "Size", None, QtGui.QApplication.UnicodeUTF8))
        self.label_18.setText(QtGui.QApplication.translate("Q7FormWindow", "Date", None, QtGui.QApplication.UnicodeUTF8))
        self.label_19.setText(QtGui.QApplication.translate("Q7FormWindow", "Owner", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_10.setText(QtGui.QApplication.translate("Q7FormWindow", "Read Only", None, QtGui.QApplication.UnicodeUTF8))
        self.label_20.setText(QtGui.QApplication.translate("Q7FormWindow", "Directory", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_20.setText(QtGui.QApplication.translate("Q7FormWindow", "CGNS/Python", None, QtGui.QApplication.UnicodeUTF8))
        self.groupBox_5.setTitle(QtGui.QApplication.translate("Q7FormWindow", "Merge size", None, QtGui.QApplication.UnicodeUTF8))
        self.label_25.setText(QtGui.QApplication.translate("Q7FormWindow", "Node", None, QtGui.QApplication.UnicodeUTF8))
        self.label_29.setText(QtGui.QApplication.translate("Q7FormWindow", "Children", None, QtGui.QApplication.UnicodeUTF8))
        self.groupBox_4.setTitle(QtGui.QApplication.translate("Q7FormWindow", "Size", None, QtGui.QApplication.UnicodeUTF8))
        self.radioButton_4.setText(QtGui.QApplication.translate("Q7FormWindow", "Unit", None, QtGui.QApplication.UnicodeUTF8))
        self.radioButton_5.setText(QtGui.QApplication.translate("Q7FormWindow", "10e3", None, QtGui.QApplication.UnicodeUTF8))
        self.radioButton_6.setText(QtGui.QApplication.translate("Q7FormWindow", "10e6", None, QtGui.QApplication.UnicodeUTF8))
        self.radioButton_7.setText(QtGui.QApplication.translate("Q7FormWindow", "10e9", None, QtGui.QApplication.UnicodeUTF8))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tFiles), QtGui.QApplication.translate("Q7FormWindow", "Files", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox.setText(QtGui.QApplication.translate("Q7FormWindow", "Reserved Name", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_2.setText(QtGui.QApplication.translate("Q7FormWindow", "Compliant Name", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_3.setText(QtGui.QApplication.translate("Q7FormWindow", "Compliant Label", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_4.setText(QtGui.QApplication.translate("Q7FormWindow", "Compliant Data Type", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_12.setText(QtGui.QApplication.translate("Q7FormWindow", "Has absolute link path", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_13.setText(QtGui.QApplication.translate("Q7FormWindow", "Name size > 32", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_14.setText(QtGui.QApplication.translate("Q7FormWindow", "Has broken link", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_15.setText(QtGui.QApplication.translate("Q7FormWindow", "Has relative non-local path", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_16.setText(QtGui.QApplication.translate("Q7FormWindow", "Unconsistant dimensions", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_17.setText(QtGui.QApplication.translate("Q7FormWindow", "Name with special chars", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_19.setText(QtGui.QApplication.translate("Q7FormWindow", "Filename is not basename", None, QtGui.QApplication.UnicodeUTF8))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tChecks), QtGui.QApplication.translate("Q7FormWindow", "Checks", None, QtGui.QApplication.UnicodeUTF8))
        self.label_11.setText(QtGui.QApplication.translate("Q7FormWindow", "Type", None, QtGui.QApplication.UnicodeUTF8))
        self.label_26.setText(QtGui.QApplication.translate("Q7FormWindow", "Shape", None, QtGui.QApplication.UnicodeUTF8))
        self.label_27.setText(QtGui.QApplication.translate("Q7FormWindow", "Strides", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_5.setText(QtGui.QApplication.translate("Q7FormWindow", "Data owner", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_6.setText(QtGui.QApplication.translate("Q7FormWindow", "Fortran order", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_7.setText(QtGui.QApplication.translate("Q7FormWindow", "C order", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_9.setText(QtGui.QApplication.translate("Q7FormWindow", "Contiguous", None, QtGui.QApplication.UnicodeUTF8))
        self.checkBox_21.setText(QtGui.QApplication.translate("Q7FormWindow", "View", None, QtGui.QApplication.UnicodeUTF8))
        self.label_28.setText(QtGui.QApplication.translate("Q7FormWindow", "Base", None, QtGui.QApplication.UnicodeUTF8))
        self.pushButton.setText(QtGui.QApplication.translate("Q7FormWindow", "Run on NODE variable", None, QtGui.QApplication.UnicodeUTF8))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.tPython), QtGui.QApplication.translate("Q7FormWindow", "Python", None, QtGui.QApplication.UnicodeUTF8))
        self.label_2.setText(QtGui.QApplication.translate("Q7FormWindow", "Name", None, QtGui.QApplication.UnicodeUTF8))
        self.label_3.setText(QtGui.QApplication.translate("Q7FormWindow", "Label", None, QtGui.QApplication.UnicodeUTF8))
        self.label_8.setText(QtGui.QApplication.translate("Q7FormWindow", "Path", None, QtGui.QApplication.UnicodeUTF8))
        self.bClose.setText(QtGui.QApplication.translate("Q7FormWindow", "Close", None, QtGui.QApplication.UnicodeUTF8))
        self.bApply.setText(QtGui.QApplication.translate("Q7FormWindow", "Apply", None, QtGui.QApplication.UnicodeUTF8))

from CGNS.NAV.mtable import Q7TableView
import Res_rc
