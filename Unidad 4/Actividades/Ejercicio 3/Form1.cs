﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Practica3LabelYLinkLabel
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void labelEtiqueta1_MouseMove(object sender, MouseEventArgs e)
        {
            labelEtiqueta1.BackColor = Color.Cyan;
            labelEtiqueta1.Cursor = Cursors.Hand;
        }

        private void labelEtiqueta1_MouseLeave(object sender, EventArgs e)
        {
            labelEtiqueta1.BackColor = System.Drawing.SystemColors.Control;
            labelEtiqueta1.Cursor = Cursors.Arrow;
        }
    }
}
