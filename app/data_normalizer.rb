class DataNormalization
  # The purpose of this class is to cleanup information received from an external api about users
  def initialize
  end

  # input: :type - can be :sample, or :full and the output should be as given in input_sample
  #
  # The output of this function should be an array of hashes with 'cleaned' data. Each field is to be cleaned in a specific way
  #   email:
  #     - remove whitespace and downcase
  #     - If empty or nil, return nil
  #
  #   tags:
  #     - split by commas
  #     - remove empty/whitespace-only entries
  #     - downcase and strip whitespace from each tag
  #     - return as array of strings (empty array if no valid tags are found)
  #
  #   first_name/last_name:
  #     - Split the :full_name by spaces (after stripping whitespace)
  #     - If it contains more than 2 parts, first part is +first_name+, other parts joined by space are +last_name+
  #     - Capitalize each name: jOhn dOe => "John", "Doe"
  #
  #   slug:
  #     format full_name (lowercase, hyphen separated, only alphabets and numbers)
  #     If a slug is duplicated, add a numeric suffix like --1, or --2 etc
  #       - First occurrence = no suffix
  #       - Second = --1, third = --2, etc
  #
  def run(type = :sample)
    # Your code here
  end

  # Returns the sample input as expected. The expected output in this case will be:
  # [
  #   {
  #     email: "john.smith@example.com",
  #     first_name: "John", last_name: "Smith",
  #     tags: ["investor", "vip", "uk"],
  #     slug: 'john-smith'
  #   },
  #   {
  #     email: nil,
  #     first_name: "Hassan", last_name: "Abdul Rehman"
  #     tags: [],
  #     slug: 'hassan-abdul-rehman'
  #   }
  # ]
  #
  # NOTE: if slug is already present, there needs to be a number at the end like hassan-rehman-1, hassan-rehman-2
  #
  def input_sample
    [
      {
        full_name: " john SMITH ",
        email: " JOHN.SMITH@EXAMPLE.COM ",
        tags: "Investor, VIP, uk"
      },
      {
        full_name: "Hassan Abdul Rehman",
        email: "  ",
        tags: ""
      }
    ]
  end

  # Returns a larger sample with all the cases included
  def input_full
    [
      { full_name: "  john   SMITH ", email: "  JOHN.SMITH@EXAMPLE.COM ", tags: "Investor, VIP, uk" },
      { full_name: "Jane Doe", email: nil, tags: "" },
      { full_name: "a.b. clarke", email: "a.b.clarke@example.com", tags: "   " },
      { full_name: "  JANE  DOE  ", email: "  jane.doe@EXAMPLE.com  ", tags: "vip, investor,  " },
      { full_name: "Dr. Maria Elena De La Cruz", email: "MARIA @domain.COM ", tags: " LATAM, vip " },
      { full_name: "  ", email: "unknown@example.com", tags: "ghost" },
      { full_name: "Jane Doe", email: "jane.duplicate@example.com", tags: "test" }
      { full_name: "Bob a. joHnSoN", email: "BobAjOhNSon@mAIl . cOM", tags: "" },
      { full_name: "oLgA eleNA NGuYEN", email: nil, tags: "Partner, Test, VIP, Admin" },
      { full_name: "AMiR lA garCIa", email: "AMiRlAGARcia@DoMaIn.NET", tags: "Guest" },
      { full_name: "alice lA kHaN", email: " alICELAkhaN@eXAmpLe.Com ", tags: "Partner" },
      { full_name: "caRlos o'neiL smITh", email: " CARLOsOnEilSMItH@dOmAin.net ", tags: "" },
      { full_name: "rAJ van brown", email: nil, tags: "HighNetWorth, HighNetWorth" },
      { full_name: "ALICE b. johnsON", email: " aLicebjOHNsOn@teST.ORg ", tags: " prospect " },
      { full_name: "AKira Elena JOhNSon", email: " aKiraelENajOHnsON@TEsT.ORg ", tags: " Latam, UK " },
      { full_name: "  olgA o'neiL DoE   ", email: "olgaOnEILdOE@doMain.neT", tags: "Investor, VIP, prospect" },
      { full_name: "ZArA vAn PatEL", email: nil, tags: "Latam" }
    ]
  end
end
