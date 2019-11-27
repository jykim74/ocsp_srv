TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.c \
        ocsp_proc.c \
        ocsp_srv.c

HEADERS += \
    ocsp_srv.h


INCLUDEPATH += "../../PKILib"

mac {
    INCLUDEPATH += "../../PKILib/lib/mac/debug/cmpossl/include"
    LIBS += -L"../../build-PKILib-Desktop_Qt_5_11_3_clang_64bit-Debug" -lPKILib
    LIBS += -L"../../PKILib/lib/mac/cmpossl/lib" -lcrypto -lssl
}

win32 {
    INCLUDEPATH += "../../PKILib/lib/win32/cmpossl-mingw32/include"
    LIBS += -L"../../build-PKILib-Desktop_Qt_5_12_2_MinGW_32_bit-Debug/debug" -lPKILib
    LIBS += -L"../../PKILib/lib/win32/cmpossl-mingw32/lib" -lcrypto -lssl
}
