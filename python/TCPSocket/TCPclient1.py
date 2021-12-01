from socket import *

#Put server address here
serverName = "130.136.5.36"
serverPort = 12001

clientSocket = socket(AF_INET, SOCK_STREAM)

#This is the TCP connection opening
clientSocket.connect((serverName, serverPort))

message = raw_input('Inserire frase in minuscolo: ')
clientSocket.sendto(message.encode(), (serverName, serverPort))
modifiedMessage, serverAddress = clientSocket.recvfrom(2048)
print(modifiedMessage.decode())
clientSocket.close()
