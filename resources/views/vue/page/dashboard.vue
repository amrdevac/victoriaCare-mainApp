<template>
    <div class="position-relative overflow-hidden">
        <div class="row">
            <div class="col">
                <div class="container">
                    <div class="row" style="height: 100vh">
                        <div class="col-12 mt-5">
                            <h2 style="font-weight: bolder">
                                Data Penjualan
                            </h2>
                            <table class="table bg-white rounded-1 p-2 border table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Kode Barang</th>
                                        <th>Nama Barang</th>
                                        <th>Kostumer</th>
                                        <th>QTY</th>
                                        <th>Harga</th>
                                        <th>Netto</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="(penjualan, i) in in_penjualan" :key="i">
                                        <td>{{ i+ 1}}</td>
                                        <td>{{ penjualan.kd_barang }}</td>
                                        <td>{{ penjualan.nama_barang }}</td>
                                        <td>{{ penjualan.customer }}</td>
                                        <td>{{ penjualan.qty }}</td>
                                        <td>{{ penjualan.harga }}</td>
                                        <td>{{ penjualan.netto }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

export default {
    data() {
        return {
            user: [],
            in_penjualan: [],
        };
    },
    mounted() {
        this.loadUser();
        this.loadPenjualan();
    },
    methods: {
        loadUser() {
            this.user = window.user;
        },
        loadPenjualan() {
            axios.get("/api/penjualan")
                .then((response) => {
                    console.log(response);
                    this.in_penjualan = response.data.data
                }).catch((response) => {
                    localStorage.removeItem("secondary_app_token")
                    window.location="/";
                })
        },
        logout() {
            axios.post("/logout").then(() => {
                window.location = "/";
            });
        },
    },
};
</script>
