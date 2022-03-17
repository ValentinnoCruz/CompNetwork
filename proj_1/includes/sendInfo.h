
#ifndef PACK_BUFFER_H
#define PACK_BUFFER_H

#include "packet.h"

enum{
	SEND_BUFFER_SIZE=128
};

typedef struct sendInfo{
	pack packet;
	uint16_t src;
	uint16_t dest;
}sendInfo;

#endif /* PACK_BUFFER_H */
