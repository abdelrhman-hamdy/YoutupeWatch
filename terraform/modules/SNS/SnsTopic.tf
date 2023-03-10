resource "aws_sns_topic" "topic" {
  name = "YoutupeWatch"
  display_name = "YoutupeWatch"
#  delivery_policy = <<EOF
#{
# "http": {
#    "defaultHealthyRetryPolicy": {
#      "minDelayTarget": 20,
#      "maxDelayTarget": 20,
#      "numRetries": 3,
#      "numMaxDelayRetries": 0,
#      "numNoDelayRetries": 0,
#      "numMinDelayRetries": 0,
#      "backoffFunction": "linear"
#    },
#    "disableSubscriptionOverrides": false,
#    "defaultThrottlePolicy": {
#      "maxReceivesPerSecond": 1
#    }
#  }
#}
#EOF
}

resource "aws_sns_topic_subscription" "subsc" {
  topic_arn = aws_sns_topic.topic.arn
  protocol  = var.protocol
  endpoint  = var.endpoint 
} 