workflow "Update gist with WakaTime stats" {
  resolves = ["update-gist"]
  on = "schedule(*/10 * * * *)"
}

action "update-gist" {
  uses = "matchai/waka-box@master"
  env = {
    "GIST_ID" = "17b9f6dab6b78f8a1ed4d79e1fff32e8af093d28"
  }
  secrets = [
    "GH_TOKEN",
    "WAKATIME_API_KEY",
  ]
}
