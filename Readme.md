# 개요
* Dockerfile 다단계(multistage) 빌드 연습

# 준비
* 컨테이너 엔진(docker 또는 containerd 등)
* conatiner CLI(docker 또는 nerdctl/buildkit)

# APP 실행방법
```sh
cd my-app
npm start
```

# 컨테이너 빌드
* multi-stage example
```sh
nerdctl build -t multi_stage_example:alpha -f multi_stage_example.Dockerfile .
nerdctl run --rm multi_stage_example:alpha
```

* stage 1개
```sh
# build
nerdctl build -t onestage:alpha -f one_stage.Dockerfile .

# image 확인
nerdctl images onestage:alpha
```

* stage 2개
```sh
# build
nerdctl build -t multi-stage:alpha -f multi_stage.Dockerfile .

# image 확인
nerdctl images multi-stage:alpha
```

# 참고자료
* https://docs.docker.com/develop/develop-images/multistage-build/
* https://reactjs.org/docs/create-a-new-react-app.html
* https://nodejs.org/ko/docs/guides/nodejs-docker-webapp/
