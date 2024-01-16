# Terraform #

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)


This project will try to show you how we use terraform in [mydevopsteam.io](https://mydevopsteam.io)

Overview 🌅
============

OpenSource terraform modules. This terraform modules consist of a collection cloud resources based on users need.


Reference
===========
- [x] Module documentation can be found on each resource directory via `modules/<resource>/README.md` file.

![Terraform](assets/term.gif)


Contributors
==============

Please refer to [CONTRIBUTORS](CONTRIB/CONTRIBUTORS.md)


CONTRIBUTING GUIDELINES
=========================

Please refer to [CONTRIBUTING](CONTRIB/CONTRIBUTING.md) for contributing guidelines

Naming Conventions
===================

- In [mydevopsteam.io](https://mydevopsteam.io). We are basically using the standard naming conventions from this source: [https://www.terraform-best-practices.com/naming](https://www.terraform-best-practices.com/naming)

- Never repeat resource type names like this `resource "aws_instance" "aws_ec2_instance" {` which makes our code ugly and confusing.

## Issuing a Report

To report an issue on our project:

  1. Check the repository's [issue tracker](https://github.com/mydevopsteamio/terraform/issues) on GitHub
  2. Check first, if the issue you are creating is already existing or not.
  3. If you can't find an answer to your question in the documentation or issue tracker, you can ask a question by creating a new issue. Make sure to provide enough context and details.

## Apache License

Apache License, Version 2.0, January 2004 (https://www.apache.org/licenses/LICENSE-2.0)

## Support Us

Kindly support our GitHub Project, by following these steps:

  1. Visit our repository: Navigate to this [GitHub repository](https://github.com/mydevopsteamio/terraform)

  2. Click the "Star" button: On the repository page, you'll see a "Star" button in the upper right corner. Clicking on it will star the repository, indicating your support for the project.

  3. Optionally, you can also leave a comment on the repository or open an issue to give feedback or suggest changes.

Staring a repository on GitHub is a simple way to show your support and appreciation for the project. It also helps to increase the visibility of the project and make it more discoverable to others.

## Who we are

**TODO**


## TODO's
- [ ] Automated Merge from CI
- [ ] Automated TF Lint
- [ ] Pre-commit config
