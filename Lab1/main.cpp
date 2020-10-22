#include <iostream>
#include <math.h>    
using namespace std;


#define DMAX 2
#define N 4

// number to represent infinity
// Need to replace with a better rep. in the future
int inf = 9999;


int FW(int dist[N][N]);
void retime (int graph[N][N], int c, int dU[N]);


////////////////////////////////////////////////////////////////////////////////////
// Matrix: class that is just a matrix, but has a couple extra functions
////////////////////////////////////////////////////////////////////////////////////
class Matrix {
    public:
    int a[N][N] = {0};
    void sp();
    void set_values(int ro[N][N]);
    void print_matrix();
};


////////////////////////////////////////////////////////////////////////////////////
// set_values: input a matrix and store the values into a "matrix" class
////////////////////////////////////////////////////////////////////////////////////
void Matrix::set_values(int ro[N][N]){
    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            a[u][v] = ro[u][v];
        }
    }
};

////////////////////////////////////////////////////////////////////////////////////
// sp: shortest path method uses Floyd-Warshall algorithm to find the shortest
// path in a matrix describing a graph.
////////////////////////////////////////////////////////////////////////////////////
void Matrix::sp(){

    int dp[N+1][N][N] = {0};

// copy the 2d matrix into a 3rd matrix
    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            dp[0][u][v] = a[u][v];  // on first instances a = G (graph rep)
        }
    }

// meat of the algorithm, finds the actualy shortest path
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

// return the found shortest path values back to the matrix
    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            a[u][v] = dp[N][u][v];  // shortest path values are found in the last matrix N
        }
    }
};

void Matrix::print_matrix(){

        for (int v = 0; v < N; v++){
            cout << v+1 << "| ";
            for (int u = 0; u < N; u++){
                cout << a[v][u] << "  "; 
            }
            cout << " \n";
        }

    return;
}

////////////////////////////////////////////////////////////////////////////////////
// main: Defines our graph and C value, then calls the retime function
////////////////////////////////////////////////////////////////////////////////////

int main() {

/* representation of the graph that we want to test */
   // int init_graph[N][N] ={      /*1*/ /*2*/ /*3*/ /*4*/
    //                     /*1*/    {inf, inf,   1,   2},
    //                     /*2*/    {  1, inf, inf, inf},
    //                     /*3*/    {inf,   0, inf, inf},
    //                     /*4*/    {inf,   0, inf, inf}};
    int init_graph[N][N] ={      /*1*/ /*2*/ /*3*/ /*4*/
                         /*1*/    {inf, 1,   inf,   2},
                         /*2*/    {inf, inf,   0, inf},
                         /*3*/    {  0,   inf, inf, inf},
                         /*4*/    {inf,   3, inf, inf}};
    int c = 3; // wanted retiming value
    int tp[N] = {1,1,1,2};
    retime(init_graph, c, tp);    
    return 0;
}


////////////////////////////////////////////////////////////////////////////////////
// retime: Retiming function that takest he input graph, and a delay time (c)
// prints out retimed constraints.  Runs recursively until lowest time is achieved
////////////////////////////////////////////////////////////////////////////////////

void retime (int graph[N][N], int c, int dU[N]){

/* declare matrices used in program */
    Matrix G;
    Matrix Gp;
    Matrix W;
    Matrix D;
    Matrix INQ;

             // propagation delays of each circuit 

    G.set_values(graph); // set matrix G to graph
    Gp = G;

    cout << "Graph G = " << "\n";
    G.print_matrix();

    for (int i = 0; i < N ; i++){
        // cout << i + 1 << "| ";
        for (int j = 0; j < N; j++){
            if ((G.a[i][j] < inf) && (i != j)){
                Gp.a[i][j] = N * DMAX * G.a[i][j] - dU[i];
            };
            //cout << Gp.a[i][j] << "   "; 
        };
       // cout << "\n";
    };

    cout << "Graph G' = " << "\n";
    Gp.print_matrix();

/*Finding Shortest Path Suv*/
    Gp.sp(); // this G becomes "Suv"

    cout << "Graph Suv = " << "\n";
    Gp.print_matrix();

/* Finding W(U,V) */
    int w[N][N] = {0};
        for (int v = 0; v < N; v++){
            for (int u = 0; u < N; u++){
                if (u!=v){
                        w[u][v] = ceil(((float) Gp.a[u][v]) / (N * DMAX)); // Gp reps Suv
                }
            }
        }
    W.set_values(w);

    cout << "Graph W = " << "\n";
    W.print_matrix();

/* Finding D(U,V) */
    int d[N][N] = {0};

    for (int v = 0; v < N; v++){
        for (int u = 0; u < N; u++){
            if (u!=v){
                    d[u][v] = (N * DMAX) * w[u][v] - Gp.a[u][v] + dU[v];  // Note: using w not W.a here
               } else {
                   d[u][v] = dU[u];
               }
        }
    }    
    D.set_values(d);

    cout << "Graph D = " << "\n";
    D.print_matrix();


/* finding inequalities */
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
    INQ.set_values(inq);

    cout << "Graph Inequalities = " << "\n";
    INQ.print_matrix();
    

/* Reuse SP algorithm to find SP for inequalities */
    INQ.sp();

    cout << "Graph calculated Inequalities= " << "\n";
    INQ.print_matrix();

    int c_tmp = 0;
        for(int i = 0; i < N; i++){
            cout << "R" << i+1 << "(" << INQ.a[i][1] << "), ";

        c_tmp += INQ.a[i][1];

    }

    cout << "CYCLE IS EQUAL TO: " << c_tmp << "\n" << endl;
    if (c_tmp >= 0){
       // if (c >= -3){
        retime(graph, c-1, dU); // recursive call to retime function
    }

    // Not sure if this is the correct "negative cycle" setup

    return;
    
}