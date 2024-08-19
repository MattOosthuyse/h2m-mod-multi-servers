# h2m-mod-multi-servers

Welcome to a small thing that I have been working on in my free time for fun to assist the south african community for
the H2m-mod for *Call of Duty: Modern warfare 1/2 remastered*

## Steps to run your own servers

This `readme` is a simplified guide on how to get this running. If something isn't clear, I have specified how you will
be able to be in contact with me at the bottom of the readme. I would love feedback.

### Copying the file to the correct place

For this, you will need to copy the files into the root directory of *MWR*. (Where the `h2m-mod.exe` file lives)

I am a `Linux` user so messing with scripts and command lines in windows is very different for me and may take some time
to be able to refactor the multiple servers into a directory without having the root directory being so cluttered.

### Once the filed are in the directory

I suggest updating the server configs to tailor for what you would like.

There is a file called `servers.bat`. This executes all the `server_*.bat` files in their own separate terminals.

## After the servers are running

Once the server are up and running, you will be able to make use of
the [IW4X-admin](https://github.com/RaidMax/IW4M-Admin) to have monitoring for your servers with admin controls. Follow
the steps that are provided in the repo. You should have things connected with more control over your servers if you
intend on opening them up to the public.

### Exposing the server to the internet

For you to be able to let your friend join your server without requiring a `VPN` to connect, you will need to do the
following:

#### Port Forwarding

Hosting a game server requires you to port forward to make your server accessible from outside your network. Since
every router is different we can't make a guide for every router, so we recommend searching `your router name + port
forward` on Google.

To allow for incoming traffic to the ports that you have configured for your servers. You will need to know what your IP
address on your network is. Use the following command in your `cmd` to find your IP:

```shell
ipconfig
```

The servers that are currently set up to forward ports `27016-27021`.

#### Firewall rule for incoming traffic

You will need to add the ports that you have specified for your servers to allowed incoming traffic. See the
following [article](https://www.tomshardware.com/news/how-to-open-firewall-ports-in-windows-10,36451.html) for a
step-by-step guide on how to do this.

### After everything is configured

Once you have finished setting up all the config, all you will need to do it send your routers public IP address to your
friends. You will be able to find what your routers IP address is on the
following [website](https://whatismyipaddress.com/).

Now that you have that, you will be able to send the `address:port` to your friends for them to connect to the servers.

To make it easier, I suggest that they add the servers to their favourites which will allow for them to use the server
browser to be able to find your servers.

To have favourites, you will need to create a file called `favourites.json` and place this file in the `player2`
directory at the root of the directory of the game file. The `json` file has the following structure:

```json
   [
  "<ip-adress>:<port",
  "105.xxx.xxx.123:27016",
  "105.xxx.xxx.123:27018",
  "105.xxx.xxx.123:27019",
  "105.xxx.xxx.123:27020",
  "105.xxx.xxx.123:27021"
]
```

# Plans for the future

1. I plan on solving the problems I was having with navigating directories in the script and after that I look to upload
   a
   basic walkthrough on how to set up multiple servers running at once.
2. Dockerising the servers to make for ease of deploying on remote VM's or other devices so that it does not harm the
   performance of my computer.

## Contact

I am available in the `H2m-mod` discord with my user handle is `surebud`. Please contact me on the discord server if
there are any questions or suggestions.