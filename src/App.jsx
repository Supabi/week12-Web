import './App.css'

function App() {
  return (
    <div className="card">
      <span className="badge">CI/CD PIPELINE ACTIVE</span>
      <h1>React Web Application</h1>
      <h2>พัฒนาโดย Supaporn Phongphakt</h2>
      <p>
        ระบบอัปเดตหน้าเว็บนี้อัตโนมัติผ่าน <strong>GitHub Actions</strong>, 
        <strong> Docker Hub</strong> และรันบน <strong>AWS EC2</strong>
      </p>
      <div className="status-box">
        <span className="dot"></span>
        <span>Deployment Successful & Live</span>
      </div>
    </div>
  )
}

export default App