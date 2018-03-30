namespace JogoMemoria

import System
import System.Collections
import System.Drawing
import System.Windows.Forms
import System.Threading

partial class MainForm:
	
	default as string = "../../img/default.png"
	ok as string = "../../img/ok.jpg"
	boxs as List = []
	imgs as List = []
	vezJog as int = 1
	imgVirada as int = 0
	primeiraImg as PictureBox = null
	segundaImg as PictureBox = null
	primeiroPicture as int = 0
	r as int = 0
	
	public def constructor():
		InitializeComponent()
		carregaImagensTela()

	/*
	A função carregaImagensTela coloca todos os PictureBox dentro de uma lista
	chamada boxs, depois percorre essa lista setando as suas imagens como cartas
	viradas para baixo e deixando-as desabilitadas (ou seja, não respondem à
	ações feitas pelo mouse).
	*/
	public def carregaImagensTela():
		boxs.Add(pictureBox1)
		boxs.Add(pictureBox2)
		boxs.Add(pictureBox3)
		boxs.Add(pictureBox4)
		boxs.Add(pictureBox5)
		boxs.Add(pictureBox6)
		boxs.Add(pictureBox7)
		boxs.Add(pictureBox8)
		boxs.Add(pictureBox9)
		boxs.Add(pictureBox10)
		boxs.Add(pictureBox11)
		boxs.Add(pictureBox12)
		boxs.Add(pictureBox13)
		boxs.Add(pictureBox14)
		boxs.Add(pictureBox15)
		boxs.Add(pictureBox16)
		boxs.Add(pictureBox17)
		boxs.Add(pictureBox18)
		boxs.Add(pictureBox19)
		boxs.Add(pictureBox20)
		boxs.Add(pictureBox21)
		boxs.Add(pictureBox22)
		boxs.Add(pictureBox23)
		boxs.Add(pictureBox24)
		boxs.Add(pictureBox25)
		boxs.Add(pictureBox26)
		boxs.Add(pictureBox27)
		boxs.Add(pictureBox28)
		boxs.Add(pictureBox29)
		boxs.Add(pictureBox30)
		boxs.Add(pictureBox31)
		boxs.Add(pictureBox32)
		boxs.Add(pictureBox33)
		boxs.Add(pictureBox34)
		boxs.Add(pictureBox35)
		boxs.Add(pictureBox36)
		boxs.Add(pictureBox37)
		boxs.Add(pictureBox38)
		boxs.Add(pictureBox39)
		boxs.Add(pictureBox40)
		boxs.Add(pictureBox41)
		boxs.Add(pictureBox42)
		boxs.Add(pictureBox43)
		boxs.Add(pictureBox44)
		boxs.Add(pictureBox45)
		boxs.Add(pictureBox46)
		boxs.Add(pictureBox47)
		boxs.Add(pictureBox48)
		for b as PictureBox in boxs:
			atualizaImagem(b, -1)
			b.Enabled = false
	
	/*
	A função atualizaImagem é utilizada para alterar a imagem que está sendo exibida
	no PictureBox e alterar a sua Tag. Para virar a imagem para cima, passe o
	parâmetro i como 0, se quiser virar a carta para baixo, passe o valor -1 e caso
	essa imagem teve seu par encontrado, passe -2.
	*/
	public def atualizaImagem(b as PictureBox, i as int):
		if i == -2:
			b.Image = Image.FromFile(ok)
		elif i == -1:
			b.Image = Image.FromFile(default)
		else:
			b.Image = Image.FromFile(b.Text)
		b.Tag = i
	
	public def validar():
		//Verifica se essa imagem e a primeira que o jogador clicou são iguais
		if primeiraImg.Text == segundaImg.Text:
			//Verifica se é a vez do jogador 1
			if vezJog == 1:
				pontJog1.Text = Convert.ToString(int.Parse(pontJog1.Text) + 1)
			else:
				pontJog2.Text = Convert.ToString(int.Parse(pontJog2.Text) + 1)
			atualizaImagem(segundaImg, -2)
			atualizaImagem(primeiraImg, -2)
			if (int.Parse(pontJog1.Text)+int.Parse(pontJog2.Text)) == 24:
				if int.Parse(pontJog1.Text) > int.Parse(pontJog2.Text):
					lbStatus.Text = "Jogador 1 ganhou!"
				elif int.Parse(pontJog1.Text) < int.Parse(pontJog2.Text):
					lbStatus.Text = "Jogador 2 ganhou!"
				else:
					lbStatus.Text = "Empate!"
		else:
			if vezJog == 1:
				vezJog = 2
				lbStatus.Text = "Vez do Jogador 2"
			else:
				vezJog = 1
				lbStatus.Text = "Vez do Jogador 1"
			atualizaImagem(segundaImg, -1)
			atualizaImagem(primeiraImg, -1)
		imgVirada = 0
		primeiraImg = null
		primeiroPicture = 0
		
	public def viraImagem(i as int):
		//Verifica se tem duas imagens viradas para cima
		if imgVirada == 2:
			validar()
		else:
			//Verifica se o jogador não está clicando duas vezes no mesmo PictureBox
			if not i == primeiroPicture:
				b as PictureBox = boxs[i-1]
				//Verifica essa imagem ainda não teve seu par encontrado
				if not b.Tag == -2:
					//Verifica se a imagem está virada para baixo
					if b.Tag == -1:
						atualizaImagem(b, 0)
						imgVirada = imgVirada + 1			
						//Verifica se tem duas imagens viradas para cima
						if imgVirada == 2:
							segundaImg = b
						else:
							primeiraImg = b
							primeiroPicture = i
	
	private def PictureBox1Click(sender as object, e as System.EventArgs):
	    viraImagem(1)
	
	private def PictureBox2Click(sender as object, e as System.EventArgs):
		viraImagem(2)
		
	private def PictureBox3Click(sender as object, e as System.EventArgs):
	    viraImagem(3)
	
	private def PictureBox4Click(sender as object, e as System.EventArgs):
	    viraImagem(4)
	
	private def PictureBox5Click(sender as object, e as System.EventArgs):
	    viraImagem(5)
	
	private def PictureBox6Click(sender as object, e as System.EventArgs):
	    viraImagem(6)
	
	private def PictureBox7Click(sender as object, e as System.EventArgs):
	    viraImagem(7)
	
	private def PictureBox8Click(sender as object, e as System.EventArgs):
	    viraImagem(8)
	
	private def PictureBox9Click(sender as object, e as System.EventArgs):
	    viraImagem(9)
	
	private def PictureBox10Click(sender as object, e as System.EventArgs):
	    viraImagem(10)
	
	private def PictureBox11Click(sender as object, e as System.EventArgs):
	    viraImagem(11)
	
	private def PictureBox12Click(sender as object, e as System.EventArgs):
	    viraImagem(12)
	
	private def PictureBox13Click(sender as object, e as System.EventArgs):
	    viraImagem(13)
	
	private def PictureBox14Click(sender as object, e as System.EventArgs):
	    viraImagem(14)
	
	private def PictureBox15Click(sender as object, e as System.EventArgs):
	    viraImagem(15)
	
	private def PictureBox16Click(sender as object, e as System.EventArgs):
	    viraImagem(16)
	
	private def PictureBox17Click(sender as object, e as System.EventArgs):
	    viraImagem(17)
	
	private def PictureBox18Click(sender as object, e as System.EventArgs):
	    viraImagem(18)
	
	private def PictureBox19Click(sender as object, e as System.EventArgs):
	    viraImagem(19)
	
	private def PictureBox20Click(sender as object, e as System.EventArgs):
	    viraImagem(20)
	
	private def PictureBox21Click(sender as object, e as System.EventArgs):
	    viraImagem(21)
	
	private def PictureBox22Click(sender as object, e as System.EventArgs):
	    viraImagem(22)
	
	private def PictureBox23Click(sender as object, e as System.EventArgs):
	    viraImagem(23)
	
	private def PictureBox24Click(sender as object, e as System.EventArgs):
	    viraImagem(24)
	
	private def PictureBox25Click(sender as object, e as System.EventArgs):
	    viraImagem(25)
	
	private def PictureBox26Click(sender as object, e as System.EventArgs):
	    viraImagem(26)
	
	private def PictureBox27Click(sender as object, e as System.EventArgs):
	    viraImagem(27)
	
	private def PictureBox28Click(sender as object, e as System.EventArgs):
	    viraImagem(28)
	
	private def PictureBox29Click(sender as object, e as System.EventArgs):
	    viraImagem(29)
	
	private def PictureBox30Click(sender as object, e as System.EventArgs):
	    viraImagem(30)
	
	private def PictureBox31Click(sender as object, e as System.EventArgs):
	    viraImagem(31)
	
	private def PictureBox32Click(sender as object, e as System.EventArgs):
	    viraImagem(32)
	
	private def PictureBox33Click(sender as object, e as System.EventArgs):
	    viraImagem(33)
	
	private def PictureBox34Click(sender as object, e as System.EventArgs):
	    viraImagem(34)
	
	private def PictureBox35Click(sender as object, e as System.EventArgs):
	    viraImagem(35)
	
	private def PictureBox36Click(sender as object, e as System.EventArgs):
	    viraImagem(36)
	
	private def PictureBox37Click(sender as object, e as System.EventArgs):
	    viraImagem(37)
	
	private def PictureBox38Click(sender as object, e as System.EventArgs):
	    viraImagem(38)
	
	private def PictureBox39Click(sender as object, e as System.EventArgs):
	    viraImagem(39)
	
	private def PictureBox40Click(sender as object, e as System.EventArgs):
	    viraImagem(40)
	
	private def PictureBox41Click(sender as object, e as System.EventArgs):
	    viraImagem(41)
	
	private def PictureBox42Click(sender as object, e as System.EventArgs):
	    viraImagem(42)
	
	private def PictureBox43Click(sender as object, e as System.EventArgs):
	    viraImagem(43)
	
	private def PictureBox44Click(sender as object, e as System.EventArgs):
	    viraImagem(44)
	
	private def PictureBox45Click(sender as object, e as System.EventArgs):
	    viraImagem(45)
	
	private def PictureBox46Click(sender as object, e as System.EventArgs):
	    viraImagem(46)
	
	private def PictureBox47Click(sender as object, e as System.EventArgs):
	    viraImagem(47)
	
	private def PictureBox48Click(sender as object, e as System.EventArgs):
	    viraImagem(48)
	
	private def MainFormLoad(sender as object, e as System.EventArgs):
		pass
	
	public def sortearImagensTela():
		for b as PictureBox in boxs:
			atualizaImagem(b, -1)
			b.Text = null
		naoSort as int = 47
		for i in range (24):
			imgs.Add("../../img/"+(i+1)+".png")
			imgs.Add("../../img/"+(i+1)+".png")
		while naoSort >= 0:
			jaTemUma as bool = false
			sortDeNovo as bool = true
			while sortDeNovo:
				sortDeNovo = false
				r = Random().Next(naoSort)
				for b as PictureBox in boxs:
					if b.Text == imgs[r]:
						if jaTemUma:
							sortDeNovo = true
						else:
							jaTemUma = true
			b as PictureBox = boxs[naoSort]
			b.Image = Image.FromFile(imgs[r])
			b.Tag = 0
			b.Text = imgs[r]
			b.Enabled = true
			imgs.RemoveAt(r)
			naoSort = naoSort - 1
	
	private def BtIniciarClick(sender as object, e as System.EventArgs):
		pontJog1.Text = "0"
		pontJog2.Text = "0"
		btIniciar.Text = "Reiniciar Jogo"
		sortearImagensTela()
		Thread.Sleep(5000)
		for b as PictureBox in boxs:
			atualizaImagem(b, -1)
		lbStatus.Text = "Vez do Jogador 1"

[STAThread]
public def Main(argv as (string)) as void:
	Application.EnableVisualStyles()
	Application.SetCompatibleTextRenderingDefault(false)
	Application.Run(MainForm())

