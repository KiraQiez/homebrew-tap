class Seed < Formula
  include Language::Python::Virtualenv

  desc "Schema-aware synthetic data for development and testing"
  homepage "https://github.com/KiraQiez/Seed"
  url "https://files.pythonhosted.org/packages/cd/f2/81fb93ed12ff5bb5670f6275c434a8902d8326f5edd480f913bcb3fd8569/seed_dev_db-0.2.0.tar.gz"
  version "0.2.0"
  sha256 "f555f08ef07e014646560dc4c34c3e9cc0213e846cc2f00553a1c8401d093543"
  license "Apache-2.0"

  depends_on "python@3.14"
  on_macos do
    depends_on "libpq"
  end
  on_linux do
    depends_on arch: :x86_64
  end

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/5e/b1/9530d6bee606979d54501adcc767d958a38929827f11a524b0d93429d2ad/annotated_doc-0.0.7-py3-none-any.whl", using: :nounzip
    sha256 "6bc31bbbec6dfaaedc1676dbc11dbda96fe22a2b5c400e9ebad113fec44a9dc6"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/99/91/8acff4f5e50511b911bbccb72b8628a49c68ce14148cd9f6431094859a90/annotated_types-0.8.0-py3-none-any.whl", using: :nounzip
    sha256 "f072f4d804ea359e4eaf198b1af7a8b0943881a87f31bb764f8bf219bb9419e0"
  end

  resource "faker" do
    url "https://files.pythonhosted.org/packages/76/54/f1a9cf45b52014d221d8ef4b29f13df8e11fbd8dba854a075ac3f3b16dcf/faker-40.63.0-py3-none-any.whl", using: :nounzip
    sha256 "36627c20b575b4138f54b6c21f8703e9ab122fd487aca11319beec2aa6ca7232"
  end

  on_linux do
    resource "greenlet" do
      url "https://files.pythonhosted.org/packages/45/ac/28fa7a9e50f2859466214c4ac584d776db52c1604ad4dd158960a5af2a1f/greenlet-3.5.6-cp314-cp314-manylinux_2_24_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
      sha256 "9a09d59bef1db94f384b5bcc2d523694d338f3df6b757aeeaf7baca5d0c0be88"
    end
  end

  on_macos do
    on_intel do
      resource "greenlet" do
        url "https://files.pythonhosted.org/packages/66/c0/d254544ae2b8bdd311aef000fafc02828c2771b17d994b3075620ea7cc6e/greenlet-3.5.6-cp314-cp314-macosx_11_0_universal2.whl", using: :nounzip
        sha256 "8cddea1b8339451c2fb3388e138347b6126744f33b611bdb55b7357361cfef46"
      end
    end
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

  resource "psycopg" do
    url "https://files.pythonhosted.org/packages/52/5d/a7957d1b5484f8e5094a15b1a400929324f978b670bd4a95179e1a012ec2/psycopg-3.3.9-py3-none-any.whl", using: :nounzip
    sha256 "d2d7d04a1ce6dab4f5b27316bea3b52585cafa2f2d631e5b09dd69823f5c26f6"
  end

  on_linux do
    resource "psycopg-binary" do
      url "https://files.pythonhosted.org/packages/2a/d5/ba4839c38d9d35daa815cb18dfe462582f783ba83b9d932692bb903fba01/psycopg_binary-3.3.9-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.whl", using: :nounzip
      sha256 "4992acd5a7479013d52615b8c23fdce9bc22f3cacbfb1007fa474e6b5ebe94c7"
    end
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/8a/8c/824a686c4ba815ddb0722f9e66272088bccd4e1ae1d2f7015375e4a4fc7f/pydantic-2.14.4-py3-none-any.whl", using: :nounzip
    sha256 "653a2ad9f6d8858529c77c72717d0ea991d6c6837fe683246b2f4b2bbfc3fadc"
  end

  on_linux do
    resource "pydantic-core" do
      url "https://files.pythonhosted.org/packages/79/e3/df03dc4e10c460d37dad8921ec9c6f177bc33d4f2da808d5ae4d8f11acfe/pydantic_core-2.50.5-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.whl", using: :nounzip
      sha256 "88b543705849d0c59343f97c38296dbf59eb7b3c9565bd4fe1ed638ba38da5ed"
    end
  end

  on_macos do
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

  on_linux do
    resource "sqlalchemy" do
      url "https://files.pythonhosted.org/packages/22/a6/d2cb9911cfae073381235c7cf31d7bcac5d6e919a768fcd3932ba12fdca2/sqlalchemy-2.0.58-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl", using: :nounzip
      sha256 "b08475f3bcbf5f6c10654874601c8a8ef5b50e2c8c944d8cbf6a4d81618c2ba1"
    end
  end

  on_macos do
    on_arm do
      resource "sqlalchemy" do
        url "https://files.pythonhosted.org/packages/cf/e2/d62aeaf8ab3fb9d232c3fb7e92a785e44590786b7d28e8a9244f78f7f7c8/sqlalchemy-2.0.58-cp314-cp314-macosx_11_0_arm64.whl", using: :nounzip
        sha256 "4c8be3acd308171a252399801bba6c4fbabe6c596d9adbd4ea8d698bb9248325"
      end
    end
    on_intel do
      resource "sqlalchemy" do
        url "https://files.pythonhosted.org/packages/61/4a/32a002e26025be40cbbd979e77bcc27b6e3de37b26277eade76e82cc1e8b/sqlalchemy-2.0.58-py3-none-any.whl", using: :nounzip
        sha256 "cc1b78ba0ed1f32156d1582f94ca4aca74633e4dcdde3eb1562dd4742493f594"
      end
    end
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
    url "https://files.pythonhosted.org/packages/d9/43/a3e7ce867dc4fa852f4223ada99d29bc9ba5faf32496b63ec587cd10a0d7/typer-0.29.3-py3-none-any.whl", using: :nounzip
    sha256 "1fd37275046faecc86caa2e0e313978c10db71533fc0fe1a48f4e03a60efc23c"
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
    venv.pip_install(buildpath, build_isolation: false)
    if OS.mac?
      libpq = Formula["libpq"]
      (bin/"seed").write_env_script libexec/"bin/seed",
        PATH: "#{libpq.opt_bin}:$PATH", DYLD_LIBRARY_PATH: libpq.opt_lib
    else
      bin.install_symlink libexec/"bin/seed"
    end
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/seed --version").strip
    assert_match "export", shell_output("#{bin}/seed --help")
    system bin/"seed", "init"
    assert_path_exists testpath/"seed.toml"
  end
end
