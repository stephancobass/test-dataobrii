data aws_iam_policy_document "lambda_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "s3_lambda_role" {
  name = "s3_lambda_role"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role.json

  inline_policy {
    name = "s3_lambda_policy"
    policy = file("s3_lambda.json")

  }
}