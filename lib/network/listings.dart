class RentalListing {
  String? image;
  String? houseType;
  int? noOfBedRms;
  int?    rentalPrice;
  int?    noOfSchoolsNearBy;
  int?    noOfHospitalsNearBy;

  RentalListing({
    this.image,
    this.houseType,
    this.noOfBedRms,
    this.rentalPrice,
    this.noOfSchoolsNearBy,
    this.noOfHospitalsNearBy
  });
}

List<RentalListing> rentalListings = [
  RentalListing(
    image: '',
    houseType: 'Apartment',
    noOfBedRms: 2,
    rentalPrice: 35000,
    noOfHospitalsNearBy: 5,
    noOfSchoolsNearBy: 12,
  ),
  RentalListing(
    image: '',
    houseType: 'Apartment',
    noOfBedRms: 3,
    rentalPrice: 60000,
    noOfHospitalsNearBy: 2,
    noOfSchoolsNearBy: 10,
  ),
  RentalListing(
    image: '',
    houseType: 'Bungalow',
    noOfBedRms: 5,
    rentalPrice: 120000,
    noOfHospitalsNearBy: 7,
    noOfSchoolsNearBy: 4,
  ),
  RentalListing(
    image: '',
    houseType: 'Cottage',
    noOfBedRms: 4,
    rentalPrice: 10000,
    noOfHospitalsNearBy: 6,
    noOfSchoolsNearBy: 2,
  ),
  RentalListing(
    image: '',
    houseType: 'Apartment',
    noOfBedRms: 1,
    rentalPrice: 100000,
    noOfHospitalsNearBy: 4,
    noOfSchoolsNearBy: 1,
  ),
];