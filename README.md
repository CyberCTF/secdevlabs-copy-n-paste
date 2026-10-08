# secDevLabs CopyNPaste API

[secDevLabs](https://github.com/globocom/secDevLabs)' [`owasp-top10-2021-apps/a3/copy-n-paste`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a3/copy-n-paste) app, by Globo.com and the
secDevLabs contributors: a Go (Echo) login page and API backed by MariaDB, whose login builds its SQL query from the user name (SQL injection). This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, built from
the vendored app folder (see [UPSTREAM.md](UPSTREAM.md)).

| Machine | Service |
| --- | --- |
| api | CopyNPaste on port 10001 |
| mysqldb | MariaDB 10.6.3 on port 3306 (lab network only) |

## Run it

```bash
isoloom generate
isoloom up docker
```

Then open http://localhost:10001/ (`POST /register` and `POST /login` take JSON). The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM
(`cloud-docker`) or on Kubernetes. Lab guide: the app's
[README](https://github.com/globocom/secDevLabs/blob/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a3/copy-n-paste/README.md), with the attack narrative and the secDevLabs walkthrough.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

BSD-3-Clause, as secDevLabs ([LICENSE](LICENSE)). The third-party software inside the images keeps
its own licence. This application is deliberately vulnerable: keep it isolated.
