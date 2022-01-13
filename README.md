# Cloud9

Stuff for working in Cloud9

See

* `resize-storage.sh`
* `install-miniconda.sh`
* `install-projector.sh`

Remote access

To enable ssh access, add a public key to ~/.ssh/authorized_keys and enable inbound access on the security group

Then on your local machine add to ~/.ssh/config

```text
Host dask-play
  User ec2-user
  Port 22
  Hostname ***EC2-PUBLIC-IP***
  IdentityFile ~/.ssh/met-office
  TCPKeepAlive yes
  IdentitiesOnly yes
  UseKeychain yes
```

That will allow ssh login with 

```bash
ssh ec2-user@dask-play
```

You can run up Projector over a tunnel with 

```bash
ssh -L 9999:127.0.0.1:9999 dask-play -t 'projector run PyCharm'
```

You can run JupyterLab over a tunnel with

```bash
ssh -L 8888:127.0.0.1:8888 dask-play -t 'conda activate dask && cd environment && jupyter-lab --no-browser'
```