
resource "aws_s3_bucket_policy" "website" {
  bucket = aws_s3_bucket.website.id

  policy = jsondecode(
{
  "Id": "Policy",
  "Statement": [
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.website.bucket}/*",
      "Principal": {
        "AWS": [
          "*"
        ]
      }
    }
  ]
})

}