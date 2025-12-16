const form = document.getElementById("bookingForm");
const output = document.getElementById("output");

if (form) {
  form.addEventListener("submit", (e) => {
    e.preventDefault();

    const booking = {
      name: form.name.value,
      phone: form.phone.value,
      date: form.date.value,
      time: form.time.value,
      persons: form.persons.value,
      message: form.message.value || null
    };

    const list = JSON.parse(localStorage.getItem("bookings") || "[]");
    list.push(booking);
    localStorage.setItem("bookings", JSON.stringify(list));
    localStorage.setItem("lastBooking", JSON.stringify(booking));

    output.textContent = "Booking saved (demo).";
    form.reset();
  });
}

const adminOut = document.getElementById("adminOutput");
if (adminOut) {
  const list = JSON.parse(localStorage.getItem("bookings") || "[]");
  adminOut.textContent = list.length
    ? JSON.stringify(list, null, 2)
    : "No bookings yet.";
}
