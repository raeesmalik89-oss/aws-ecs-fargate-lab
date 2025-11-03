
#!/bin/bash
echo "🚀 Deploying AWS ECS Fargate Infrastructure"
echo "Cluster: my-ecs-cluster"
echo "Task: nginx-task-definition"

# ECS cluster creation
aws ecs create-cluster --cluster-name my-ecs-cluster --capacity-providers FARGATE

# Task definition registration  
aws ecs register-task-definition --cli-input-json file://task-definitions/nginx-task.json

echo "✅ Deployment completed successfully"
