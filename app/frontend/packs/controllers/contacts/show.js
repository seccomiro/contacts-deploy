import axios from "axios";

document.addEventListener("turbolinks:load", () => {
  const button = document.querySelector("#btn-load-phones");
  if (!button) return;

  const phoneList = document.querySelector("#phone-list");
  button.addEventListener("click", () => {
    button.textContent = "Loading...";
    const { url } = button.dataset;
    axios
      .get(url, {
        headers: {
          Accept: "application/json",
        },
      })
      .then((response) => {
        const phones = response.data;
        phoneList.innerHTML = "";
        phones.forEach((phone) => {
          phoneList.innerHTML += `<dd>${phone.number}</dd>`;
        });
      })
      .catch((error) => {
        console.log(error);
      });
  });
});
