#include"ATM.h"

int atm(int p)
{
		int i,j,k,l,m,n,o;
	
	i=p;
	
	printf("\nWELCOME TO SBH\n");
	printf("1.PRESS 1 FOR CASH WITH DRAW\n",1);
	printf("2.PRESS 2 FOR PIN GENERATE\n",2);
	printf("3.PRESS 3 FOR STATEMENT REQUEST\n",3);
	printf("4.PRESS 4 FOR BILL PAYMENT\n",4);
	printf("5.PRESS 5 FOR DONATION\n",5);
	printf("6.PRESS 6 FOR BALANCE ENQUIRY\n",6);
	
	printf("ENTER THE NUM WHICH U WANT:");
	scanf("%d",&j);

	
	switch(j)
	{
		case 1:cash:
				printf("\nPLEASE ENTER THE AMOUNT.");
				scanf("%d",&k);
				if(k==500||k==2000)
				{
					printf("\nPLEASE COLLECT THE CASH.");
				}
				else if(k==100||k==200)
				{
					
					printf("\nPLEASE ENTER THE AMOUNT IN 500 or 2000");
					goto cash;
				}
				
				break;
		case 2:
				form:
				printf("\nPLEASE ENTER THE NEW PIN :");
				scanf("%d",&m);
				if(i!=m)
				{
					printf("YOUR PIN IS SUCCESSFULLY UPDATED");
				}
				else if(i==m)
				{
					printf("YOUR PIN SAME AS OLD PIN PLEASE CHANGE IT :");
					goto form;
				}
				break;
		case 3:printf("ENTER THE DATE U WANT");
				scanf("%d",&n);
				if(n==3)
				{
					printf("YOUR STATEMENT IS.......");
				}
				else 
				{
					printf("YOUR DATA IS.........");
				}
				break;
		case 4:printf("PLEASE ENTER THE AMOUNT....");
				scanf("%d",&o);
				if(n==500||n==2000)
				{
					printf("PLEASE COLLECT");
				}
				else if(n==100||n==200)
				{
					printf("PLEASE ENTER THE AMOUNT IN 500 OR 2000");
				}
				break;
		case 5:printf("ENTER THE DONATION AMOUNT",o);
				if(o>=100000)
				{
					printf("ENTER THE LESS AMOUNT");
				}
				else 
				{
					printf("YOUR TRANSACTION IS PROCESSING.....");
					printf("YOUR TRANSACTION IS SUCCESSFULL");
				}
				break;
		case 6:printf("YOUR BALANCE IS 56.54");
				
				break;
	
				
	}

}

int main()
{
	machine:
	int i;
	printf("PLEASE INSERT THE CARD");
	printf("\nPLEASE ENTER THE PIN :");
	scanf("%d",&i);
	int y;
	atm(i);
	printf("\nDO YOU WANT CONTINUE ......YES=1 or NO=0 \n");
	scanf("%d",&y);
	if(y==1)
	{
	atm(i);
	}
	else
	{
		printf("THANKYOU FOR VISITING");
			}
	
}