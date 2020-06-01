# :jeans: slack-code-coverage github action

A GitHub action to ping a Slack channel with your projects code coverage

## Usage
```yaml
name: code coverage

on: [push]

jobs:
  slack_coverage:
    runs-on: ubuntu-latest
    steps:
      - name: send coverage
        env:
          SLACK_WEBHOOK_URL: ${{ secrets.SLACK_WEBHOOK_URL }}
        uses: nickatnight/slack-code-coverage-action@master
        with:
          coverage: "80%"  # typically, this would come from a previous step as an env var
```

Message Output:
![Imgur](https://i.imgur.com/My9tadr.png)

## Notes
- This is super simple and basic. There are obviously paid services like coveralls.io and codecov.io, but this solution happened to satisfy my use case
- You can customize your webhook [here](https://my.slack.com/services/new/incoming-webhook/)

## Acknowledgements
- [halik](https://github.com/ironhalik)
