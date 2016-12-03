# StandUp Bot for Slack, based on Elixir

This project uses <a href="https://github.com/hedwig-im/hedwig" target="_blank">Hedwig bot framework</a> for Elixir.

Just for now this bot can only show random advice from <a href="http://fucking-great-advice.ru/" target="_blank">Fucking great advice</a> web site.

In the future versions, bot can notify channel subscribers about standups, based on Google Calendar API, show your team member Birthdays and other fun stuff.

Stay tuned.

## Installation and usage

  1. First of all - add custom bot integration to Slack, and get your API token:
 
 ![Slack bot sample](https://api.monosnap.com/rpc/file/download?id=kt2yo8nkqZ9flP5BRZ0XxnDMqDbXfC)


  2. Add your token into your system environment (.env file):

    ```bash
    export SLACK_API_TOKEN="XXXXXXXXXX"
    ```
  3. Run server
    ```bash
    mix run --no-halt
    ```

  4. Invite bot into your Slack channel with command:
    ```bash
    /invite @YOUR_BOT_NAME
    ```
  5. Ask for some fucking advice:
    ![Sample advice](https://api.monosnap.com/rpc/file/download?id=fUY6U1pV49eEZo4cLKzH4vf7geIDmj)

## Changelog

### 0.0.1
- Basic advice
- Update dependencies