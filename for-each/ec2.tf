resource "aws_instance" "expense" {
   for_each = var.instance_names
   ami = data.aws_ami.ami_info.id
   vpc_security_group_ids = ["sg-06507cfe4e2b0eaf2"]
   instance_type = each.value
   tags = merge(
         var.common_tags,
         {
             Name = each.key
             module = each.key
         }
   )
}