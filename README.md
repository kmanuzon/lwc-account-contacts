# LWC Account Contacts

This guide will help setup this application.

## Prerequisites

- Salesforce CLI
- Git

## Setup project

Clone Repository

```
git clone https://github.com/kmanuzon/lwc-account-contacts.git
```

Create Scratch Org

```
sfdx force:org:create --durationdays 30 --wait 30 --definitionfile config/project-scratch-def.json --setdefaultusername --targetdevhubusername dev-hub --setalias lwc-sample-01
```

Push Source

```
sfdx force:source:push
```

Open Scratch Org

```
sfdx force:org:open
```

Populate Data - go to developer console and run this as anonymous apex. Warning, this deletes all account and contact
data and creates new ones.

```
GenerateData.init();
```

