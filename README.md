# HTTP-Fileserver

## Step 1: Download the dockerfile

`git clone https://github.com/phamduchongan93/http-fileserver`


## Step 2: Initite the build 

```
docker build -t fileserver:v1 .
```

## Step 3: Spin up the container
```
docker run –dit –p 84:80 fileserver:v1
```
