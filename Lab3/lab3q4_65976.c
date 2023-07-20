#include <stdio.h>
#include <stdbool.h>
int main(){
	int sum=0;
	int count=0;
	int num;
	while(true){
		printf("enter number : ");
		scanf("%d",&num);
		if(num<=0){
			printf("Sum = %d AVG = %d",sum,(sum/count));
			break;
		}else{
			count++;
			sum+=num;
		}
	}
	return 0;
}

