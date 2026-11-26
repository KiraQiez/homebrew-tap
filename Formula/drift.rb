class Drift < Formula
  include Language::Python::Virtualenv

  desc "Track changes in local development environments"
  homepage "https://github.com/KiraQiez/Drift"
  url "https://files.pythonhosted.org/packages/b0/a9/5a63faf9d638da9794623f4412cedd92ff3c01187d91d006835cd7151732/drift_dev_env-0.2.0.tar.gz"
  version "0.2.0"
  sha256 "96691806fbecadbaa4e976a11af5bdd4f9a31d0bd786e9de9bb5483f1cc63f0c"
  license "Apache-2.0"

  depends_on :macos
  depends_on "python@3.14"

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5e/b1/9530d6bee606979d54501adcc767d958a38929827f11a524b0d93429d2ad/annotated_doc-0.0.7-py3-none-any.whl", using: :nounzip
    sha256 "6bc31bbbec6dfaaedc1676dbc11dbda96fe22a2b5c400e9ebad113fec44a9dc6"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl", using: :nounzip
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "hatchling" do
    url "https://files.pythonhosted.org/packages/32/64/4afe5dd77b2939a93e8c9513f8082dbd049ecba9c1484a379a0f6ae29d6b/hatchling-1.33.0-py3-none-any.whl", using: :nounzip
    sha256 "415290b84f464d2884303fca8974d38e7b85579069fab02a15db0828fbb1446d"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/c9/31/5f0ac2f1a1c67423c995c731a11cd4ad05d081a2be969d74f868bdb9cc70/markdown_it_py-4.3.0-py3-none-any.whl", using: :nounzip
    sha256 "7aa1511a46c39138de78d9eba92ce47e63124d8003fc98b3a351909e04239efa"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl", using: :nounzip
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/ba/7b/5504f91c9c2733f693d7759e50ede5d27119d4da7e5836c46d3b5ff81d56/packaging-26.4-py3-none-any.whl", using: :nounzip
    sha256 "81383611a09c1bc0b08b76e0fd5829d7c6824c65b27a6aee339da133f4233ea2"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/f1/d9/7fb5aa316bc299258e68c73ba3bddbc499654a07f151cba08f6153988714/pathspec-1.1.1-py3-none-any.whl", using: :nounzip
    sha256 "a00ce642f577bf7f473932318056212bc4f8bfdf53128c78bbd5af0b9b20b189"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/40/9e/2b38731e0fc536806f16490e1a12d7f0dc2a1235aa8cc07bcc75416a7daa/pluggy-1.7.0-py3-none-any.whl", using: :nounzip
    sha256 "7dd7b0d8832ba3cb632c306926ded123429211b83641b35dc5c41ad2d34f9bec"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/8a/8c/824a686c4ba815ddb0722f9e66272088bccd4e1ae1d2f7015375e4a4fc7f/pydantic-2.14.4-py3-none-any.whl", using: :nounzip
    sha256 "653a2ad9f6d8858529c77c72717d0ea991d6c6837fe683246b2f4b2bbfc3fadc"
  end

  on_arm do
    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/5b/a6/5bc38ad74a5705bcfdf1fd4e2009a62638a45dc246e3b0fc8a86e8c9ff4b/pydantic_core-2.50.5-cp314-cp314-macosx_11_0_arm64.whl", using: :nounzip
      sha256 "e8fe516a4b3b06e4ff83b9adee4a786d28a617e5fb5fe90bda49fb6f52a5ac19"
    end
  end

  on_intel do
    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/91/86/570c4fedb8eeab9062032bc45875490090477fddce932328a20b9cb834ff/pydantic_core-2.50.5-cp314-cp314-macosx_10_12_x86_64.whl", using: :nounzip
      sha256 "00598ae680c6e4a17cda01910e49c0da8ce15610505e6c57cec3f15d83daef88"
    end
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/71/46/17f022dd3e953bf20a04a028a21ec746d942f8d2af30fa0f124fa0e6a684/pygments-2.21.0-py3-none-any.whl", using: :nounzip
    sha256 "2363c69b61c4a97c838da3b130dcd6468f4848992b21a82f2a63ec34377137d9"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl", using: :nounzip
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/e0/f9/0595336914c5619e5f28a1fb793285925a8cd4b432c9da0a987836c7f822/shellingham-1.5.4-py2.py3-none-any.whl", using: :nounzip
    sha256 "7ecfff8f2fd72616f7481040475a65b2bf8af90a56c89140852d1120324e8686"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/c3/49/6b0a22e69c844c0b18cb66c206bdd791693d0cf845badc5f84e6448f2192/tomlkit-0.15.3-py3-none-any.whl", using: :nounzip
    sha256 "a83ce6de3b648e68dd9b50aabadad749ba823eb58b1d026f3c0a283c4767a9c1"
  end

  resource "trove-classifiers" do
    url "https://files.pythonhosted.org/packages/30/81/0da8afb52a71d0a4f2bd3152357b1a441e393b286374802b9d3addab4ab5/trove_classifiers-2026.9.21.13-py3-none-any.whl", using: :nounzip
    sha256 "8b1ff4f9c191b1040b71c37f1e445ab99732911e3cd91de52838453a854d7a17"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/62/f3/864dcb0e165b52e9f75aa3c7e0aeeb9876f139c66eb14d87856bb173b0fa/typer-0.29.2-py3-none-any.whl", using: :nounzip
    sha256 "f30731f8ca758368b836b3714872e58e395cef8fcaff918c853b1969ed5274e7"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl", using: :nounzip
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/de/0c/ea2544850a7c135e15033a5c7a8e7211136184b7ae63e2239d557c2b3019/typing_inspection-0.4.5-py3-none-any.whl", using: :nounzip
    sha256 "bc210535442b39e1bf2805e0c7a17dfd6a4ace760c84c7f7d16245d23a6b1c39"
  end

  def install
    ENV["PIP_NO_INDEX"] = "1"
    venv = virtualenv_create(libexec, "python3.14", system_site_packages: false)
    resources.each do |resource|
      resource.stage do
        venv.pip_install(Dir["*.whl"].fetch(0), build_isolation: false)
      end
    end
    venv.pip_install_and_link(buildpath, build_isolation: false)
  end

  test do
    assert_equal "drift #{version}", shell_output("#{bin}/drift --version").strip
    assert_match "snapshot", shell_output("#{bin}/drift --help")
    system bin/"drift", "init"
    assert_path_exists testpath/"drift.toml"
  end
end
