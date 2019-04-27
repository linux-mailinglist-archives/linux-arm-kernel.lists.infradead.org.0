Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564DEB38A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 15:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hsaaSz1U2bNDrff3FuWrrwmatobc4hnzVaDHjsnQgE=; b=UjoS36/EgfhHkE
	mOc5JtI7CcNqbAVxzyDrm/d52bVHfBxW5BgUV3vXopvtM6KLHUSCoCeFcCLI/6il9+7JCAyhUYnln
	x2Q7sfkiRq//MeZzyehMLXOBtzYmVgLeKlQxMojxmtqCaPZDJtGiMsM468UJjhsfttR3bYB3IgtB7
	BM1yCITXSNNNKAL6q2B4VZIhTMXpTrXWUZGqTiOH3KCs7YAA4zXOksG3Gs73hQmUxdr9PvWb4IvIJ
	dkoF3nAsoU/LpaqegOj1qJanxxoxrQ1eiyu18htGEQXUDjiAGxKc8VIBNWBdXsofR3ArIWNEJ0OOP
	jLLLPSJXzyVzFI3pDOIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKN69-0001K0-G5; Sat, 27 Apr 2019 13:10:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKN61-0001JJ-T1
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 13:10:27 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B332B2146E;
 Sat, 27 Apr 2019 13:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556370625;
 bh=I/ov1ipXmDgyoqQOOE8Pk2e0WRg6v9my9N08LLlUspw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eqHrhqGcBidnV6RnOoR7ql0WlGs9ij1yHdOzqhNIgCr2hhKcYJgrpgJ7Grz87fR9t
 iekpGVg+xHBgbCmoqBtR1LGlyqeqlYJZG9GUNTQr101u8a2xYDFvTcSDUOhiwCe1sg
 iYFVxvN8bIIgZBAKasDFkBkcLruRrbX96XpvJjmo=
Date: Sat, 27 Apr 2019 14:10:19 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 2/2] iio: adc: stm32-dfsdm: missing error case during probe
Message-ID: <20190427141019.1a526679@archlinux>
In-Reply-To: <b46f9525-53c0-d874-c88f-c6e351736b04@st.com>
References: <1556110286-1526-1-git-send-email-fabien.dessenne@st.com>
 <1556110286-1526-3-git-send-email-fabien.dessenne@st.com>
 <b46f9525-53c0-d874-c88f-c6e351736b04@st.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_061025_956397_48996B08 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-iio@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 24 Apr 2019 14:55:28 +0200
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> On 4/24/19 2:51 PM, Fabien Dessenne wrote:
> > During probe, check the devm_ioremap_resource() error value.
> > Also return the devm_clk_get() error value instead of -EINVAL.
> > 
> > Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> > ---  
> 
> 
> Hi Fabien,
> 
> Acked-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

Thanks,

Jonathan

> 
> Thanks,
> Fabrice
> 
> >  drivers/iio/adc/stm32-dfsdm-core.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/iio/adc/stm32-dfsdm-core.c b/drivers/iio/adc/stm32-dfsdm-core.c
> > index 0a4d374..26e2011 100644
> > --- a/drivers/iio/adc/stm32-dfsdm-core.c
> > +++ b/drivers/iio/adc/stm32-dfsdm-core.c
> > @@ -233,6 +233,8 @@ static int stm32_dfsdm_parse_of(struct platform_device *pdev,
> >  	}
> >  	priv->dfsdm.phys_base = res->start;
> >  	priv->dfsdm.base = devm_ioremap_resource(&pdev->dev, res);
> > +	if (IS_ERR(priv->dfsdm.base))
> > +		return PTR_ERR(priv->dfsdm.base);
> >  
> >  	/*
> >  	 * "dfsdm" clock is mandatory for DFSDM peripheral clocking.
> > @@ -242,8 +244,10 @@ static int stm32_dfsdm_parse_of(struct platform_device *pdev,
> >  	 */
> >  	priv->clk = devm_clk_get(&pdev->dev, "dfsdm");
> >  	if (IS_ERR(priv->clk)) {
> > -		dev_err(&pdev->dev, "No stm32_dfsdm_clk clock found\n");
> > -		return -EINVAL;
> > +		ret = PTR_ERR(priv->clk);
> > +		if (ret != -EPROBE_DEFER)
> > +			dev_err(&pdev->dev, "Failed to get clock (%d)\n", ret);
> > +		return ret;
> >  	}
> >  
> >  	priv->aclk = devm_clk_get(&pdev->dev, "audio");
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
