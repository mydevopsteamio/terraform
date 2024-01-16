# Contributing Guidelines

The Terraform modules accepts contributions via GitHub pull requests. This document outlines the process to help get your contribution accepted.

## Sign-Off

The sign-off is a simple line at the end of the explanation for a commit. All
commits needs to be signed. Specially during (`merge`) pull request event.

***Note: Use your real name. Sorry, Anonymous contributors are currently not allowed for security reasons.***


You must your `user.name` and `user.email` on git configs, so we can identify a clear sign-off from the legitimate contributor.

If your git config is set properly, then viewing the `git log` information must look something like this:


```bash
Author: Alfred Valderrama <alfred@example.com>
Date:   Mon Jan 1 00:00:00 2024 -0800

    Update ec2.tf

    Signed-off-by: Alfred Valderrama <alfred@example.com>
```

Notice the `Author` and `Signed-off-by` lines match. If they don't
your PR will be rejected by the `PR` reviewer.


## How to Contribute to an Existing TF Modules

1. Clone this repository, develop and test your module changes. Remember to sign off your commits as described in the **[Sign-Off](#sign-off)** chapter.
2. Ensure your changes follow the **[technical](#technical-requirements)** and **[documentation](#documentation-requirements)** guidelines, described below.
3. Then, Submit a pull request.

***NOTE***: In order to make testing and merging of PRs easier, please submit changes of multiple modules in separate PRs.


### Technical Requirements

* Each module dependencies must be submitted independently
* Must pass the linter (`checkov` and `pre-commit`)
* `terraform fmt -recursive <changes>` must be successful
* Must be atleast compatible from up-to-date [Terraform](https://developer.hashicorp.com/terraform/install?product_intent=terraform) version.
* Should follow terraform module configuration best practices [Terraform Module Best Practices](https://developer.hashicorp.com/terraform/tutorials/modules/module#module-best-practices)
  * Nested module is acceptable but must be actively maintained by third-party module.
* Conventional commit messages refer to [https://www.conventionalcommits.org/en/v1.0.0-beta.2/#specification](https://www.conventionalcommits.org/en/v1.0.0-beta.2/#specification)

### Documentation Requirements

* Must include an in-depth `README.md`, including:
    * Must include the `Required` and `Optional` indication of available variables from tf module
    * Must contain inputs and clear descriptions
    * Must contain data type
    * Must use [terraform-docs](https://github.com/terraform-docs/terraform-docs) and contains the author name at the top level of the `README.md` file.
    * Must include ***Usage*** section at the bottom of the `README.md` document.
* Must indicate the version number using semanic version scheme [semver.org](https://semver.org/).
