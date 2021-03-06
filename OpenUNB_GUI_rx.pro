#-------------------------------------------------
#
# Project created by QtCreator 2020-11-10T10:25:37
#
#-------------------------------------------------

QT       += core gui charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = OpenUNB_GUI
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp \
        SDRDevInfo.cpp \
        SoapyEnum.cpp \
        demodulator.cpp \
        decoder.cpp \
        singenerator.cpp \
        preamblepoint.cpp \
        GNU_UDP_client.cpp

HEADERS += \
        fdacoefs_125K_to_200.h \
        mainwindow.h \
        SDRDevInfo.h \
        SoapyEnum.h \
        demodulator.h \
        decoder.h \
        fdacoefs_125K_to_100.h \
        fdacoefs_1M_to_125K.h \
        fdacoefs_1M_to_100.h \
        singenerator.h \
        preamblepoint.h \
        GNU_UDP_client.hpp

FORMS += \
        mainwindow.ui

INCLUDEPATH +=  /usr/local/include \
                /usr/include/OpenUNB

LIBS += -L/usr/local/lib \
        -L/usr/lib \
        -lfftw3f \
        -lSoapySDR \
        -pthread \
        -lOpenUNBCodecLib \
        -lopenUNBCryptLib \
        -lvolk

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

CONFIG += optimize_full
