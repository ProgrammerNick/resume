

1. Run get-cert.sh. 
This spins up a docker image that kicks off letsencrypt.

2. When lets encrypt prompts you for the challenge, update Route53 manually (I'll script this at some point)
3. WHen letsencrypt prompts for challenge 2, udpate s3-challenge.sh and run.

Then manually re-import the key to AWS (I know it sucks)