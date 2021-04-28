


int transfer(int * from,int * to, int amount){
    assert(amount>=0);
    if(*from<amount)
        return 0;
    *from-= amount;
    *to+=amount;
    return 1; 
}
	int kontoA=10; int kontoB=20; 
	Thread mand(){transfer(&kontoA,&kontoB,7));
	Thread kone(){transfer(&kontoA,&kontoB,4));
	Thread son (){transfer(&kontoB,&kontoA,10));