

#include "../../includes/CommandMsg.h"
#include "../../includes/command.h"
#include "../../includes/channels.h"

configuration CommandHandlerC{
   provides interface CommandHandler;
}

implementation{
    components CommandHandlerP;
    CommandHandler = CommandHandlerP;
    components new AMReceiverC(AM_COMMANDMSG) as CommandReceive;
    CommandHandlerP.Receive -> CommandReceive;

   //Lists
   components new PoolC(message_t, 20);
   components new QueueC(message_t*, 20);

   CommandHandlerP.Pool -> PoolC;
   CommandHandlerP.Queue -> QueueC;

   components ActiveMessageC;
   CommandHandlerP.Packet -> ActiveMessageC;
}
