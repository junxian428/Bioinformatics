#!/usr/bin/perl
use strict;
use warnings;

# Set up table of standard genetic code
my %standardgeneticcode = (
    "ttt" => "Phe", "ttc" => "Phe", "tta" => "Leu", "ttg" => "Leu", "ctt" => "Leu", "ctc" => "Leu", "cta" => "Leu", "ctg" => "Leu",
    "att" => "Ile", "atc" => "Ile", "ata" => "Ile", "atg" => "Met", "gtt" => "Val", "gtc" => "Val", "gta" => "Val", "gtg" => "Val",
    "tct" => "Ser", "tcc" => "Ser", "tca" => "Ser", "tcg" => "Ser", "tat" => "Tyr", "tac" => "Tyr", "taa" => "TER", "tag" => "TER",
    "cct" => "Pro", "ccc" => "Pro", "cca" => "Pro", "ccg" => "Pro", "cat" => "His", "cac" => "His", "caa" => "Gln", "cag" => "Gln",
    "act" => "Thr", "acc" => "Thr", "aca" => "Thr", "acg" => "Thr", "aat" => "Asn", "aac" => "Asn", "aaa" => "Lys", "aag" => "Lys",
    "gct" => "Ala", "gcc" => "Ala", "gca" => "Ala", "gcg" => "Ala", "gat" => "Asp", "gac" => "Asp", "gaa" => "Glu", "gag" => "Glu",
    "tgt" => "Cys", "tgc" => "Cys", "tga" => "TER", "tgg" => "Trp", "cgt" => "Arg", "cgc" => "Arg", "cga" => "Arg", "cgg" => "Arg",
    "agt" => "Ser", "agc" => "Ser", "aga" => "Arg", "agg" => "Arg", "ggt" => "Gly", "ggc" => "Gly", "gga" => "Gly", "ggg" => "Gly"
);

# Process input data
my $input_sequence = "atgcatccctttaat\ntctgtctga\n";  # Example input sequence
my @lines = split /\n/, $input_sequence;  # Split input into lines

foreach my $line (@lines) {
    chomp($line);
    my @triplets = $line =~ /(...)/g;  # Extract triplets from the sequence
    print(@triplets);
    print "\n";
    foreach my $codon (@triplets) {
        if (exists $standardgeneticcode{$codon}) {
            print "$standardgeneticcode{$codon} ";
        } else {
            print "Unknown ";  # Handle unknown codons gracefully
        }
    }
    print "\n";
}
