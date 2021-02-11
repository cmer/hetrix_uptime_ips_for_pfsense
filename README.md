# HetrixTools Uptime IPs to PFSense-compatible file Converter

Stupidly simple app that fetches the uptime monitoring URL list from HetrixTools and strips the host names in order to make it compatible with PFSense.

### Usage

```bash
rackup
```

### Deploy to Heroku

Requirements: Heroku CLI tools

```
heroku login
heroku create
git push heroku master
heroku open
```

### My deployment

[https://hetrix-ip.herokuapp.com/](https://hetrix-ip.herokuapp.com/)