Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B54F5F25
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 13:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeBEdphzOEG8LeuCAP2c9GO6Mf1jEFkdUVNhjIQ393Q=; b=eh2eVXT711qlm1
	75o3nJ6Z1V51CycI1ADwm8FJVmuODpgx9maRT1xV7X+CS24pJdvp37bMhYmre9j535yb4Qxhn8rNv
	FIscqfDl/Ui+yNP2A2x/VJz5AMaYNmTHGNUdLSD175u44QoxmlbHsAgA0nP8oJIRTDOuKVc2OKJEC
	7DdiZG1dnZhVdqnC51SoEtt3HrIBZIRrjPoaSud/FFZA9BJuOSniCVsEyNu7NsRBlGM4UDni2VTmY
	yi4brHJnpghq2RvJtdt9VepT+10Rzo8DCbEBNR1rKpVu5qwVAjWJ4jgE6ZaaResVh8hG19qFVllLK
	3zOp5QQjYYlyf+EPAO5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTQ0R-0004m7-12; Sat, 09 Nov 2019 12:38:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTQ0G-0004lm-Kh
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 12:38:10 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06D64207FF;
 Sat,  9 Nov 2019 12:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573303088;
 bh=XVnSugf5yeS7ju3H3HrhT5xXtiTNx1q/s0jgoUAsGv4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tFShlZ+MHSIVtUdT/SQsfFhOLvjUaLYC7RK2W+lkTkUSFHnZKDgN5BkhXbb4zm/vC
 KlWym7bieROGF/+wAlY0jO6KGCaLezuUph1781ZrIq2YCngy2YHPAcDwFNCXLiyHYq
 GuwZKBAM3s9CwEVBj/yeAmqpx4P9gr8C0O/VW7FU=
Date: Sat, 9 Nov 2019 12:38:03 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 2/2] iio: adc: stm32: allow to tune analog clock
Message-ID: <20191109123803.3c002877@archlinux>
In-Reply-To: <20191103123042.54c82559@archlinux>
References: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
 <1572279108-25916-3-git-send-email-fabrice.gasnier@st.com>
 <20191103123042.54c82559@archlinux>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_043808_716680_B0CFD2B7 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 3 Nov 2019 12:30:42 +0000
Jonathan Cameron <jic23@kernel.org> wrote:

> On Mon, 28 Oct 2019 17:11:48 +0100
> Fabrice Gasnier <fabrice.gasnier@st.com> wrote:
> 
> > Add new optional dt property to tune analog clock prescaler.
> > Driver looks for optional "st,max-clk-rate-hz", then computes
> > best approximation below that rate, using ADC internal prescaler.
> > 
> > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>  
> If the previous email I wrote on this got to anyone before I hit
> cancel, please ignore. Had completely failed to read the code correctly.
> 
> Anyhow this seems fine to me, but given there are a lot of existing
> clk related bindings I'd like to give a little longer for Rob to
> have a chance to take a look at the binding.
> 
> Give me a poke if I seem to have lost this in a week or so.

Applied to the togreg branch of iio.git. Shortly to be pushed out
as testing for the autobuilders to poke at it.

Thanks,

Jonathan

> 
> Thanks,
> 
> Jonathan
> 
> 
> 
> > ---
> >  drivers/iio/adc/stm32-adc-core.c | 16 +++++++++++++---
> >  1 file changed, 13 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> > index 20c626c..6537f4f 100644
> > --- a/drivers/iio/adc/stm32-adc-core.c
> > +++ b/drivers/iio/adc/stm32-adc-core.c
> > @@ -79,6 +79,7 @@ struct stm32_adc_priv_cfg {
> >   * @domain:		irq domain reference
> >   * @aclk:		clock reference for the analog circuitry
> >   * @bclk:		bus clock common for all ADCs, depends on part used
> > + * @max_clk_rate:	desired maximum clock rate
> >   * @booster:		booster supply reference
> >   * @vdd:		vdd supply reference
> >   * @vdda:		vdda analog supply reference
> > @@ -95,6 +96,7 @@ struct stm32_adc_priv {
> >  	struct irq_domain		*domain;
> >  	struct clk			*aclk;
> >  	struct clk			*bclk;
> > +	u32				max_clk_rate;
> >  	struct regulator		*booster;
> >  	struct regulator		*vdd;
> >  	struct regulator		*vdda;
> > @@ -141,7 +143,7 @@ static int stm32f4_adc_clk_sel(struct platform_device *pdev,
> >  	}
> >  
> >  	for (i = 0; i < ARRAY_SIZE(stm32f4_pclk_div); i++) {
> > -		if ((rate / stm32f4_pclk_div[i]) <= priv->cfg->max_clk_rate_hz)
> > +		if ((rate / stm32f4_pclk_div[i]) <= priv->max_clk_rate)
> >  			break;
> >  	}
> >  	if (i >= ARRAY_SIZE(stm32f4_pclk_div)) {
> > @@ -230,7 +232,7 @@ static int stm32h7_adc_clk_sel(struct platform_device *pdev,
> >  			if (ckmode)
> >  				continue;
> >  
> > -			if ((rate / div) <= priv->cfg->max_clk_rate_hz)
> > +			if ((rate / div) <= priv->max_clk_rate)
> >  				goto out;
> >  		}
> >  	}
> > @@ -250,7 +252,7 @@ static int stm32h7_adc_clk_sel(struct platform_device *pdev,
> >  		if (!ckmode)
> >  			continue;
> >  
> > -		if ((rate / div) <= priv->cfg->max_clk_rate_hz)
> > +		if ((rate / div) <= priv->max_clk_rate)
> >  			goto out;
> >  	}
> >  
> > @@ -655,6 +657,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
> >  	struct device *dev = &pdev->dev;
> >  	struct device_node *np = pdev->dev.of_node;
> >  	struct resource *res;
> > +	u32 max_rate;
> >  	int ret;
> >  
> >  	if (!pdev->dev.of_node)
> > @@ -731,6 +734,13 @@ static int stm32_adc_probe(struct platform_device *pdev)
> >  	priv->common.vref_mv = ret / 1000;
> >  	dev_dbg(&pdev->dev, "vref+=%dmV\n", priv->common.vref_mv);
> >  
> > +	ret = of_property_read_u32(pdev->dev.of_node, "st,max-clk-rate-hz",
> > +				   &max_rate);
> > +	if (!ret)
> > +		priv->max_clk_rate = min(max_rate, priv->cfg->max_clk_rate_hz);
> > +	else
> > +		priv->max_clk_rate = priv->cfg->max_clk_rate_hz;
> > +
> >  	ret = priv->cfg->clk_sel(pdev, priv);
> >  	if (ret < 0)
> >  		goto err_hw_stop;  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
