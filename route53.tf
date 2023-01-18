

resource "aws_route53_record" "shemen1" {
  zone_id = data.aws_route53_zone.shemen.zone_id
  name    = "shemenmanna.com"
  type    = "A"

  alias {
    name                   = aws_lb.alb.dns_name
    zone_id                = aws_lb.alb.zone_id
    evaluate_target_health = true
  }
}
