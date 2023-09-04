# Define your infrastructure resources for the 'dev' environment here.
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  # Add other configurations specific to 'dev'.
}
