from Bio import SeqIO


class FastaCheck:
    """
    This is a class of fasta analysis
    """

    def __init__(self,
                 input_file=None):
        """
        Init method to check fasta file
        :param input_file:
        """
        self.input = input_file
        self.result = {}
        self.print_value = True

    def get_seq_id(self, input_file):
        """
        Method to read a fasta file and keep name and sequence information
        :param input_file:
        :return: a dictionnary with all informations
        """
        with open(input_file) as handle:
            for record in SeqIO.parse(handle, "fasta"):
                if self.print_value == True:
                    print(record.id)
                self.result[record.id] = record.seq

    def print_id(self):
        """
        print Seq name of fasta file
        :return: a list of seq name
        """
        print(self.result.keys())
        return self.result.keys()

    def print_seq(self):
        """
        print nucleotide sequence of fasta file
        :return: a list of sequences
        """

        print(self.result.items())
        return self.result.items()