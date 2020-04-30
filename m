Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3BC1BFE59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10052Fiz6eogedHrRj+ZvczAlhkn1JccW/AdEq6L2Po=; b=vBd7l/wc0YpGOk
	G7rb41+qls4ZOZD9x6Dkf2U6Dx/BWksYitTXZBqZUehhnyTsTtuocUOiUQP3l02ZlrtQ6eUUccpam
	Z4vD1nSmQhkg7BvN///8VQVvIrrpJd14O5/S0eAD9lAJAb7GeeIjVSLmlmHLcUDTpMf7DuPngQPlA
	QOvowLJ0ReSZD2mjDjrGWMc2CHpZk1CA8No7V+D8YOnaqB1GqCEjDRd7iVMkgesJLY7c0bacsRepU
	iNsc58UaK0BssU3aTcWMr8z0h4VRMf1Ac/vRa+yzOHoMb/tZnetV73mB7Yy1cZvfttFG9CLZXwnPV
	wEdWOGRH3UmIompwyuSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAFB-0003cE-G0; Thu, 30 Apr 2020 14:32:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAF2-0003aH-9V
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:32:45 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jUAEo-0008MV-Bh; Thu, 30 Apr 2020 16:32:30 +0200
Message-ID: <5e1f804c4c27927d10b2283747c1cae6606abe7c.camel@pengutronix.de>
Subject: Re: [RFC PATCH 1/4] drm/etnaviv: Prevent IRQ triggering at probe
 time on i.MX8MM
From: Lucas Stach <l.stach@pengutronix.de>
To: Schrempf Frieder <frieder.schrempf@kontron.de>, Adam Ford
 <aford173@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, Christian Gmeiner
 <christian.gmeiner@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>, Fabio
 Estevam <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, Li
 Jun <jun.li@nxp.com>,  NXP Linux Team <linux-imx@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Russell King <linux+etnaviv@armlinux.org.uk>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, "S.j. Wang"
 <shengjiu.wang@nxp.com>
Date: Thu, 30 Apr 2020 16:32:27 +0200
In-Reply-To: <20200430124602.14463-2-frieder.schrempf@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-2-frieder.schrempf@kontron.de>
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_073244_329734_AF5728A9 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Frieder,

Am Donnerstag, den 30.04.2020, 12:46 +0000 schrieb Schrempf Frieder:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> On i.MX8MM there is an interrupt getting triggered immediately after
> requesting the IRQ, which leads to a stall as the handler accesses
> the GPU registers whithout the clock being enabled.
> 
> Enabling the clocks briefly seems to clear the IRQ state, so we do
> this before requesting the IRQ.

This is most likely caused by improper power-up sequencing. Normally
the GPC will trigger a hardware reset of the modules inside a power
domain when the domain is powered on. This requires the clocks to be
running at this point, as those resets are synchronous, so need clock
pulses to propagate through the hardware.

From what I see the i.MX8MM is still missing the power domain
controller integration, but I'm pretty confident that this problem
should be solved in the power domain code, instead of the GPU driver.

Regards,
Lucas

> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  drivers/gpu/drm/etnaviv/etnaviv_gpu.c | 29 ++++++++++++++++++++-----
> --
>  1 file changed, 22 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> index a31eeff2b297..23877c1f150a 100644
> --- a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
> @@ -1775,13 +1775,6 @@ static int etnaviv_gpu_platform_probe(struct
> platform_device *pdev)
>  		return gpu->irq;
>  	}
>  
> -	err = devm_request_irq(&pdev->dev, gpu->irq, irq_handler, 0,
> -			       dev_name(gpu->dev), gpu);
> -	if (err) {
> -		dev_err(dev, "failed to request IRQ%u: %d\n", gpu->irq, 
> err);
> -		return err;
> -	}
> -
>  	/* Get Clocks: */
>  	gpu->clk_reg = devm_clk_get(&pdev->dev, "reg");
>  	DBG("clk_reg: %p", gpu->clk_reg);
> @@ -1805,6 +1798,28 @@ static int etnaviv_gpu_platform_probe(struct
> platform_device *pdev)
>  		gpu->clk_shader = NULL;
>  	gpu->base_rate_shader = clk_get_rate(gpu->clk_shader);
>  
> +	/*
> +	 * On i.MX8MM there is an interrupt getting triggered
> immediately
> +	 * after requesting the IRQ, which leads to a stall as the
> handler
> +	 * accesses the GPU registers whithout the clock being enabled.
> +	 * Enabling the clocks briefly seems to clear the IRQ state, so
> we do
> +	 * this here before requesting the IRQ.
> +	 */
> +	err = etnaviv_gpu_clk_enable(gpu);
> +	if (err)
> +		return err;
> +
> +	err = etnaviv_gpu_clk_disable(gpu);
> +	if (err)
> +		return err;
> +
> +	err = devm_request_irq(&pdev->dev, gpu->irq, irq_handler, 0,
> +			       dev_name(gpu->dev), gpu);
> +	if (err) {
> +		dev_err(dev, "failed to request IRQ%u: %d\n", gpu->irq, 
> err);
> +		return err;
> +	}
> +
>  	/* TODO: figure out max mapped size */
>  	dev_set_drvdata(dev, gpu);
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
