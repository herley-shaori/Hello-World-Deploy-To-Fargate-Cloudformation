aws ecr delete-repository --repository-name demo-springboot-to-fargate-ecr --force & ^
echo Berhasil menghapus ecr repository. & ^
aws s3 rm s3://bucket-untuk-codepipeline --recursive & ^
aws s3api delete-bucket --bucket bucket-untuk-codepipeline --region ap-southeast-1 & ^
echo Berhasil menghapus S3 Bucket. & ^
aws cloudformation delete-stack --stack-name stack-dua & ^
aws cloudformation delete-stack --stack-name stack-satu & ^
echo Berhasil menghapus stack.