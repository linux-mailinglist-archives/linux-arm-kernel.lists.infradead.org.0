Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B44672D38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mhy/x+8cJpj0DnDzTNy5j0hhebi3m8a3GR+HPELkqz4=; b=fORpOYlBd2Xb3+
	QBjMLm+NT9XNVCAuGXMnaopwdvwgt0ol0R0m/4i8pgibbNLApKtymDMtuNE/UaNSeEqWulTXsPNIg
	Sxzc6smYBJvdovpOfudJVEjytZkdJrXk7FIi3J9yzZGxkuZu5kK65GI+6Npv9CtfvaAxqh4ER0U+L
	aChincXVo6TKkfLjsEnheRKsknIL6b1e+UDyrYHx4KokIYe4rrw56mDE/dSX0JMj+Lwoq8rw11c8E
	2blCaAjEazx4+WY24lF61KDK2dvqSnNJSCJMulT3LRI6Xs0QfqfWCX4lSXw5HKJJRAuQbxf7nO2A6
	bZaRXGRSOKFPCcTFVn0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFFM-0003gz-3Q; Wed, 24 Jul 2019 11:15:48 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFFC-0003g7-Rd
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:15:40 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45tt5f53nWzB2;
 Wed, 24 Jul 2019 13:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1563966855; bh=crDZnb4rV8/+4rBFzlZzmE/TiuO2diLzt3XIkj43td8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Sy0CeVBfsAKf0dtgAo84JCRBVfk8gIgp5Anqp5044H+b8+Z/I4qEE/74pK05vjBfn
 pPH5PTLmXhd//3tZZvFaqV9fW2XoRBhath5fodRr2zZlZ0sN2CPLY4hDVbzffu4BHc
 xDT1gOKCrGLxynD+l/IC+kppwWb7oeF84Roos0RqSOKKLvqvk/FOD55RYMOeHzaKeB
 2jx/IcWQ3xEi7troETWolsKRGGWBLlM3om1Cn2NwXj42izuFGKmyZFrVaJ5vSQtJfp
 l/KrwI1RdumQbqo8UEiGWSVP2G5JGUEM1+lJ16OCalkxj9T2ekMeqgJM9a609IjgRv
 dG+l3A4ZE+ilQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Wed, 24 Jul 2019 13:15:33 +0200
From: mirq-linux@rere.qmqm.pl
To: Codrin.Ciubotariu@microchip.com
Subject: Re: [PATCH 2/5] ASoC: atmel_ssc_dai: rework DAI format configuration
Message-ID: <20190724111533.GA23736@qmqm.qmqm.pl>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ff244c1b626fc9c63b4a1fa4e09eeaa579e683d9.1563819483.git.mirq-linux@rere.qmqm.pl>
 <df304453-575f-5925-8d09-f6094c55f8be@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df304453-575f-5925-8d09-f6094c55f8be@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_041539_231192_ECE0CEEB 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, alexandre.belloni@bootlin.com,
 lgirdwood@gmail.com, tiwai@suse.com, Ludovic.Desroches@microchip.com,
 broonie@kernel.org, perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:35:29AM +0000, Codrin.Ciubotariu@microchip.com w=
rote:
> On 22.07.2019 21:27, Micha=B3 Miros=B3aw wrote:
> > Rework DAI format calculation in preparation for adding more formats
> > later.
> > =

> > Note: this changes FSEDGE to POSITIVE for I2S CBM_CFS mode as the TXSYN
> > interrupt is not used anyway.
> > =

> > Signed-off-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
> > ---
> >   sound/soc/atmel/atmel_ssc_dai.c | 283 +++++++++-----------------------
> >   1 file changed, 79 insertions(+), 204 deletions(-)
> > =

> > diff --git a/sound/soc/atmel/atmel_ssc_dai.c b/sound/soc/atmel/atmel_ss=
c_dai.c
> > index 6f89483ac88c..b2992496e52f 100644
> > --- a/sound/soc/atmel/atmel_ssc_dai.c
> > +++ b/sound/soc/atmel/atmel_ssc_dai.c
[...]
> > +	if (atmel_ssc_cbs(ssc_p)) {
> > +		/*
> > +		 * SSC provides BCLK
> > +		 *
> > +		 * The SSC transmit and receive clocks are generated from the
> > +		 * MCK divider, and the BCLK signal is output
> > +		 * on the SSC TK line.
> > +		 */
> > +		rcmr |=3D	  SSC_BF(RCMR_CKS, SSC_CKS_DIV)
> > +			| SSC_BF(RCMR_CKO, SSC_CKO_NONE);
> > +
> > +		tcmr |=3D	  SSC_BF(TCMR_CKS, SSC_CKS_DIV)
> > +			| SSC_BF(TCMR_CKO, SSC_CKO_CONTINUOUS);
> > +	} else {
> > +		rcmr |=3D	  SSC_BF(RCMR_CKS, ssc->clk_from_rk_pin ?
> > +					SSC_CKS_PIN : SSC_CKS_CLOCK)
> > +			| SSC_BF(RCMR_CKO, SSC_CKO_NONE);
> > +
> > +		tcmr |=3D	  SSC_BF(TCMR_CKS, ssc->clk_from_rk_pin ?
> > +					SSC_CKS_CLOCK : SSC_CKS_PIN)
> > +			| SSC_BF(TCMR_CKO, SSC_CKO_NONE);
> > +	}
> > +
> > +	rcmr |=3D	  SSC_BF(RCMR_PERIOD, rcmr_period)
> > +		| SSC_BF(RCMR_CKI, SSC_CKI_RISING);
> =

> You can also add here SSC_BF(RCMR_CKO, SSC_CKO_NONE) and remove it from =

> the if-else above;

I left it to keep symmetry between TX and RX code. I can pull it here if
you prefer that way.

> > +
> > +	tcmr |=3D   SSC_BF(TCMR_PERIOD, tcmr_period)
> > +		| SSC_BF(TCMR_CKI, SSC_CKI_FALLING);
> > +
> > +	rfmr =3D    SSC_BF(RFMR_FSLEN_EXT, fslen_ext)
> > +		| SSC_BF(RFMR_FSEDGE, SSC_FSEDGE_POSITIVE)
> > +		| SSC_BF(RFMR_FSOS, fs_osync)
> > +		| SSC_BF(RFMR_FSLEN, fslen)
> > +		| SSC_BF(RFMR_DATNB, (channels - 1))
> > +		| SSC_BIT(RFMR_MSBF)
> > +		| SSC_BF(RFMR_LOOP, 0)
> > +		| SSC_BF(RFMR_DATLEN, (bits - 1));
> > +
> > +	tfmr =3D    SSC_BF(TFMR_FSLEN_EXT, fslen_ext)
> > +		| SSC_BF(TFMR_FSEDGE, SSC_FSEDGE_POSITIVE)
> > +		| SSC_BF(TFMR_FSDEN, 0)
> > +		| SSC_BF(TFMR_FSOS, fs_osync)
> > +		| SSC_BF(TFMR_FSLEN, fslen)
> > +		| SSC_BF(TFMR_DATNB, (channels - 1))
> > +		| SSC_BIT(TFMR_MSBF)
> > +		| SSC_BF(TFMR_DATDEF, 0)
> > +		| SSC_BF(TFMR_DATLEN, (bits - 1));
> > +
> > +	if (fslen_ext && !ssc->pdata->has_fslen_ext) {
> > +		dev_err(dai->dev, "sample size %d is too large for SSC device\n",
> > +			bits);
> > +		return -EINVAL;
> > +	}
> > +
> >   	pr_debug("atmel_ssc_hw_params: "
> >   			"RCMR=3D%08x RFMR=3D%08x TCMR=3D%08x TFMR=3D%08x\n",
> >   			rcmr, rfmr, tcmr, tfmr);
> > =

> =

> You are adding support for SND_SOC_DAIFMT_DSP_A | =

> SND_SOC_DAIFMT_CBM_CFS. If this is intended, please make a separate =

> patch. If not, then:
> =

> printk(KERN_WARNING "atmel_ssc_dai: unsupported DAI format 0x%x\n",
> 			ssc_p->daifmt);
> return -EINVAL;

Hmm. I guess this is actually a good side effect. I can't see a way to
contain this change that doesn't involve adding code that's immediately
removed in next patch. So would you agree to just mentioning this in
commit message?

Best Regards,
Micha=B3 Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
