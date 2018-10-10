TARGET = tp_ar
TEMPLATE = lib

DEFINES += TP_AR_LIBRARY

#SOURCES += src/Globals.cpp
HEADERS += inc/tp_ar/Globals.h

SOURCES += src/AbstractSession.cpp
HEADERS += inc/tp_ar/AbstractSession.h

SOURCES += src/ar_sessions/DummySession.cpp
HEADERS += inc/tp_ar/ar_sessions/DummySession.h

HEADERS += inc/tp_ar/ar_sessions/PlatformSession.h

android{

}

else:iphoneos{

LIBS += -framework ARKit

SOURCES += src/ar_sessions/ArKitSession.cpp
HEADERS += inc/tp_ar/ar_sessions/ArKitSession.h

OBJECTIVE_SOURCES += src/arkit/ArKitShim.mm
HEADERS += inc/tp_ar/arkit/ArKitShim.h

}

else{

}
