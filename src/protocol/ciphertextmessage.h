#ifndef CIPHERTEXTMESSAGE_H
#define CIPHERTEXTMESSAGE_H

#include <QByteArray>

class CiphertextMessage
{
public:
#define UNSUPPORTED_VERSION 1
#define CURRENT_VERSION 3
#define WHISPER_TYPE 2
#define PREKEY_TYPE 3
#define SENDERKEY_TYPE 4
#define SENDERKEY_DISTRIBUTION_TYPE 5
// This should be the worst case (worse than V2).  So not always accurate, but good enough for padding.
#define ENCRYPTED_MESSAGE_OVERHEAD 53

    virtual QByteArray serialize() const = 0;
    virtual int getType() const = 0;
    virtual ~CiphertextMessage() {}
};



#endif // CIPHERTEXTMESSAGE_H
