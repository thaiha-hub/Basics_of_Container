# Since the docker contain is using Alpine:3.21 as operative system, there is a slight change from #!/bin/bash to #!/bin/sh
#!/bin/sh
while true
    do
        echo "Input website:"
        read website; echo "Searching..."
        sleep 1; curl http://$website
done

        
