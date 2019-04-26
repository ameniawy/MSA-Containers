

array=( "post" "album" "comment" "arango" "conversation" "discussion" "gallery" "groups" "http" "notification" "postgres" "user" )

for i in "${array[@]}"
do
	echo $i
    gcloud builds submit --tag gcr.io/ultimate-team-scalable/$i-microservice $i/ &
done
echo "done"
