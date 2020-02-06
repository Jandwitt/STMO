@testset "MST" begin
    using STMO
    using STMO.MST

    edges = [(1, :A, :D),
            (2, :A, :B),
            (3, :D, :C),
            (4, :B, :D),
            (5, :B, :C)]

   vertices = [:A, :B, :C, :D]

   mst_prim, cprim = prim(vertices, edges, :A)
   @test cprim == 6
   @test (4, :B, :D) ∉ mst_prim && (4, :D, :B) ∉ mst_prim

   @test prim(vertices, edges)[2] == 6

   mst_kruskal, ckruskal = kruskal(vertices, edges)
   @test ckruskal == 6
   @test (4, :B, :D) ∉ mst_kruskal && (4, :D, :B) ∉ mst_kruskal
end
