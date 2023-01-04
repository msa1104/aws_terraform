
terraform {
  cloud {
    organization = "msa-1"

    workspaces {
      name = "aws_terraform"
    }
  }
}


provider "aws" {
  # region = "us-west-2"
  # access_key = "$(var.AWS_ACCESS_KEY}"
  # secret_key = "$(var.AWS_SECRET_KEY}"
}

resource "aws_cloudwatch_dashboard" "dsahboard1" {

  dashboard_name = "dashboard1"
  dashboard_body = <<EOF
  {
    "widgets": [
        {
            "type": "text",
            "x": 0,
            "y": 0,
            "width": 6,
            "height": 6,
            "properties": {
                "markdown": "# Heading \n## Sub-heading \nParagraphs are separated by a blank line. Text attributes *italic*, **bold**, ~~strikethrough~~ . \n \nA [link](https://amazon.com). A link to this dashboard: [ds1](#dashboards:name=ds1). \n \n[button:Button link](https://amazon.com) [button:primary:Primary button link](https://amazon.com) \n \nTable | Header \n----|----- \nCloudWatch | Dashboards \n \n``` \nText block \nssh my-host \n``` \nList syntax: \n \n* CloudWatch \n* Dashboards \n  1. Graphs \n  1. Text widget"
            }
        }
    ]
  }
  EOF

}

# newcastle