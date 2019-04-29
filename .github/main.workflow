workflow "Change" {
  on = "push"
  resolves = ["Convert"]
}

action "Convert" {
  uses = "maxheld83/pandoc@v0.1.0"
  env = {
    OUT_DIR = "dist"
  }
  args = [
    "--standalone",
    "--output=dist/index.html",
    "README.md",
  ]
}
