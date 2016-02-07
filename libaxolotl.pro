TEMPLATE = lib

TARGET = axolotl
isEmpty(CURRENT_RPATH_DIR) {
    target.path = /usr/lib
} else {
    message("$$TARGET QMAKE_RPATHDIR and path is set to $$CURRENT_RPATH_DIR")
    target.path = $$CURRENT_RPATH_DIR
    QMAKE_RPATHDIR += $$INSTALL_ROOT$$CURRENT_RPATH_DIR
}
VERSION = 1.0.0
INSTALLS += target

CONFIG += dll link_pkgconfig
PKGCONFIG += openssl libssl libcrypto
#CONFIG += staticlib
DEFINES += LIBAXOLOTL_LIBRARY

LIBS += -L../libcurve25519 -lcurve25519
LIBS += /usr/lib/libprotobuf.a
QMAKE_CFLAGS += -fPIC -DPIC -Isrc
QMAKE_CXXFLAGS += -fPIC -DPIC -Isrc

HEADERS += \
    src/duplicatemessageexception.h \
    src/invalidkeyexception.h \
    src/invalidkeyidexception.h \
    src/invalidmessageexception.h \
    src/invalidversionexception.h \
    src/nosessionexception.h \
    src/stalekeyexchangeexception.h \
    src/untrustedidentityexception.h \
    src/ecc/curve.h \
    src/ecc/eckeypair.h \
    src/util/byteutil.h \
    src/ecc/djbec.h \
    src/kdf/derivedmessagesecrets.h \
    src/kdf/derivedrootsecrets.h \
    src/kdf/hkdf.h \
    src/util/keyhelper.h \
    src/identitykey.h \
    src/identitykeypair.h \
    src/state/prekeybundle.h \
    src/state/prekeyrecord.h \
    src/state/LocalStorageProtocol.pb.h \
    src/state/sessionrecord.h \
    src/state/sessionstate.h \
    src/ratchet/messagekeys.h \
    src/ratchet/aliceaxolotlparameters.h \
    src/ratchet/bobaxolotlparameters.h \
    src/ratchet/chainkey.h \
    src/ratchet/ratchetingsession.h \
    src/ratchet/symmetricaxolotlparameters.h \
    src/ratchet/rootkey.h \
    src/state/sessionstore.h \
    src/state/signedprekeyrecord.h \
    src/state/signedprekeystore.h \
    src/groups/ratchet/senderchainkey.h \
    src/groups/ratchet/sendermessagekey.h \
    src/groups/state/senderkeyrecord.h \
    src/groups/state/senderkeystate.h \
    src/groups/state/senderkeystore.h \
    src/protocol/WhisperTextProtocol.pb.h \
    src/protocol/ciphertextmessage.h \
    src/protocol/keyexchangemessage.h \
    src/legacymessageexception.h \
    src/whisperexception.h \
    src/protocol/prekeywhispermessage.h \
    src/protocol/whispermessage.h \
    src/protocol/senderkeymessage.h \
    src/protocol/senderkeydistributionmessage.h \
    src/sessioncipher.h \
    src/sessionbuilder.h \
    src/state/prekeystore.h \
    src/state/axolotlstore.h \
    src/state/identitykeystore.h \
    src/util/medium.h \
    src/axolotl_global.h \
    src/qcryptographichash/qcryptographichash.h \
    src/qcryptographichash/hashes/sha3/KeccakF-1600-opt64-settings.h \
    src/qcryptographichash/hashes/sha3/brg_endian.h \
    src/qcryptographichash/hashes/sha3/KeccakF-1600-int-set.h \
    src/qcryptographichash/hashes/sha3/KeccakF-1600-opt32-settings.h \
    src/qcryptographichash/hashes/sha3/KeccakNISTInterface.h \
    src/qcryptographichash/hashes/sha3/KeccakSponge.h \
    src/qcryptographichash/hashes/sha3/KeccakF-1600-interface.h \
    src/qcryptographichash/hashes/md5/md5.h \
    src/qcryptographichash/hashes/rfc6234/sha-private.h \
    src/qcryptographichash/hashes/rfc6234/sha.h \
    src/qcryptographichash/hashes/md4/md4.h \
    src/qmessageauthenticationcode/qmessageauthenticationcode.cpp


SOURCES += \
    src/ecc/curve.cpp \
    src/ecc/eckeypair.cpp \
    src/util/byteutil.cpp \
    src/ecc/djbec.cpp \
    src/kdf/derivedmessagesecrets.cpp \
    src/kdf/derivedrootsecrets.cpp \
    src/kdf/hkdf.cpp \
    src/util/keyhelper.cpp \
    src/identitykey.cpp \
    src/identitykeypair.cpp \
    src/state/prekeybundle.cpp \
    src/state/prekeyrecord.cpp \
    src/state/LocalStorageProtocol.pb.cc \
    src/state/sessionrecord.cpp \
    src/state/sessionstate.cpp \
    src/ratchet/messagekeys.cpp \
    src/ratchet/aliceaxolotlparameters.cpp \
    src/ratchet/bobaxolotlparameters.cpp \
    src/ratchet/chainkey.cpp \
    src/ratchet/ratchetingsession.cpp \
    src/ratchet/symmetricaxolotlparameters.cpp \
    src/ratchet/rootkey.cpp \
    src/state/signedprekeyrecord.cpp \
    src/groups/ratchet/senderchainkey.cpp \
    src/groups/ratchet/sendermessagekey.cpp \
    src/groups/state/senderkeyrecord.cpp \
    src/groups/state/senderkeystate.cpp \
    src/protocol/WhisperTextProtocol.pb.cc \
    src/protocol/keyexchangemessage.cpp \
    src/protocol/prekeywhispermessage.cpp \
    src/protocol/whispermessage.cpp \
    src/protocol/senderkeymessage.cpp \
    src/protocol/senderkeydistributionmessage.cpp \
    src/sessioncipher.cpp \
    src/sessionbuilder.cpp \
    src/qcryptographichash/hashes/md5/md5.cpp \
    src/qcryptographichash/hashes/sha1/sha1.cpp \
    src/qcryptographichash/hashes/md4/md4.cpp \
    src/qcryptographichash/qcryptographichash.cpp \
    src/qmessageauthenticationcode/qmessageauthenticationcode.cpp
