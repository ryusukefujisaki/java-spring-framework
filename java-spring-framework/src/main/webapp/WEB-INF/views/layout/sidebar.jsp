<div id="sidebar">
  <ul class="nav flex-column nav-pills">
    <li class="nav-item">
      <a class="nav-link active" href="#" data-bs-toggle="pill">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" data-bs-toggle="pill">Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" data-bs-toggle="pill">Messages</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" data-bs-toggle="pill">Settings</a>
    </li>
  </ul>
</div>

<style>
  #sidebar {
    height: 100%;
    border-right: solid thin darkgray;
    padding: 33px 20px 0;
  }
  .nav-link, .nav-link:hover {
    font-size: 18px;
    color: #111;
  }
  .nav-pills .nav-link.active {
    color: #fff;
    background-color: #111;
    opacity: 0.9;
  }
</style>
