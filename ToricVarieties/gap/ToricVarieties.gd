#############################################################################
##
##  ToricVarieties.gd         ToricVarieties package
##
##  Copyright 2011- 2016, Sebastian Gutsche, TU Kaiserslautern
##                        Martin Bies,       ITP Heidelberg
##
#! @Chapter Toric Varieties
##
#############################################################################

#################################
##
## Global Variable
##
#################################

DeclareGlobalVariable( "TORIC_VARIETIES" );

#################################
##
#! @Section Toric variety: Category and Representations
##
#################################

#! @Description
#!  Checks if an object is a toric variety.
#! @Returns true or false
#! @Arguments M
DeclareCategory( "IsToricVariety",
                 IsObject );

#! @Description
#!  The <A>GAP</A> category of toric varieties.
#! @Arguments object
DeclareCategory( "IsCategoryOfToricVarieties",
                 IsHomalgCategory );

#! @Description
#!  This is a dummy to get immediate methods triggered at some times. It never has a value.
#! @Returns a ring
#! @Arguments vari
DeclareAttribute( "twitter",
                  IsToricVariety );

#################################
##
#! @Section Properties
##
#################################

#! @Description
#!  Checks if the toric variety <A>vari</A> is a normal variety.
#! @Returns true or false
#! @Arguments vari
DeclareProperty( "IsNormalVariety",
                  IsToricVariety );

#! @Description
#!  Checks if the toric variety <A>vari</A> is an affine variety.
#! @Returns true or false
#! @Arguments vari
DeclareProperty( "IsAffine",
                 IsToricVariety );

#! @Description
#!  Checks if the toric variety <A>vari</A> is a projective variety.
#! @Returns true or false
#! @Arguments vari
DeclareProperty( "IsProjective",
                 IsToricVariety );

#! @Description
#!  Checks if the toric variety <A>vari</A> is smooth.
#! @Returns true or false
#! @Arguments vari
DeclareProperty( "IsSmooth",
                 IsToricVariety );

#! @Description
#!  Checks if the toric variety <A>vari</A> is complete.
#! @Returns true or false
#! @Arguments vari
DeclareProperty( "IsComplete",
                 IsToricVariety );

#! @Description
#!  Checks if the toric variety <A>vari</A> has a torus factor.
#! @Returns true or false
#! @Arguments vari
DeclareProperty( "HasTorusfactor",
                 IsToricVariety );

#! @Description
#!  Checks if the toric variety <A>vari</A> has no torus factor.
#! @Returns true or false
#! @Arguments vari
DeclareProperty( "HasNoTorusfactor",
                 IsToricVariety );

#! @Description
#!  Checks if the toric variety <A>vari</A> has an orbifold, which is, in the toric case, equivalent to the 
#! simpliciality of the fan.
#! @Returns true or false
#! @Arguments vari
DeclareProperty( "IsOrbifold",
                 IsToricVariety );

#################################
##
#! @Section Attributes
##
#################################

#! @Description
#!  Returns a torus invariant affine open covering of the variety <A>vari</A>. The affine open cover is computed out of the
#!  cones of the fan.
#! @Returns a list
#! @Arguments vari
DeclareAttribute( "AffineOpenCovering",
                  IsToricVariety );

#! @Description
#!  Returns the Cox ring of the variety <A>vari</A>. The actual method requires
#!  a string with a name for the variables. A method for computing the Cox ring without
#!  a variable given is not implemented. You will get an error.
#! @Returns a ring
#! @Arguments vari
DeclareAttribute( "CoxRing",
                  IsToricVariety );

#! @Description
#!  Returns a list of the variables of the cox ring of the variety <A>vari</A>.
#! @Returns a list
#! @Arguments vari
DeclareAttribute( "ListOfVariablesOfCoxRing",
                  IsToricVariety );

#! @Description
#!  Returns the class group of the variety <A>vari</A> as factor of a free module.
#! @Returns a module
#! @Arguments vari
DeclareAttribute( "ClassGroup",
                  IsToricVariety );

#! @Description
#!  Returns the subgroup of the Weil divisor group of the variety <A>vari</A> generated by the torus invariant prime divisors.
#!  This is always a finitely generated free module over the integers.
#! @Returns a module
#! @Arguments vari
DeclareAttribute( "TorusInvariantDivisorGroup",
                  IsToricVariety );

#! @Description
#!  Returns a map which maps an element of the character group into the torus invariant Weil group of the variety <A>vari</A>.
#!  This has to be viewed as a help method to compute divisor classes.
#! @Returns a morphism
#! @Arguments vari
DeclareAttribute( "MapFromCharacterToPrincipalDivisor",
                  IsToricVariety );

#! @Description
#!  Returns a map which maps a Weil divisor into the class group.
#! @Returns a morphism
#! @Arguments vari
DeclareAttribute( "MapFromWeilDivisorsToClassGroup",
                  IsToricVariety );

#! @Description
#!  Returns the dimension of the variety <A>vari</A>.
#! @Returns an integer
#! @Arguments vari
DeclareAttribute( "Dimension",
                  IsToricVariety );

#! @Description
#!  Returns the dimension of the torus factor of the variety <A>vari</A>.
#! @Returns an integer
#! @Arguments vari
DeclareAttribute( "DimensionOfTorusfactor",
                  IsToricVariety );

#! @Description
#!  Returns the coordinate ring of the torus of the variety <A>vari</A>. This is by default done with the variables
#!  <A>x1</A> to <A>xn</A> where <A>n</A> is the dimension of the variety. To use a different set of variables, a convenience method
#!  is provided and described in the <A>methods</A> section.
#! @Returns a ring
#! @Arguments vari
DeclareAttribute( "CoordinateRingOfTorus",
                  IsToricVariety );

#! @Description
#!  Returns the list of variables in the coordinate ring of the torus of the variety <A>vari</A>.
#! @Returns a list
#! @Arguments vari
DeclareAttribute( "ListOfVariablesOfCoordinateRingOfTorus",
                  IsToricVariety );

#! @Description
#!  If the variety <A>vari</A> is a product of 2 or more varieties, the list contains those varieties.
#!  If it is not a product or at least not generated as a product, the list only contains the variety itself.
#! @Returns a list
#! @Arguments vari
DeclareAttribute( "IsProductOf",
                  IsToricVariety );

#! @Description
#!  The method returns the character lattice of the variety <A>vari</A>, computed as the containing grid of the 
#!  underlying convex object, if it exists.
#! @Returns a module
#! @Arguments vari
DeclareAttribute( "CharacterLattice",
                  IsToricVariety );

#! @Description
#!  The method returns a list of the torus invariant prime divisors of the variety <A>vari</A>.
#! @Returns a list
#! @Arguments vari
DeclareAttribute( "TorusInvariantPrimeDivisors",
                  IsToricVariety );

#! @Description
#!  Returns the irrelevant ideal of the Cox ring of the variety <A>vari</A>.
#! @Returns an ideal
#! @Arguments vari
DeclareAttribute( "IrrelevantIdeal",
                  IsToricVariety );

#! @Description
#!  Returns the Stanley-Reißner ideal of the Cox ring of the variety <A>vari</A>.
#! @Returns an ideal
#! @Arguments vari
DeclareAttribute( "SRIdeal",
                 IsToricVariety );

#! @Description
#!  The method returns the quotient morphism from the variety of the Cox ring to the variety <A>vari</A>.
#! @Returns a morphism
#! @Arguments vari
DeclareAttribute( "MorphismFromCoxVariety",
                  IsToricVariety );

#! @Description
#!  The method returns the Cox variety of the variety <A>vari</A>.
#! @Returns a variety
#! @Arguments vari
DeclareAttribute( "CoxVariety",
                  IsToricVariety );

#! @Description
#!  Returns the fan of the variety <A>vari</A>. This is set by default.
#! @Returns a fan
#! @Arguments vari
DeclareAttribute( "FanOfVariety",
                  IsToricVariety );

#! @Description
#!  Returns the the group of Cartier divisors of the variety <A>vari</A> as a subgroup of the divisor group.
#! @Returns a module
#! @Arguments vari
DeclareAttribute( "CartierTorusInvariantDivisorGroup",
                  IsToricVariety );

#! @Description
#!   Returns the Picard group of the variety <A>vari</A> as factor of a free module.
#! @Returns a module
#! @Arguments vari
DeclareAttribute( "PicardGroup",
                  IsToricVariety );

#! @Description
#!   Returns the name of the variety <A>vari</A> if it has one and it is known or can be computed.
#! @Returns a string
#! @Arguments vari
DeclareAttribute( "NameOfVariety",
                  IsToricVariety );

#! @Description
#!  This method returns a f. p. graded <A>S</A>-module (<A>S</A> being the Cox ring of the variety), such that the sheafification of 
#!  this module is the Zariski cotangent sheaf of <A>vari</A>.
#! @Returns a f.p. graded <A>S</A>-module
#! @Arguments vari
DeclareAttribute( "ZariskiCotangentSheaf",
                  IsToricVariety );

#! @Description
#!  This method returns a f. p. graded <A>S</A>-module (<A>S</A> being the Cox ring of the variety), such that the sheafification of
#!  this module is the cotangent sheaf of <A>vari</A>.
#! @Returns a f.p. graded <A>S</A>-module
#! @Arguments vari
DeclareAttribute( "CotangentSheaf",
                  IsToricVariety );

#! @Description
#!  This method computes the Euler characteristic of <A>vari</A>.
#! @Returns a non-negative integer
#! @Arguments vari
DeclareAttribute( "EulerCharacteristic",
                  IsToricVariety );

#################################
##
#! @Section Methods
##
#################################

#! @Description
#!  The method returns the underlying sheaf of the variety <A>vari</A>.
#! @Returns a sheaf
#! @Arguments vari
DeclareOperation( "UnderlyingSheaf",
                  [ IsToricVariety ] );

#! @Description
#!  Computes the coordinate ring of the torus of the variety <A>vari</A> with the variables <A>vars</A>. 
#!  The argument <A>vars</A> need to be a list of strings with length dimension or two times dimension.
#! @Returns a ring
#! @Arguments vari, vars
DeclareOperation( "CoordinateRingOfTorus",
                  [ IsToricVariety, IsList ] );

DeclareOperation( "CoordinateRingOfTorus",
                  [ IsToricVariety, IsStringRep ] );

#! @Description
#!  Computes the categorial product of the varieties <A>vari1</A> and <A>vari2</A>.
#! @Returns a variety
#! @Arguments vari1, vari2
DeclareOperation( "\*",
                  [ IsToricVariety, IsToricVariety ] );

#! @Description
#!  Computes the rational function corresponding to the character grid element <A>elem</A> or to the list of 
#!  integers <A>elem</A>. This computation needs to know the coordinate ring of the torus of the variety <A>vari</A>. By
#!  default this ring is introduced with variables <A>x1</A> to <A>xn</A> where <A>n</A> is the dimension of the variety. If
#!  different variables should be used, then <A>CoordinateRingOfTorus</A> has to be set accordingly before calling this method.
#! @Returns a homalg element
#! @Arguments elem, vari
DeclareOperation( "CharacterToRationalFunction",
                  [ IsHomalgElement, IsToricVariety ] );

DeclareOperation( "CharacterToRationalFunction",
                  [ IsList, IsToricVariety ] );

#! @Description
#!  Computes the Cox ring of the variety <A>vari</A>. <A>vars</A> needs to be a string. We allow for two
#! different formats. Either, it is a string which does not contain ",". Then this string will be index and
#! the resulting strings are then used as names for the variables of the Cox ring. Alternatively, one can also
#! use a string containing ",". In this case, a "," is considered as separator and one can provide individual
#! names for all variables of the Cox ring.
#! @Returns a ring
#! @Arguments vari, vars
DeclareOperation( "CoxRing",
                  [ IsToricVariety, IsList ] );

#! @Description
#!  Returns a list of the currently defined Divisors of the toric variety.
#! @Returns a list
#! @Arguments vari
DeclareOperation( "WeilDivisorsOfVariety",
                  [ IsToricVariety ] );

#! @Description
#!  Returns the fan of the variety <A>vari</A>. This is a rename for FanOfVariety.
#! @Returns a fan
#! @Arguments vari
DeclareOperation( "Fan",
                  [ IsToricVariety ] );

#! @Description
#!  
#! @Arguments vari
DeclareOperation( "Factors",
                  [ IsToricVariety ] );

#! @Description
#!  
#! @Arguments vari, p
DeclareOperation( "BlowUpOnIthMinimalTorusOrbit",
                  [ IsToricVariety, IsInt ] );

#! @Description
#!
DeclareGlobalFunction( "ZariskiCotangentSheafViaEulerSequence" );

#! @Description
#!
DeclareGlobalFunction( "ZariskiCotangentSheafViaPoincareResidueMap" );

#! @Description
#!  
#! @Arguments vari, p
DeclareOperation( "ithBettiNumber",
                  [ IsToricVariety, IsInt ] );

#! @Description
#!  
#! @Arguments vari, p
DeclareOperation( "NrOfqRationalPoints",
                  [ IsToricVariety, IsInt ] );

#################################
##
#! @Section Constructors
##
#################################

#! @Description
#!  
#! @Arguments vari
DeclareOperation( "ToricVariety",
                  [ IsToricVariety ] );


## I guess that this is a convenience method which internally turn the list into a convex object.
#! @Description
#!  
#! @Arguments vari
DeclareOperation( "ToricVariety",
                  [ IsList ] );

#! @Description
#!  Creates a toric variety out of the convex object <A>conv</A>.
#! @Returns a variety
#! @Arguments conv
DeclareOperation( "ToricVariety",
                  [ IsConvexObject ] );

#! @Description
#! Creates a toric variety from a list <A>rays</A> of ray generators and cones <A>cones</A>.
#! Beyond the functionality of the other methods, this constructor allows to assign specific 
#! gradings to the homogeneous variables of the Cox ring.
#! With respect to the order in which the rays appear in the list <A>rays</A>, we assign gradings
#! as provided by the third argument <A>degree_list</A> . The latter is a list of integers.
#! @Returns a variety
#! @Arguments rays, cones, degree_list
DeclareOperation( "ToricVariety",
                  [ IsList, IsList, IsList ] );

#! @Description
#! Creates a toric variety from a list <A>rays</A> of ray generators and cones <A>cones</A>.
#! Beyond the functionality of the other methods, this constructor allows to assign specific
#! gradings and homogeneous variable names to the ray generators of this toric variety.
#! With respect to the order in which the rays appear in the list <A>rays</A>, we assign gradings
#! and variable names as provided by the third and fourth argument. These are the list of gradings
#! <A>degree_list</A> and the list of variables names <A>var_list</A>. The former is a list of
#! integers and the latter a list of strings.
#! @Returns a variety
#! @Arguments rays, cones, degree_list, var_list
DeclareOperation( "ToricVariety",
                  [ IsList, IsList, IsList, IsList ] );
