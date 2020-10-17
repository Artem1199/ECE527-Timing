#include <iostream>
#include <math.h>    
using namespace std;

#define DMAX 2
#define N 4
int inf = 9999;


//[row][column]
int FW(int dist[N][N]);


class Matrix {
    
    public:
    int a[N][N] = {0};
    void sp();
    void set_values(int ro[N][N]);
};

void Matrix::set_values(int ro[N][N]){
    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            a[u][v] = ro[u][v];
        }
    }
};

void Matrix::sp(){
    // dp[matrix][row][column] [k][U][V]
    int dp[N+1][N][N] = {0};

    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            dp[0][u][v] = a[u][v];
        }
    }

    for (int k = 0; k < N; k++){
        for (int v = 0; v < N; v++){
            for (int u = 0; u < N; u++){
                dp[k+1][u][v] = dp[k][u][v];
                    if (dp[k+1][u][v] > (dp[k][u][k]+dp[k][k][v]) 
                        && !(dp[k][u][k]+dp[k][k][v]+dp[k+1][u][v] > 19000)){ // 2nd condition to verify that inf > inf is false, to avoid the instance where (inf > inf - 2) would be true
                                                                                // if two of these added is greater than 19000, then we must have 2 inf, and inf > inf is false
                        dp[k+1][u][v] = dp[k][u][k] + dp[k][k][v];
                }
            }
        }
    }    
    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            a[u][v] = dp[N][u][v];
        }
    }
};

void retime (int graph[N][N], int c);

int main() {

    int init_graph[N][N] ={ {inf, inf, 1, 2},
                    {1, inf, inf, inf},
                    {inf, 0, inf, inf},
                    {inf, 0, inf, inf}
                    };

    retime(init_graph, 3);
    
    
    return 0;

}


void retime (int graph[N][N], int c){


    // a[row][column]
    Matrix G;
    Matrix Gp;
    Matrix W;
    Matrix D;
    

    G.set_values(graph);

    int dU[N] = {1,1,2,2};

    for (int i = 0; i < N ; i++){
        cout << i + 1 << "  |";
        for (int j = 0; j < N; j++){
            if ((G.a[i][j] < inf) && (i != j)){
                G.a[i][j] = N * DMAX * G.a[i][j] - dU[i];
            };
            cout << G.a[i][j] << "   "; 
        };
        cout << "\n";
    };

/*Finding Shortest Path Suv*/
    G.sp();


/* Finding W(U,V) */
    int w[N][N] = {0};
        for (int v = 0; v < N; v++){
            for (int u = 0; u < N; u++){
                if (u!=v){
                        w[u][v] = ceil(((float) G.a[u][v]) / (N * DMAX));
                }
            }
        }
    W.set_values(w);

/* Finding D(U,V) */
    int d[N][N] = {0};

    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            if (u!=v){
                    d[u][v] = (N * DMAX) * w[u][v] - G.a[u][v] + dU[v];  // Note: using w not W.a here
               } else {
                   d[u][v] = dU[u];
               }
        }
    }    
    D.set_values(d);

    int inq[N][N];

    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            if (d[u][v] > c) {
                inq[u][v] = w[u][v] - 1;
            } else {
                inq[u][v] = w[u][v];
            }
        }
    }   

    Matrix INQ;

    INQ.set_values(inq);

    INQ.sp();

    int c_tmp = 0;
    for(int i = 0; i < N; i++){
        cout << "R" << i+1 << "(" << INQ.a[i][1] << "), ";

    c_tmp += INQ.a[i][1];

    }

    cout << "CYCLE IS EQUAL TO: " << c_tmp << "\n";
    if (c_tmp >= 0){
        retime(graph, c-1);
    }

    // Not sure if this is the correct "negative cycle" setup

    return;
    
}




/* Formualte inequalities */




   // FW(a);




/*int FW(int *dist){
    // dp[matrix][row][column] [k][U][V]
    int dp[N+1][N][N] = {0};

    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            dp[0][u][v] = dist[u][v];
        }
    }

    for (int k = 0; k < N; k++){
        for (int v = 0; v < N; v++){
            for (int u = 0; u < N; u++){
                dp[k+1][u][v] = dp[k][u][v];
                    if (dp[k+1][u][v] > (dp[k][u][k]+dp[k][k][v]) 
                        && !(dp[k][u][k]+dp[k][k][v]+dp[k+1][u][v] > 19000)){ // 2nd condition to verify that inf > inf is false, to avoid the instance where (inf > inf - 2) would be true
                                                                                // if two of these added is greater than 19000, then we must have 2 inf, and inf > inf is false
                        dp[k+1][u][v] = dp[k][u][k] + dp[k][k][v];
                }
            }
        }
    }
    
}*/
/*
int compute_Gprime () {
    // used in calculation of W and D


}

int compute_W () {
    // used to formulate ineql
}

int compute_D () {
 // used to formulate ineql
}

int compute_iql () {

}

int solve_iql () {

}

int shortest_path () {

}*/