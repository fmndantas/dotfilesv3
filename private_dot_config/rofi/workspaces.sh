opcoes()
{
  for opcao in $(ls ~/.screenlayout)
  do
    echo "$opcao"
  done
}

atender()
{
  bash "$HOME/.screenlayout/$1"
}

query=$(echo "$(opcoes)" | rofi -dmenu -p "Layouts de tela")

erro=$(atender $query 2>&1)

if [ -n "$erro" ]
then
  rofi -e "$erro"
fi
