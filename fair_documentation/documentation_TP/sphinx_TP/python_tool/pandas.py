import pandas as pd

class PandasCheck:
    """
    extract information from a csv file using pandas lib
    """
    def __init__(self,
                 input_file=None):
        """
        init class using input file and self panda dataframe
        :param input_file:
        """
        self.input_file = input_file
        self.panda_df = None

    def read_csv_file(self, input_file, separator: str, header_value: int):
        """
        Read a csv file using panda and return the dataframe
        :param input_file:
        :param separator:
        :param header_value:
        :return: panda class data type
        """
        read_file = pd.read_csv(input_file, sep=separator, header=header_value)
        self.panda_df = read_file
        return read_file

    def extract_sample_name(self, panda_dataframe, column_value):
        """
        extract sample name
        :param panda_dataframe:
        :param column_value:
        :return:
        """
        if panda_dataframe:
            return panda_dataframe.iloc[column_value]
        else:
            return self.panda_df.iloc[column_value]

    def extract_species_name(self, panda_dataframe, column_value):
        """
        extract sample name
        :param panda_dataframe:
        :param column_value:
        :return:
        """
        if panda_dataframe:
            return panda_dataframe.iloc[column_value]
        else:
            return self.panda_df.iloc[column_value]
    def extract_file_name(self, panda_dataframe, column_value):
        """
        extract sample name
        :param panda_dataframe:
        :param column_value:
        :return:
        """
        if panda_dataframe:
            return panda_dataframe.iloc[column_value]
        else:
            return self.panda_df.iloc[column_value]


test="/home/pierre/PycharmProjects/pythonProject/cgmlst/python_tool/test/pandas_file.csv"