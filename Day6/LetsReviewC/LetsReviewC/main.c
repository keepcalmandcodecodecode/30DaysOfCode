//
//  main.c
//  LetsReviewC
//
//  Created by developer on 1/16/19.
//  Copyright © 2019 developer. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {
    int t;
    scanf("%d",&t);
    for (int i = 0; i < t; i++)
    {
        char even[5000];
        char odd[5000];
        char string[10000];
        scanf("%s",&string);
        unsigned long length = strlen(string);
        unsigned long evenLength = 0;
        unsigned long oddLength = 0;
        for (unsigned long j = 0; j < length; j++)
        {
            if (j%2 == 0) {
                even[evenLength] = string[j];
                evenLength = evenLength + 1;
            } else {
                odd[oddLength] = string[j];
                oddLength = oddLength + 1;
            }
        }
        even[evenLength] = '\0';
        odd[oddLength] = '\0';
        printf("%s %s\n",even,odd);
    }
    printf("\n");
    return 0;
}
