ec2_instance { 'Chaordic_Instance':
  ensure            => present,
  region            => 'sa-east-1',
  availability_zone => 'sa-east-1a',
  subnet	    => 'EAZEVEDO-PUBLIC-1',
  image_id          => 'ami-0fb83963',
  instance_type     => 't2.micro',
  monitoring        => false,
  key_name          => 'training_protonmail',
  security_groups   => ['EAZEVEDO-ELB'],
  user_data         => template('/home/ubuntu/data_Chaordic.sh'),
  tags              => {
   version => 'v1',
  },
}
