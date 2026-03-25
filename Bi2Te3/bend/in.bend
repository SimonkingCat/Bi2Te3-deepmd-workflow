#模型基本设置
units      metal
boundary    s p p
atom_style    atomic
timestep    0.001
neighbor    2.0 bin
neigh_modify  delay 0 every 5 check yes

#建box
lattice         fcc 3.61
region          box block -20 20 -3 3 -20 20
create_box      3 box

#建铜纳米线
region          cu block INF INF -3 3 -3 3
create_atoms    1 region cu

#建压块
region          top block  -3 3 -3 3 4 7
create_atoms    2 region top 

#势函数设置
pair_style    meam
pair_coeff    * *  library.Cu.meam Cu Cu.meam Cu Cu Cu

#设置左右固定端
region          left block INF -18 INF INF INF INF 
region          right block 18 INF INF INF INF INF
group           left region left
group           right region right
group           top region top

#保存模型文件
write_data      all.data

#温度初始化
velocity        all create 300 98989

#固定上部纳米线左右两端
velocity        top set 0 0 0
fix             01 top setforce 0 0 0
velocity        left set 0 0 0
fix             02 left setforce NULL NULL 0
velocity        right set 0 0 0
fix             03 right setforce NULL NULL 0

#计算受力
variable        force equal f_01[3]

#热力学信息输出
thermo          1
thermo_style    custom step temp pe ke etotal v_force

#下压
dump            1 all atom 1000 dump.xyz
fix             1 all nvt temp 300 300 0.1

#下压速度
velocity        top set 0 0 -1 units box
run             12000

#mpiexec -n 16 lmp -i in.bend