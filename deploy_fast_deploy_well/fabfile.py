from fabric.api import env, run, put
env.hosts = ['158.69.91.62']
env.key_filename = '/Users/Holberton/.ssh/id_rsa.pub'
env.user = ["admin"]

def uptime():
	run('uptime')

def disk_space():
	run('df -h')

def ship():
	put('/Users/Holberton/Documents/Holberton/holberton-twitter-clone/', '/var/www/html/')

