data "terraform_remote_state" "vpc_remote_data" {
  backend = "s3"
  config = {
    bucket  = "myterraform-bucket-state-shinkim-t"
    key     = "${var.name}/vpc/terraform.tfstate" # var.name이 변수라는 것을 인식할 수 있게 { } 중괄호 사용. $ { } 사용으로 " " 문자열 안에 변수 사용 가능
    profile = "terraform_user"
    region  = "ap-northeast-2"
  }
}