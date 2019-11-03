Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10B9ED354
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 13:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBzei62nwRW8fw9ep2OSAI8xlxWCiwQDMA43jDb0Dgk=; b=i5gsd7noPIYIN5
	nuy1aN4nuhMfiLJfyWWVwIEFilezxZEvC1wHVUySsaByZWHeGcnmLJBoGgiP3pMUrHFOziDVFFLVW
	g4fte9TrlhgtKPJaEUvDAfrMB+2HhC0LOwrvkxAEXUdu0+O1AzUkxlMCyuTGymwkiJXnCBVXXSvXC
	p/l8zppJOlExFSlJ2CBzNyd9mnSAgGsXl9H95/eG+w6ff+UWO/GGhTlIhwYysPv8qzRJs3jKpys/U
	H5GnAB/L9WsyT6hq7y3RifEPfnQ8Mducn2cbNrIZ5Mw4E2BWbK2KO/AuJO0IjaeUC0EVY1yb1mzDd
	WdOL58rZIY1P5HKoinig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRF21-0006gP-EQ; Sun, 03 Nov 2019 12:30:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRF1s-0006g6-UW
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 12:30:50 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D73C20842;
 Sun,  3 Nov 2019 12:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572784248;
 bh=PNPF44YhCOUJNjbBKup8kBjb0LPnZL460Sat0XzGxQ0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zsRLQbpfkbDimsx8z0xKv1+ICJB4EipEgoeBKG6wcRvU9aRWy8ltG5qNC3vW4I1qW
 HSOzdxqWfeeHSf1ilBAUTI3i7ZbkjLK1dHmcQk9CahRHMm12XMjYI/HsVafHGFLwKX
 4nLYzNRARDPy8xoo2RLzzE/GEYpCwwCcIb7rYUzk=
Date: Sun, 3 Nov 2019 12:30:42 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 2/2] iio: adc: stm32: allow to tune analog clock
Message-ID: <20191103123042.54c82559@archlinux>
In-Reply-To: <1572279108-25916-3-git-send-email-fabrice.gasnier@st.com>
References: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
 <1572279108-25916-3-git-send-email-fabrice.gasnier@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_043049_028108_38C0BF19 
X-CRM114-Status: GOOD (  17.47  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, 28 Oct 2019 17:11:48 +0100
Fabrice Gasnier <fabrice.gasnier@st.com> wrote:

> Add new optional dt property to tune analog clock prescaler.
> Driver looks for optional "st,max-clk-rate-hz", then computes
> best approximation below that rate, using ADC internal prescaler.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
If the previous email I wrote on this got to anyone before I hit
cancel, please ignore. Had completely failed to read the code correctly.

Anyhow this seems fine to me, but given there are a lot of existing
clk related bindings I'd like to give a little longer for Rob to
have a chance to take a look at the binding.

Give me a poke if I seem to have lost this in a week or so.

Thanks,

Jonathan



> ---
>  drivers/iio/adc/stm32-adc-core.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/stm32-adc-core.c b/drivers/iio/adc/stm32-adc-core.c
> index 20c626c..6537f4f 100644
> --- a/drivers/iio/adc/stm32-adc-core.c
> +++ b/drivers/iio/adc/stm32-adc-core.c
> @@ -79,6 +79,7 @@ struct stm32_adc_priv_cfg {
>   * @domain:		irq domain reference
>   * @aclk:		clock reference for the analog circuitry
>   * @bclk:		bus clock common for all ADCs, depends on part used
> + * @max_clk_rate:	desired maximum clock rate
>   * @booster:		booster supply reference
>   * @vdd:		vdd supply reference
>   * @vdda:		vdda analog supply reference
> @@ -95,6 +96,7 @@ struct stm32_adc_priv {
>  	struct irq_domain		*domain;
>  	struct clk			*aclk;
>  	struct clk			*bclk;
> +	u32				max_clk_rate;
>  	struct regulator		*booster;
>  	struct regulator		*vdd;
>  	struct regulator		*vdda;
> @@ -141,7 +143,7 @@ static int stm32f4_adc_clk_sel(struct platform_device *pdev,
>  	}
>  
>  	for (i = 0; i < ARRAY_SIZE(stm32f4_pclk_div); i++) {
> -		if ((rate / stm32f4_pclk_div[i]) <= priv->cfg->max_clk_rate_hz)
> +		if ((rate / stm32f4_pclk_div[i]) <= priv->max_clk_rate)
>  			break;
>  	}
>  	if (i >= ARRAY_SIZE(stm32f4_pclk_div)) {
> @@ -230,7 +232,7 @@ static int stm32h7_adc_clk_sel(struct platform_device *pdev,
>  			if (ckmode)
>  				continue;
>  
> -			if ((rate / div) <= priv->cfg->max_clk_rate_hz)
> +			if ((rate / div) <= priv->max_clk_rate)
>  				goto out;
>  		}
>  	}
> @@ -250,7 +252,7 @@ static int stm32h7_adc_clk_sel(struct platform_device *pdev,
>  		if (!ckmode)
>  			continue;
>  
> -		if ((rate / div) <= priv->cfg->max_clk_rate_hz)
> +		if ((rate / div) <= priv->max_clk_rate)
>  			goto out;
>  	}
>  
> @@ -655,6 +657,7 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct device_node *np = pdev->dev.of_node;
>  	struct resource *res;
> +	u32 max_rate;
>  	int ret;
>  
>  	if (!pdev->dev.of_node)
> @@ -731,6 +734,13 @@ static int stm32_adc_probe(struct platform_device *pdev)
>  	priv->common.vref_mv = ret / 1000;
>  	dev_dbg(&pdev->dev, "vref+=%dmV\n", priv->common.vref_mv);
>  
> +	ret = of_property_read_u32(pdev->dev.of_node, "st,max-clk-rate-hz",
> +				   &max_rate);
> +	if (!ret)
> +		priv->max_clk_rate = min(max_rate, priv->cfg->max_clk_rate_hz);
> +	else
> +		priv->max_clk_rate = priv->cfg->max_clk_rate_hz;
> +
>  	ret = priv->cfg->clk_sel(pdev, priv);
>  	if (ret < 0)
>  		goto err_hw_stop;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
