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

## TODO's
- [ ] Automated Merge from CI
- [ ] Automated TF Lint
- [ ] Pre-commit config 