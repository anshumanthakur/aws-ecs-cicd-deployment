import os

with open("SF_ELT_POC/Config.ini", "r") as files:
    content = files.read()

content=content.replace("$$SNOWFLAKE_CS_APP_USER_PWD$$", os.environ['SNOWFLAKE_CS_APP_USER_PWD'])

with open("SF_ELT_POC/Config.ini", "w") as files:
    files.write(content)

with open("config/main.tf", "r") as files:
    content = files.read()
content=content.replace("$$cron$$", os.environ['cron'])
# cron(45 11 * * ? *)
content=content.replace("$$projectname$$", os.environ['project_name'])
# content=content.replace("$$domain_name$$", os.environ['domain_name'])
with open("config/main.tf", "w") as files:
    files.write(content)

with open("SF_ELT_POC/infra/prd/main.tf", "r") as files:
    content = files.read()
content=content.replace("$$cron$$", os.environ['cron'])
# cron(45 11 * * ? *)
content=content.replace("$$projectname$$", os.environ['project_name'])
# content=content.replace("$$domain_name$$", os.environ['domain_name'])
with open("SF_ELT_POC/infra/prd/main.tf", "w") as files:
    files.write(content)

with open("config/task_definition.json", "r") as files:
    content = files.read()
content=content.replace("$$projectname$$", "sf-elt-poc")
content=content.replace("$$repourl$$", os.environ['repourl'])
content=content.replace("$$region$$", os.environ['AWS_DEFAULT_REGION'])
with open("config/task_definition.json", "w") as files:
    files.write(content)

with open("config/task_definition.json", "r") as files:
    content = files.read()
content=content.replace("$$projectname$$", "sf-elt-poc")
content=content.replace("$$repourl$$", os.environ['repourl'])
content=content.replace("$$region$$", os.environ['AWS_DEFAULT_REGION'])
with open("config/task_definition.json", "w") as files:
    files.write(content)


