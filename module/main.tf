/*module "s3" {
  source      = "./module/s3"
  bucket_name = var.bucket
}*/



module "s3" {
  source = "./s3"
  for_each = var.bucket_name
  bucket_name = each.value.bucket
}


module "iam" {
  source = "./iam"
  for_each = var.role
  role = each.value.role
}


