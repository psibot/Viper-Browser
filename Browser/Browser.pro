#-------------------------------------------------
#
# Project created by QtCreator 2017-08-06T15:51:56
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets webkitwidgets

TARGET = Browser
TEMPLATE = app

CONFIG += c++14

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

RESOURCES  = application.qrc

INCLUDEPATH += \
    $$PWD/Bookmarks \
    $$PWD/Cookies \
    $$PWD/Downloads \
    $$PWD/History \
    $$PWD/Network \
    $$PWD/Preferences \
    $$PWD/UserAgents \
    $$PWD/Web \
    $$PWD/Widgets

SOURCES += \
    main.cpp \
    History/HistoryTableModel.cpp \
    Cookies/CookieJar.cpp \
    Cookies/CookieModifyDialog.cpp \
    Cookies/CookieTableModel.cpp \
    Cookies/CookieTableView.cpp \
    Cookies/CookieWidget.cpp \
    Cookies/DetailedCookieTableModel.cpp \
    History/ClearHistoryDialog.cpp \
    History/HistoryManager.cpp \
    History/HistoryWidget.cpp \
    BrowserApplication.cpp \
    DatabaseWorker.cpp \
    FaviconStorage.cpp \
    MainWindow.cpp \
    Bookmarks/BookmarkFolderModel.cpp \
    Bookmarks/BookmarkManager.cpp \
    Bookmarks/BookmarkTableModel.cpp \
    Bookmarks/BookmarkWidget.cpp \
    Downloads/DownloadItem.cpp \
    Downloads/DownloadListModel.cpp \
    Downloads/DownloadManager.cpp \
    Web/FindTextWidget.cpp \
    Web/WebActionProxy.cpp \
    Web/WebDialog.cpp \
    Web/WebPage.cpp \
    Web/WebView.cpp \
    URLSuggestionModel.cpp \
    Network/NetworkAccessManager.cpp \
    Network/AdBlocker.cpp \
    UserAgents/UserAgentManager.cpp \
    UserAgents/AddUserAgentDialog.cpp \
    Network/SecurityManager.cpp \
    Network/SecurityInfoDialog.cpp \
    Network/CertificateViewer.cpp \
    Preferences/Preferences.cpp \
    Preferences/GeneralTab.cpp \
    Settings.cpp \
    Bookmarks/BookmarkExporter.cpp \
    Bookmarks/BookmarkImporter.cpp \
    SearchEngineManager.cpp \
    Preferences/SearchTab.cpp \
    Preferences/AddSearchEngineDialog.cpp \
    Widgets/BookmarkBar.cpp \
    Widgets/BrowserTabWidget.cpp \
    Widgets/FileChooserLineEdit.cpp \
    Widgets/SearchEngineLineEdit.cpp \
    Widgets/URLLineEdit.cpp \
    Network/CertificateGeneralTab.cpp \
    Preferences/ContentTab.cpp \
    Web/HTMLHighlighter.cpp \
    Widgets/AddBookmarkDialog.cpp \
    Widgets/BrowserTabBar.cpp

HEADERS += \
    History/HistoryTableModel.h \
    Cookies/CookieJar.h \
    Cookies/CookieModifyDialog.h \
    Cookies/CookieTableModel.h \
    Cookies/CookieTableView.h \
    Cookies/CookieWidget.h \
    Cookies/DetailedCookieTableModel.h \
    History/ClearHistoryDialog.h \
    History/ClearHistoryOptions.h \
    History/HistoryManager.h \
    History/HistoryWidget.h \
    BrowserApplication.h \
    DatabaseWorker.h \
    FaviconStorage.h \
    MainWindow.h \
    Bookmarks/BookmarkFolderModel.h \
    Bookmarks/BookmarkManager.h \
    Bookmarks/BookmarkTableModel.h \
    Bookmarks/BookmarkWidget.h \
    Downloads/DownloadItem.h \
    Downloads/DownloadListModel.h \
    Downloads/DownloadManager.h \
    Web/FindTextWidget.h \
    Web/WebActionProxy.h \
    Web/WebDialog.h \
    Web/WebPage.h \
    Web/WebView.h \
    URLSuggestionModel.h \
    Network/NetworkAccessManager.h \
    Network/AdBlocker.h \
    UserAgents/UserAgentManager.h \
    UserAgents/AddUserAgentDialog.h \
    Network/SecurityManager.h \
    Network/SecurityInfoDialog.h \
    Network/CertificateViewer.h \
    Preferences/Preferences.h \
    Preferences/GeneralTab.h \
    Settings.h \
    Bookmarks/BookmarkExporter.h \
    Bookmarks/BookmarkImporter.h \
    SearchEngineManager.h \
    Preferences/SearchTab.h \
    Preferences/AddSearchEngineDialog.h \
    Widgets/BookmarkBar.h \
    Widgets/BrowserTabWidget.h \
    Widgets/FileChooserLineEdit.h \
    Widgets/SearchEngineLineEdit.h \
    Widgets/URLLineEdit.h \
    Network/CertificateGeneralTab.h \
    Preferences/ContentTab.h \
    Web/HTMLHighlighter.h \
    Widgets/AddBookmarkDialog.h \
    Widgets/BrowserTabBar.h

FORMS += \
        mainwindow.ui \
    Cookies/cookiewidget.ui \
    Cookies/cookiemodifydialog.ui \
    History/clearhistorydialog.ui \
    History/historywidget.ui \
    Bookmarks/bookmarkwidget.ui \
    Downloads/downloadmanager.ui \
    Downloads/downloaditem.ui \
    Web/findtextwidget.ui \
    UserAgents/AddUserAgentDialog.ui \
    Network/SecurityInfoDialog.ui \
    Network/CertificateViewer.ui \
    Preferences/Preferences.ui \
    Preferences/GeneralTab.ui \
    Preferences/SearchTab.ui \
    Preferences/AddSearchEngineDialog.ui \
    Network/CertificateGeneralTab.ui \
    Preferences/ContentTab.ui \
    Widgets/AddBookmarkDialog.ui
