Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A91C2F54
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xy58vScJSWMhSpWYamuN2NKUYHpu2rdxemaox3gjGew=; b=JN0aWKE7yd1efJ
	02ieUl1FUBajq3tneBJuF5wNuWaj4JsIWGE4N3B5/Esrye1ctuAMnkqCX2bBIqQTxOjZ1DdCwe8Pr
	W9WU5mDzIZrd/0GgBamJgyzlS3vwRdkICS0CHT3A+HBDMjRaBB0kagGdjLUDJvJ1IOVmZu7sS4clD
	UCUTSWAs7H0W+fYpXFkOLYqUMkotMAXWC6jOJclMvWviaaXlwsYCHp4AjpcZjVMYHkzdsODuYAFcb
	12XBJzHmHsb3qoZ8AgyxbOt2SBM2k4IGSVv2N1qnGuNuM/wa5f7l8MC4myQnOMtNOFK127Ff0ILaR
	JKWvosX2Dxb6sP+JFIQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDvx-00012i-F1; Tue, 01 Oct 2019 08:55:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDvp-00012M-T5
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:54:55 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4E4F2133F;
 Tue,  1 Oct 2019 08:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569920093;
 bh=szecxbNIyt9fQKdI3mGXWWqH6xc6Il8EeHjy2q22MmE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Dw4H4ZgGHfx/ZI6u+yBi43GwHZD0pDN+dtBIoa/0toBp0bJaCpdYHjNkGLCFAI9sf
 p885axzz4B5SVa572ab3PX675xVLqnNifp3CrsKEnCpiFERdRAknYwkpPY5g2i7kq1
 M36qcriDMmumSxbNIUz0jbiLSTvWluo3nA59W9Xg=
Date: Tue, 1 Oct 2019 09:54:46 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH] iio: adc: imx25-gcq: Variable could be uninitialized if
 regmap_read() fails
Message-ID: <20191001095446.17bc9cd8@archlinux>
In-Reply-To: <20190930074412.up4k6zdus4y7u4xb@pengutronix.de>
References: <20190928002852.28329-1-yzhai003@ucr.edu>
 <20190930074412.up4k6zdus4y7u4xb@pengutronix.de>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_015453_979935_5539701E 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: csong@cs.ucr.edu, Kate Stewart <kstewart@linuxfoundation.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, zhiyunq@cs.ucr.edu,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Yizhuo <yzhai003@ucr.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hartmut Knaack <knaack.h@gmx.de>, Shawn Guo <shawnguo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Sep 2019 09:44:12 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

> Hi Yizhuo,
> 
> thanks for your patch.
> 
> On 19-09-27 17:28, Yizhuo wrote:
> > In function mx25_gcq_irq(), local variable "stats" could
> > be uninitialized if function regmap_read() returns -EINVAL.
> > However, this value is used in if statement, which is
> > potentially unsafe. The same case applied to the variable
> > "data" in function mx25_gcq_get_raw_value() in the same file.  
> 
> IMHO the commit header should be something like: "iio: adc: imx25-gcq:
> fix uninitialized variable usage"...
> 
> and please add a fixes tag.
As with the others, before adding a fixes tag, please verify there
is an actual path to trigger this.

In this case it's an mmio regmap with no clock. For those, I'm not sure
if there is a failure path.

Still a worthwhile hardening / cleanup patch, but shouldn't be called
a fix or marked with a fixes tag because we don't want people to think
it is necessary to backport it.

Thanks,

Jonathan


> 
> > 
> > Signed-off-by: Yizhuo <yzhai003@ucr.edu>
> > ---
> >  drivers/iio/adc/fsl-imx25-gcq.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
> > index df19ecae52f7..dbf3e8e85aba 100644
> > --- a/drivers/iio/adc/fsl-imx25-gcq.c
> > +++ b/drivers/iio/adc/fsl-imx25-gcq.c
> > @@ -74,7 +74,10 @@ static irqreturn_t mx25_gcq_irq(int irq, void *data)
> >  	struct mx25_gcq_priv *priv = data;
> >  	u32 stats;
> >  
> > -	regmap_read(priv->regs, MX25_ADCQ_SR, &stats);
> > +	int ret = regmap_read(priv->regs, MX25_ADCQ_SR, &stats);  
> 
> Please don't do this. First declare the variable and then use it.
> 
> Regards,
>   Marco
> 
> > +
> > +	if (ret)
> > +		return ret;
> >  
> >  	if (stats & MX25_ADCQ_SR_EOQ) {
> >  		regmap_update_bits(priv->regs, MX25_ADCQ_MR,
> > @@ -121,7 +124,10 @@ static int mx25_gcq_get_raw_value(struct device *dev,
> >  		return -ETIMEDOUT;
> >  	}
> >  
> > -	regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
> > +	int ret = regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);
> > +
> > +	if (ret)
> > +		return ret;
> >  
> >  	*val = MX25_ADCQ_FIFO_DATA(data);
> >  
> > -- 
> > 2.17.1
> > 
> > 
> >   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
