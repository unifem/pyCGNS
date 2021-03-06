#  -------------------------------------------------------------------------
#  pyCGNS - Python package for CFD General Notation System -
#  See license.txt file in the root directory of this Python module source  
#  -------------------------------------------------------------------------
# 
#  CGNS/MLL API v3.2.01
#
cdef extern from "cgnslib.h":
  
  ctypedef int cgsize_t

  ctypedef enum MassUnits_t:
      MassUnitsNull=0
      MassUnitsUserDefined=1
      Kilogram=2
      Gram=3
      Slug=4
      PoundMass=5

  ctypedef enum LengthUnits_t:
      LengthUnitsNull=0,
      LengthUnitsUserDefined=1
      Meter=2
      Centimeter=3
      Millimeter=4
      Foot=5
      Inch=6

  ctypedef enum TimeUnits_t:
      TimeUnitsNull=0
      TimeUnitsUserDefined=1
      Second=2

  ctypedef enum TemperatureUnits_t:
      TemperatureUnitsNull=0
      TemperatureUnitsUserDefined=1
      Kelvin=2
      Celsius=3
      Rankine=4
      Fahrenheit=5

  ctypedef enum AngleUnits_t:
      AngleUnitsNull=0
      AngleUnitsUserDefined=1
      Degree=2
      Radian=3

  ctypedef enum ElectricCurrentUnits_t:
      ElectricCurrentUnitsNull=0
      ElectricCurrentUnitsUserDefined=1
      Ampere=2
      Abampere=3
      Statampere=4
      Edison=5
      auCurrent=6

  ctypedef enum SubstanceAmountUnits_t:
      SubstanceAmountUnitsNull=0
      SubstanceAmountUnitsUserDefined=1
      Mole=2
      Entities=3
      StandardCubicFoot=4
      StandardCubicMeter=5

  ctypedef enum LuminousIntensityUnits_t:
      LuminousIntensityUnitsNull=0
      LuminousIntensityUnitsUserDefined=1
      Candela=2
      Candle=3
      Carcel=4
      Hefner=5
      Violle=6

  ctypedef enum DataClass_t:
      DataClassNull=0
      DataClassUserDefined=1
      Dimensional=2
      NormalizedByDimensional=3
      NormalizedByUnknownDimensional=4
      NondimensionalParameter=5
      DimensionlessConstant=6

  ctypedef enum GoverningEquationsType_t:
      GoverningEquationsNull=0
      GoverningEquationsUserDefined=1
      FullPotential=2
      Euler=3
      NSLaminar=4
      NSTurbulent=5
      NSLaminarIncompressible=6
      NSTurbulentIncompressible=7

  ctypedef enum ModelType_t:
      ModelTypeNull=0
      ModelTypeUserDefined=1
      Ideal=2
      VanderWaals=3
      Constant=4
      PowerLaw=5
      SutherlandLaw=6
      ConstantPrandtl=7
      EddyViscosity=8
      ReynoldsStress=9
      ReynoldsStressAlgebraic=10
      Algebraic_BaldwinLomax=11
      Algebraic_CebeciSmith=12
      HalfEquation_JohnsonKing=13
      OneEquation_BaldwinBarth=14
      OneEquation_SpalartAllmaras=15
      TwoEquation_JonesLaunder=16
      TwoEquation_MenterSST=17
      TwoEquation_Wilcox=18
      CaloricallyPerfect=19
      ThermallyPerfect=20
      ConstantDensity=21
      RedlichKwong=22
      Frozen=23
      ThermalEquilib=24
      ThermalNonequilib=25
      ChemicalEquilibCurveFit=26
      ChemicalEquilibMinimization=27
      ChemicalNonequilib=28
      EMElectricField=29
      EMMagneticField=30
      EMConductivity=31
      Voltage=32
      Interpolated=33
      Equilibrium_LinRessler=34
      Chemistry_LinRessler=35

  ctypedef enum DataType_t:
      DataTypeNull=0
      DataTypeUserDefined=1
      Integer=2
      RealSingle=3
      RealDouble=4
      Character=5
      LongInteger=6
      
  ctypedef enum ZoneType_t:
      ZoneTypeNull=0
      ZoneTypeUserDefined=1
      Structured=2
      Unstructured=3
      
  ctypedef enum BCType_t:
      BCTypeNull=0
      BCTypeUserDefined=1
      BCAxisymmetricWedge=2
      BCDegenerateLine=3
      BCDegeneratePoint=4
      BCDirichlet=5
      BCExtrapolate=6
      BCFarfield=7
      BCGeneral=8
      BCInflow=9
      BCInflowSubsonic=10
      BCInflowSupersonic=11
      BCNeumann=12
      BCOutflow=13
      BCOutflowSubsonic=14
      BCOutflowSupersonic=15
      BCSymmetryPlane=16
      BCSymmetryPolar=17
      BCTunnelInflow=18
      BCTunnelOutflow=19
      BCWall=20
      BCWallInviscid=21
      BCWallViscous=22
      BCWallViscousHeatFlux=23
      BCWallViscousIsothermal=24
      FamilySpecified=25

  ctypedef enum RigidGridMotionType_t:
      RigidGridMotionTypeNull=0
      RigidGridMotionTypeUserDefined=1
      ConstantRate=2
      VariableRate=3

  ctypedef enum ArbitraryGridMotionType_t:
      ArbitraryGridMotionTypeNull=0
      ArbitraryGridMotionTypeUserDefined=1
      NonDeformingGrid=2
      DeformingGrid=3

  ctypedef enum SimulationType_t:
      SimulationTypeNull=0
      SimulationTypeUserDefined=1
      TimeAccurate=2
      NonTimeAccurate=3

  ctypedef enum WallFunctionType_t:
      WallFunctionTypeNull=0
      WallFunctionTypeUserDefined=1
      Generic=2

  ctypedef enum AreaType_t:
      AreaTypeNull=0
      AreaTypeUserDefined=1
      BleedArea=2
      CaptureArea=3

  ctypedef enum AverageInterfaceType_t:
      AverageInterfaceTypeNull=0
      AverageInterfaceTypeUserDefined=1
      AverageAll=2
      AverageCircumferential=3
      AverageRadial=4
      AverageI=5
      AverageJ=6
      AverageK=7
  
  ctypedef enum ElementType_t:
      ElementTypeNull=0
      ElementTypeUserDefined=1
      NODE=2
      BAR_2=3
      BAR_3=4
      TRI_3=5
      TRI_6=6
      QUAD_4=7
      QUAD_8=8
      QUAD_9=9
      TETRA_4=10
      TETRA_10=11
      PYRA_5=12
      PYRA_14=13
      PENTA_6=14
      PENTA_15=15
      PENTA_18=16
      HEXA_8=17
      HEXA_20=18
      HEXA_27=19
      MIXED=20
      PYRA_13=21
      NGON_n=22
      NFACE_n=23
      BAR_4=24
      TRI_9=25
      TRI_10=26
      QUAD_12=27
      QUAD_16=28
      TETRA_16=29
      TETRA_20=30
      PYRA_21=31
      PYRA_29=32
      PYRA_30=33
      PENTA_24=34
      PENTA_38=35
      PENTA_40=36
      HEXA_32=37
      HEXA_56=38
      HEXA_64=39
      
  ctypedef enum GridLocation_t:
      GridLocationNull=0
      GridLocationUserDefined=1
      Vertex=2
      CellCenter=3
      FaceCenter=4
      IFaceCenter=5
      JFaceCenter=6
      KFaceCenter=7
      EdgeCenter=8

  ctypedef enum PointSetType_t:
      PointSetTypeNull=0
      PointSetTypeUserDefined=1
      PointList=2
      PointListDonor=3
      PointRange=4
      PointRangeDonor=5
      ElementRange=6
      ElementList=7
      CellListDonor=8

  ctypedef enum BCDataType_t:
      BCDataTypeNull=0
      BCDataTypeUserDefined=1
      Dirichlet=2
      Neumann=3

  ctypedef enum GridConnectivityType_t :
      GridConnectivityTypeNull=0
      GridConnectivityTypeUserDefined=1
      Overset=2
      Abutting=3
      Abutting1to1=4           

  # ------------------------------------------------------------------------
  # Please keep one liners here so that we can use a grep to check list
  # Alphabetical sort (including return type)
  #

  char *cg_AngleUnitsName(AngleUnits_t vtype)
  char *cg_ArbitraryGridMotionTypeName(ArbitraryGridMotionType_t vtype)
  char *cg_AreaTypeName(AreaType_t vtype)
  char *cg_AverageInterfaceTypeName(AverageInterfaceType_t vtype)
  char *cg_BCDataTypeName(BCDataType_t vtype)
  char *cg_BCTypeName(BCType_t vtype)
  char *cg_DataClassName(DataClass_t vtype)
  char *cg_DataTypeName(DataType_t vtype)
  char *cg_ElectricCurrentUnitsName(ElectricCurrentUnits_t vtype)
  char *cg_ElementTypeName(ElementType_t vtype)
  char *cg_GoverningEquationsTypeName(GoverningEquationsType_t vtype)
  char *cg_GridConnectivityTypeName(GridConnectivityType_t vtype)
  char *cg_GridLocationName(GridLocation_t vtype)
  char *cg_LengthUnitsName(LengthUnits_t vtype)
  char *cg_LuminousIntensityUnitsName(LuminousIntensityUnits_t vtype)
  char *cg_MassUnitsName(MassUnits_t vtype)
  char *cg_ModelTypeName(ModelType_t vtype)
  char *cg_PointSetTypeName(PointSetType_t vtype)
  char *cg_RigidGridMotionTypeName(RigidGridMotionType_t vtype)
  char *cg_SimulationTypeName(SimulationType_t vtype)
  char *cg_SubstanceAmountUnitsName(SubstanceAmountUnits_t vtype)
  char *cg_TemperatureUnitsName(TemperatureUnits_t vtype)
  char *cg_TimeUnitsName(TimeUnits_t vtype)
  char *cg_WallFunctionTypeName(WallFunctionType_t vtype)
  char *cg_ZoneTypeName(ZoneType_t vtype)
  char *cg_get_error()
  int cg_1to1_average_read(int fn,int B,int Z,int I,AverageInterfaceType_t *A)
  int cg_1to1_average_write(int fn,int B,int Z,int I,AverageInterfaceType_t A)
  int cg_1to1_id(int fn,int B,int Z,int I,double *one21_id)
  int cg_1to1_periodic_read(int fn,int B,int Z,int I,float *Rc,float *Ra,float *T)
  int cg_1to1_periodic_write(int fn,int B,int Z,int I,float *Rc,float *Ra,float *T)
  int cg_1to1_read(int fn,int B,int Z,int I,char *connectname,char *donorname,cgsize_t *range,cgsize_t *donor_range,int *transform)
  int cg_1to1_read_global(int fn,int B,char **connectname,char **zonename,char **donorname,cgsize_t **range,cgsize_t **donor_range,int **transform)
  int cg_1to1_write(int fn,int B,int Z,char *connectname,char *donorname,cgsize_t *range,cgsize_t *donor_range,int *transform,int *I)
  int cg_ElementDataSize(int fn,int B,int Z,int S,cgsize_t *ElementDataSize)
  int cg_ElementPartialSize(int fn,int B,int Z,int S,cgsize_t start,cgsize_t end,cgsize_t *ElementDataSize)
  int cg_add_path(char *path)
  int cg_arbitrary_motion_read(int fn,int B,int Z,int A,char *name,ArbitraryGridMotionType_t *type)
  int cg_arbitrary_motion_write(int fn,int B,int Z,char *amotionname,ArbitraryGridMotionType_t type,int*A)
  int cg_array_info(int A,char *ArrayName,DataType_t *DataType,int *DataDimension,cgsize_t *DimensionVector)
  int cg_array_read(int A,void *Data)
  int cg_array_read_as(int A,DataType_t type,void *Data)
  int cg_array_write(char *ArrayName,DataType_t DataType,int DataDimension,cgsize_t *DimensionVector,void *Data)
  int cg_axisym_read(int fn,int B,float *ref_point,float *axis)
  int cg_axisym_write(int fn,int B,float *ref_point,float *axis)
  int cg_base_id(int fn,int B,double *base_id)
  int cg_base_read(int fn,int B,char *basename,int *cell_dim,int *phys_dim)
  int cg_base_write(int fn,char *basename,int cell_dim,int phys_dim,int *B)
  int cg_bc_area_read(int fn,int B,int Z,int BC,AreaType_t *AreaType,float *SurfaceArea,char *RegionName)
  int cg_bc_area_write(int fn,int B,int Z,int BC,AreaType_t AreaType,float SurfaceArea,char *RegionName)
  int cg_bc_wallfunction_read(int fn,int B,int Z,int BC,WallFunctionType_t *WallFunctionType)
  int cg_bc_wallfunction_write(int fn,int B,int Z,int BC,WallFunctionType_t WallFunctionType)
  int cg_bcdata_write(int fn,int B,int Z,int BC,int Dset,BCDataType_t BCDataType)
  int cg_bcdataset_info(int *n_dataset)
  int cg_bcdataset_read(int index,char *name,BCType_t *BCType,int *DirichletFlag,int *NeumannFlag)
  int cg_bcdataset_write(char *name,BCType_t BCType,BCDataType_t BCDataType)
  int cg_biter_read(int fn,int B,char *bitername,int *nsteps)
  int cg_biter_write(int fn,int B,char *bitername,int nsteps)
  int cg_boco_gridlocation_read(int fn,int B,int Z,int BC,GridLocation_t *location)
  int cg_boco_gridlocation_write(int fn,int B,int Z,int BC,GridLocation_t location)
  int cg_boco_id(int fn,int B,int Z,int BC,double *boco_id)
  int cg_boco_info(int fn,int B,int Z,int BC,char *boconame,BCType_t *bocotype,PointSetType_t *ptset_type,cgsize_t *npnts,int *NormalIndex,cgsize_t *NormalListFlag,DataType_t *NormalDataType,int *ndataset)
  int cg_boco_normal_write(int fn,int B,int Z,int BC,int *NormalIndex,int NormalListFlag,DataType_t NormalDataType,void *NormalList)
  int cg_boco_read(int fn,int B,int Z,int BC,cgsize_t *pnts,void *NormalList)
  int cg_boco_write(int fn,int B,int Z,char *boconame,BCType_t bocotype,PointSetType_t ptset_type,cgsize_t npnts,cgsize_t *pnts,int *BC)
  int cg_cell_dim(int fn,int B,int *cell_dim)
  int cg_close(int db)
  int cg_configure(int what, void *value)
  int cg_conn_average_read(int fn,int B,int Z,int I,AverageInterfaceType_t *AverageInterfaceType)
  int cg_conn_average_write(int fn,int B,int Z,int I,AverageInterfaceType_t AverageInterfaceType)
  int cg_conn_id(int fn,int B,int Z,int I,double *conn_id)
  int cg_conn_info(int fn,int B,int Z,int I,char *connectname,GridLocation_t *location,GridConnectivityType_t *type,PointSetType_t *ptset_type,cgsize_t *npnts,char *donorname,ZoneType_t *donor_zonetype,PointSetType_t *donor_ptset_type,DataType_t *donor_datatype,cgsize_t *ndata_donor)
  int cg_conn_periodic_read(int fn,int B,int Z,int I,float *RotationCenter,float *RotationAngle,float *Translation)
  int cg_conn_periodic_write(int fn,int B,int Z,int I,float *RotationCenter,float *RotationAngle,float *Translation)
  int cg_conn_read(int fn,int B,int Z,int I,cgsize_t *pnts,DataType_t donor_datatype,cgsize_t *donor_data)
  int cg_conn_read_short(int fn,int B,int Z,int I,cgsize_t *pnts)
  int cg_conn_write(int fn,int B,int Z,char *connectname,GridLocation_t location,GridConnectivityType_t type,PointSetType_t ptset_type,cgsize_t npnts,cgsize_t *pnts,char *donorname,ZoneType_t donor_zonetype,PointSetType_t donor_ptset_type,DataType_t donor_datatype,cgsize_t ndata_donor,cgsize_t *donor_data,int *I)
  int cg_conn_write_short(int fn,int B,int Z,char *connectname,GridLocation_t location,GridConnectivityType_t type,PointSetType_t ptset_type,cgsize_t npnts,cgsize_t *pnts,char *donorname,int *I)
  int cg_convergence_read(int *iterations,char **NormDefinitions)
  int cg_convergence_write(int iterations,char *NormDefinitions)
  int cg_conversion_info(DataType_t *DataType)
  int cg_conversion_read(void *ConversionFactors)
  int cg_conversion_write(DataType_t DataType,void *ConversionFactors)
  int cg_coord_id(int fn,int B,int Z,int C,double *coord_id)
  int cg_coord_info(int fn,int B,int Z,int C,DataType_t *type,char *coordname)
  int cg_coord_partial_write(int fn,int B,int Z,DataType_t type,char *coordname,cgsize_t *rmin,cgsize_t *rmax,void *coord_ptr,int *C)
  int cg_coord_read(int fn,int B,int Z,char *coordname,DataType_t type,cgsize_t *rmin,cgsize_t *rmax,void *coord)
  int cg_coord_write(int fn,int B,int Z,DataType_t type,char *coordname,void *coord_ptr,int *C)
  int cg_dataclass_read(DataClass_t *dataclass)
  int cg_dataclass_write(DataClass_t dataclass)
  int cg_dataset_read(int fn,int B,int Z,int BC,int DS,char *name,BCType_t *BCType,int *DirichletFlag,int *NeumannFlag)
  int cg_dataset_write(int fn,int B,int Z,int BC,char *name,BCType_t BCType,int *Dset)
  int cg_delete_node(char *node_name)
  int cg_descriptor_read(int descr_no,char *descr_name,char **descr_text)
  int cg_descriptor_write(char *descr_name,char *descr_text)
  int cg_diffusion_read(int *diffusion_model)
  int cg_diffusion_write(int *diffusion_model)
  int cg_discrete_ptset_info(int fn,int B,int Z,int D,PointSetType_t *ptset_type,cgsize_t *npnts)
  int cg_discrete_ptset_read(int fn,int B,int Z,int D,cgsize_t *pnts)
  int cg_discrete_ptset_write(int fn,int B,int Z,char *discrete_name,GridLocation_t location,PointSetType_t ptset_type,cgsize_t npnts,cgsize_t *pnts,int *D)
  int cg_discrete_read(int fn,int B,int Z,int D,char *discrete_name)
  int cg_discrete_size(int fn,int B,int Z,int D,int *data_dim,cgsize_t *dim_vals)
  int cg_discrete_write(int fn,int B,int Z,char *discrete_name,int *D)
  int cg_elements_partial_read(int fn,int B,int Z,int S,cgsize_t start,cgsize_t end,cgsize_t *elements,cgsize_t *parent_data)
  int cg_elements_partial_write(int fn,int B,int Z,int S,cgsize_t start,cgsize_t end,cgsize_t *elements)
  int cg_elements_read(int fn,int B,int Z,int S,cgsize_t *elements,cgsize_t *parent_data)
  int cg_equationset_chemistry_read(int *ThermalRelaxationFlag,int *ChemicalKineticsFlag)
  int cg_equationset_elecmagn_read(int *ElecFldModelFlag,int *MagnFldModelFlag,int *ConductivityModelFlag)
  int cg_equationset_read(int *EquationDimension,int *GoverningEquationsFlag,int *GasModelFlag,int *ViscosityModelFlag,int *ThermalConductivityModelFlag,int *TurbulenceClosureFlag,int *TurbulenceModelFlag)
  int cg_equationset_write(int EquationDimension)
  int cg_error_handler(void (*)(int, char *))
  int cg_expfull_read(void *exponents)
  int cg_expfull_write(DataType_t DataType,void *exponents)
  int cg_exponents_info(DataType_t *DataType)
  int cg_exponents_read(void *exponents)
  int cg_exponents_write(DataType_t DataType,void *exponents)
  int cg_fambc_read(int fn,int B,int F,int BC,char *fambc_name,BCType_t *bocotype)
  int cg_fambc_write(int fn,int B,int F,char *fambc_name,BCType_t bocotype,int *BC)
  int cg_family_name_read(int fn,int B,int F,int N,char *name,char *family)
  int cg_family_name_write(int fn,int B,int F,char *name,char *family)
  int cg_family_read(int fn,int B,int F,char *family_name,int *nboco,int *ngeos)
  int cg_family_write(int fn,int B,char *family_name,int *F)
  int cg_famname_read(char *family_name)
  int cg_famname_write(char *family_name)
  int cg_field_id(int fn,int B,int Z,int S,int F,double *field_id)
  int cg_field_info(int fn,int B,int Z,int S,int F,DataType_t *type,char *fieldname)
  int cg_field_partial_write(int fn,int B,int Z,int S,DataType_t dtype,char *fieldname,cgsize_t *rmin,cgsize_t *rmax,void *field_ptr,int *F)
  int cg_field_read(int fn,int B,int Z,int S,char *fieldname,DataType_t type,cgsize_t *rmin,cgsize_t *rmax,void *field_ptr)
  int cg_field_write(int fn,int B,int Z,int S,DataType_t type,char *fieldname,void *field_ptr,int *F)
  int cg_free(void *data)
  int cg_geo_read(int fn,int B,int F,int G,char *geo_name,char **geo_file,char *CAD_name,int *npart)
  int cg_geo_write(int fn,int B,int F,char *geo_name,char *filename,char *CADname,int *G)
  int cg_get_cgio(int fn, int *cgio_num)
  int cg_get_compress(int *compress)
  int cg_get_file_type(int fn, int *file_type)
  int cg_golist(int fn,int B,int depth,char **label,int *num)
  int cg_gopath(int fn,char *path)
  int cg_gorel(int fn,...)
  int cg_goto(int fn,int B,...)
  int cg_path_token(int index, const char *path, char *token)
  int cg_governing_read(GoverningEquationsType_t *EquationsType)
  int cg_governing_write(GoverningEquationsType_t Equationstype)
  int cg_gravity_read(int fn,int B,float *gravity_vector)
  int cg_gravity_write(int fn,int B,float *gravity_vector)
  int cg_grid_read(int fn,int B,int Z,int G,char *gridname)
  int cg_grid_write(int fn,int B,int Z,char *gridname,int *G)
  int cg_gridlocation_read(GridLocation_t *GridLocation)
  int cg_gridlocation_write(GridLocation_t GridLocation)
  int cg_hole_id(int fn,int B,int Z,int I,double *hole_id)
  int cg_hole_info(int fn,int B,int Z,int I,char *holename,GridLocation_t *location,PointSetType_t *ptset_type,int *nptsets,cgsize_t *npnts)
  int cg_hole_read(int fn,int B,int Z,int I,cgsize_t *pnts)
  int cg_hole_write(int fn,int B,int Z,char *holename,GridLocation_t location,PointSetType_t ptset_type,int nptsets,cgsize_t npnts,cgsize_t *pnts,int *I)
  int cg_index_dim(int fn,int B,int Z,int *index_dim)
  int cg_integral_read(int IntegralDataIndex,char *IntegralDataName)
  int cg_integral_write(char *IntegralDataName)
  int cg_is_cgns(char *filename, int *file_type)
  int cg_is_link(int *path_length)
  int cg_link_read(char **filename,char **link_path)
  int cg_link_write(char *nodename,char *filename,char *name_in_file)
  int cg_model_read(char *ModelLabel,ModelType_t *ModelType)
  int cg_model_write(char *ModelLabel,ModelType_t ModelType)
  int cg_multifam_read(int N,char *name,char *family)
  int cg_multifam_write(char *name,char *family)
  int cg_n1to1(int fn,int B,int Z,int *n1to1)
  int cg_n1to1_global(int fn,int B,int *n1to1_global)
  int cg_n_arbitrary_motions(int fn,int B,int Z,int *n_arbitrary_motions)
  int cg_n_rigid_motions(int fn,int B,int Z,int *n_rigid_motions)
  int cg_narrays(int *narrays)
  int cg_nbases(int db,int *nbases)
  int cg_nbocos(int fn,int B,int Z,int *nbocos)
  int cg_nconns(int fn,int B,int Z,int *nconns)
  int cg_ncoords(int fn,int B,int Z,int *ncoords)
  int cg_ndescriptors(int *ndescriptors)
  int cg_ndiscrete(int fn,int B,int Z,int *ndiscrete)
  int cg_nexponents(int *numexp)
  int cg_nfamilies(int fn,int B,int *nfamilies)
  int cg_nfamily_names(int fn,int B,int F,int *nnames)
  int cg_nfields(int fn,int B,int Z,int S,int *nfields)
  int cg_ngrids(int fn,int B,int Z,int *ngrids)
  int cg_nholes(int fn,int B,int Z,int *nholes)
  int cg_nintegrals(int *nintegrals)
  int cg_nmultifam(int *nfams)
  int cg_npe(ElementType_t type,int *npe)
  int cg_nsections(int fn,int B,int Z,int *nsections)
  int cg_nsols(int fn,int B,int Z,int *nsols)
  int cg_nsubregs(int fn,int B,int Z,int *nsubreg)
  int cg_nunits(int *nunits)
  int cg_nuser_data(int *nuser_data)
  int cg_nzconns(int fn,int B,int Z,int *nzconns)
  int cg_nzones(int fn,int B,int *nzones)
  int cg_open(char *name,int mode,int *db)
  int cg_ordinal_read(int *Ordinal)
  int cg_ordinal_write(int Ordinal)
  int cg_parent_data_partial_write(int fn,int B,int Z,int S,cgsize_t start,cgsize_t end,cgsize_t *ParentData)
  int cg_parent_data_write(int fn,int B,int Z,int S,cgsize_t *parent_data)
  int cg_part_read(int fn,int B,int F,int G,int P,char *part_name)
  int cg_part_write(int fn,int B,int F,int G,char *part_name,int *P)
  int cg_precision(int fn, int *precision)
  int cg_ptset_info(PointSetType_t *ptset_type,cgsize_t *npnts)
  int cg_ptset_read(cgsize_t *pnts)
  int cg_ptset_write(PointSetType_t ptset_type,cgsize_t npnts,cgsize_t *pnts)
  int cg_rigid_motion_read(int fn,int B,int Z,int R,char *name,RigidGridMotionType_t *type)
  int cg_rigid_motion_write(int fn,int B,int Z,char *name,RigidGridMotionType_t type,int *R)
  int cg_rind_read(int *RindData)
  int cg_rind_write(int *RindData)
  int cg_root_id(int fn, double *rootid)
  int cg_rotating_read(float *rot_rate,float *rot_center)
  int cg_rotating_write(float *rot_rate,float *rot_center)
  int cg_save_as(int fn, char *filename, int file_type,int follow_links)
  int cg_section_partial_write(int fn,int B,int Z,char *SectionName,ElementType_t type,cgsize_t start,cgsize_t end,int nbndry,int *S)
  int cg_section_read(int fn,int B,int Z,int S,char *SectionName,ElementType_t *type,cgsize_t *start,cgsize_t *end,int *nbndry,int *parent_flag)
  int cg_section_write(int fn,int B,int Z,char *SectionName,ElementType_t type,cgsize_t start,cgsize_t end,int nbndry,cgsize_t *elements,int *S)
  int cg_set_compress(int compress)
  int cg_set_file_type(int file_type)
  int cg_set_path(char *path)
  int cg_simulation_type_read(int fn,int B,SimulationType_t *type)
  int cg_simulation_type_write(int fn,int B,SimulationType_t type)
  int cg_sol_id(int fn,int B,int Z,int S,double *sol_id)
  int cg_sol_info(int fn,int B,int Z,int S,char *solname,GridLocation_t *location)
  int cg_sol_ptset_info(int fn,int B,int Z,int S,PointSetType_t *ptset_type,cgsize_t *npnts)
  int cg_sol_ptset_read(int fn,int B,int Z,int S,cgsize_t *pnts)
  int cg_sol_ptset_write(int fn,int B,int Z,char *solname,GridLocation_t location,PointSetType_t ptset_type,cgsize_t npnts,cgsize_t *pnts,int *S)
  int cg_sol_size(int fn,int B,int Z,int S,int *data_dim,cgsize_t *dim_vals)
  int cg_sol_write(int fn,int B,int Z,char *solname,GridLocation_t location,int *S)
  int cg_state_read(char **StateDescription)
  int cg_state_write(char *StateDescription)
  int cg_subreg_bcname_read(int fn,int B,int Z,int S,char *bcname)
  int cg_subreg_bcname_write(int fn,int B,int Z,char *regname,int dimension,char *bcname,int *S)
  int cg_subreg_gcname_read(int fn,int B,int Z,int S,char *gcname)
  int cg_subreg_gcname_write(int fn,int B,int Z,char *regname,int dimension,char *gcname,int *S)
  int cg_subreg_info(int fn,int B,int Z,int S,char *regname,int *dimension,GridLocation_t *location,PointSetType_t *ptset_type,cgsize_t *npnts,int *bcname_len,int *gcname_len)
  int cg_subreg_ptset_read(int fn,int B,int Z,int S,cgsize_t *pnts)
  int cg_subreg_ptset_write(int fn,int B,int Z,char *regname,int dimension,GridLocation_t location,PointSetType_t ptset_type,cgsize_t npnts,cgsize_t *pnts,int *S)
  int cg_units_read(MassUnits_t *mass,LengthUnits_t *length,TimeUnits_t *time,TemperatureUnits_t *temperature,AngleUnits_t *angle)
  int cg_units_write(MassUnits_t mass,LengthUnits_t length,TimeUnits_t time,TemperatureUnits_t temperature,AngleUnits_t angle)
  int cg_unitsfull_read (MassUnits_t *mass,LengthUnits_t *length,TimeUnits_t *time,TemperatureUnits_t *temperature,AngleUnits_t *angle,ElectricCurrentUnits_t *current,SubstanceAmountUnits_t *amount,LuminousIntensityUnits_t *intensity)
  int cg_unitsfull_write(MassUnits_t mass,LengthUnits_t length,TimeUnits_t time,TemperatureUnits_t temperature,AngleUnits_t angle,ElectricCurrentUnits_t current,SubstanceAmountUnits_t amount,LuminousIntensityUnits_t intensity)
  int cg_user_data_read(int Index,char *user_data_name)
  int cg_user_data_write(char *user_data_name)
  int cg_version(int db,float *v)
  int cg_where(int *fn,int *B,int *depth,char **label,int *num)
  int cg_zconn_get(int fn,int B,int Z,int *C)
  int cg_zconn_read(int fn,int B,int Z,int C,char *name)
  int cg_zconn_set(int fn,int B,int Z,int C)
  int cg_zconn_write(int fn,int B,int Z,char *name,int *C)
  int cg_ziter_read(int fn,int B,int Z,char *zitername)
  int cg_ziter_write(int fn,int B,int Z,char *zitername)
  int cg_zone_id(int fn,int B,int Z,double *zone_id)
  int cg_zone_read(int fn,int B,int Z,char *zonename,int *size)
  int cg_zone_type(int fn,int B,int Z,ZoneType_t *type)
  int cg_zone_write(int fn,int B,char *zonename,int *size,ZoneType_t type,int *Z)
  void cg_error_exit()
  void cg_error_print()

# --- last line
