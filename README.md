# vimothy
Vimothy, your trusty vim application in an alpine container

### run

If you just want to run this for funsies, simply run the following to jump into
vimothy:

```shell
docker run --rm -ti pemcconnell/vimothy
```

It gets more useful with volumes, as you would imagine. Add whichever work for 
you:

```shell
docker run --rm
	-v /Users/me/:/root/
	-ti pemcconnell/vimothy:0.1
```
