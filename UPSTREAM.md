# Upstream

| | |
| --- | --- |
| Project | secDevLabs (Globo.com) |
| Repository | https://github.com/globocom/secDevLabs |
| App | `owasp-top10-2021-apps/a3/copy-n-paste` |
| Version | master (secDevLabs has no releases) |
| Commit | 10be438496e928c66567749f0aaf0bb976052bc9 |
| Licence | BSD-3-Clause |

The app folder [`owasp-top10-2021-apps/a3/copy-n-paste`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a3/copy-n-paste) of that commit is vendored unchanged, without its Git history,
split so that each part sits in the build folder of the machine that uses it:

| Upstream path (in the app folder) | Here |
| --- | --- |
| everything | `build/api/app/` |

Each `build/<machine>/Dockerfile` says in its header comment how it differs from upstream:

- `build/api/`: upstream's `deployments/a1inj.Dockerfile` with the database environment of upstream's compose file baked in, a compile at build time so `go run` starts offline, and the compose command as `CMD`.
- `build/mysqldb/`: the `mariadb:10.6.3` service of upstream's compose file with its environment baked in.

To update, replace the vendored folders with a newer secDevLabs commit, then change this file.
