
#include <Timer.h>
#include "includes/CommandMsg.h"
#include "includes/packet.h"

configuration NodeC{
}
implementation {
    components MainC;
    components Node;
    components new AMReceiverC(AM_PACK) as GeneralReceive;

    Node -> MainC.Boot;

    Node.Receive -> GeneralReceive;

    components ActiveMessageC;
    Node.AMControl -> ActiveMessageC;

    components new SimpleSendC(AM_PACK);
    Node.Sender -> SimpleSendC;

    components new ListC(pack, 64) as PacketListC;
    Node.PacketList -> PacketListC;

    components new ListC(Neighbor, 64) as NeighborsC;
    Node.NeighborList -> NeighborsC;

    components CommandHandlerC;
    Node.CommandHandler -> CommandHandlerC;
}
