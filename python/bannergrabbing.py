import socket


ip = raw_input("Digite o IP:")
porta = input("Digite a porta:")


Socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
Socket.connect((ip, porta))

print(banner)
