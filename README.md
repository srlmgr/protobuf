# slrmgr-protobuf

Protobuf definitions for SimRacing League Manager

## Cheatsheet

Login in VS code

```shell
buf registry login --prompt
```

Push to a label

```shell
buf push . --label srlmgr/api/issueXX
```

See also [the manual][check-breaking]

Check breaking changes against main version

```shell
buf breaking --against https://github.com/srlmgr/protobuf.git

```

Check breaking changes against local main version

```shell
buf breaking --against '.git#main'

```

---

[check-breaking]: https://buf.build/docs/breaking/overview#git
