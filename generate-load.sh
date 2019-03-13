let x=0

while true; do
    let x++;
    curl -s "http://hello-world-lb-1621184875.us-east-2.elb.amazonaws.com";
    sleep 1;
    echo "$x"
done