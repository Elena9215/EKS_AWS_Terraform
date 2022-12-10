# Launch template for worker nodes

resource "aws_launch_template" "eks_worker_nodes" {
  name_prefix   = "eks_cluster"
  image_id      = data.aws_ami.eks_worker_ami.id
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "eks_worker_nodes" {
  desired_capacity    = 2
  max_size            = 4
  min_size            = 2
  vpc_zone_identifier = aws_subnet.eks_pub_sub.*.id

  mixed_instances_policy {
    instances_distribution {
      on_demand_base_capacity                  = 2
      spot_allocation_strategy                 = "capacity-optimized"
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.eks_worker_nodes.id
      }

      override {
        instance_type     = "t3.medium"
        weighted_capacity = "1"
      }
    }
  }
}