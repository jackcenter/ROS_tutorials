import matplotlib.pyplot as plt


def main():
    pub_sub_data_filename = "./data/pub_sub_times.txt"
    srv_client_data_filename = "./data/srv_client_times.txt"
    pub_sub_data = generate_list_of_data(pub_sub_data_filename)
    srv_client_data = generate_list_of_data(srv_client_data_filename)

    n_bins = 6
    plot_hist(pub_sub_data, n_bins, "Transfer Time Histogram:\nPublisher - Subscriber (300 Messages)")
    plot_hist(srv_client_data, n_bins, "Transfer Time Histogram:\nServer - Client (300 Requests)")

    plt.show()


def generate_list_of_data(filename):
    file = open(filename, "r")
    content = file.read()
    content_list = content.split("\n")
    data_list = [1000*float(i) for i in content_list if i]
    return data_list


def plot_hist(data, bins, title):
    plt.hist(data, bins=bins)
    plt.title(title)
    plt.ylabel('Counts')
    plt.xlabel('Time (ms)')
    plt.show()


if __name__ == "__main__":
    main()
