FROM ubuntu:latest
RUN apt update && apt upgrade -y
RUN apt install curl wget -y
RUN mkdir actions-runner
WORKDIR actions-runner
RUN curl -o actions-runner-linux-x64-2.325.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.325.0/actions-runner-linux-x64-2.325.0.tar.gz
RUN tar -zxvf actions-runner-linux-x64-2.325.0.tar.gz
RUN ./config.sh --url https://github.com/venkathckr-repo/githubaction-self-runner --token BTRQXPRCR3GX6K5FEVLGXHTILROOY
CMD [ "./run.sh" ]