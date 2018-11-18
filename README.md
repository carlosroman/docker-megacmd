# MEGAcmd - Command Line Interactive and Scriptable Application

This Docker image provide the MEGAcmd which gives non UI access to MEGA services.
It intends to offer all the functionality with your MEGA account via commands. It features **synchronization**, **backup** of local folders into your MEGA account and a **webdav/streaming** server. 

## Usage

```
docker create \
	--name megacmd \
	-v <path/to/data/to/sync>:/data \
	carlosroman/megacmd
```
