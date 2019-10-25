Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE56E4520
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOLn/Z6Fpq+lwwmc0nGJojG5umP4Qwrev1DDTUN5vr0=; b=hLgnJS68AKDVae
	SlfwI/y00WnQIBzisbu9uAyzrwAY4ccQaW17DZnvpEAbohY1KlXwKxDzRDknBzoMigerUf5QGOIfG
	nQVDuifpbjWv/hLeYQ+Hk/MWCf9GesvpIS+wCxgejXdCaygfwnn7EfxTfZzOG3V+DKtwhYLrYOn3l
	CzFU92iVa8LJ0GAAsgrk1QNFiaqEVijaWCmeCVnoKso9UIrcQuV4OkN7AxvFfRiiUsC06t4Cb3CYf
	UX5NxATHu5NXcQURWbeVK70OIN6BNT/86oKfH2sJbp/Ct9r8u8aX7oFI9OF5/vpZt6l9JzX4X67mW
	rysxs4TjJ1EC35Xes3ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNuYX-00046p-LE; Fri, 25 Oct 2019 08:02:45 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNuYQ-00046h-EB
 for linux-arm-kernel@bombadil.infradead.org; Fri, 25 Oct 2019 08:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6GrHKqmDmq68bOT9LJvPK/3mLeHxtZCjEbOB9cAti4c=; b=NIsI73QB/zTfZgky1H84wVJ/F
 aeQ9LyvmNxDYLjamSL13dF4WxwgUoWmQjbWSwen86+MXls8EgsyNp+a32KuT6Pcx2FVqmvHwqjPdF
 1XQctxJwMwTlTNJ0kCzzKXsT+ttLUo3IFyo5z2i/3nLWNOpwNjIF9TDiC0LsrWPvAtoDDEjsapEgD
 klKmwPIn7dD5XYckRmIsUAIcI+/1++AMGwT5N3IyqK5DVtShLoMdKRqcukBZyXh4AddwNDC4vWUb5
 sMfaPsXwQqsbZ7QZc1qFoml1SDrJz1oGL4M2Wbo0vkD/abWORRHHBWBtWuB1N814paKJr6XOpjDcH
 w5kWR2TTw==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNuYN-0001Mv-3o
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:02:36 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 28521FF811;
 Fri, 25 Oct 2019 08:01:41 +0000 (UTC)
Date: Fri, 25 Oct 2019 10:01:36 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH 2/2] hwrng: atmel: add new platform support for sam9x60
Message-ID: <20191025080136.GA3125@piout.net>
References: <20191024170452.2145-1-codrin.ciubotariu@microchip.com>
 <20191024170452.2145-2-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024170452.2145-2-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, arnd@arndb.de, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, mpm@selenic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/10/2019 20:04:52+0300, Codrin Ciubotariu wrote:
> Add platform support for the new IP found on sam9x60 SoC. For this
> version, if the peripheral clk is above 100MHz, the HALFR bit must be
> set. This bit is available only if the IP can generate a random number
> every 168 cycles (instead of 84).
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>  drivers/char/hw_random/atmel-rng.c | 39 ++++++++++++++++++++++++++++--
>  1 file changed, 37 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/hw_random/atmel-rng.c b/drivers/char/hw_random/atmel-rng.c
> index e55705745d5e..0aa9425e6c3e 100644
> --- a/drivers/char/hw_random/atmel-rng.c
> +++ b/drivers/char/hw_random/atmel-rng.c
> @@ -14,14 +14,22 @@
>  #include <linux/clk.h>
>  #include <linux/io.h>
>  #include <linux/hw_random.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  
>  #define TRNG_CR		0x00
> +#define TRNG_MR		0x04
>  #define TRNG_ISR	0x1c
>  #define TRNG_ODATA	0x50
>  
>  #define TRNG_KEY	0x524e4700 /* RNG */
>  
> +#define TRNG_HALFR	BIT(0) /* generate RN every 168 cycles */
> +
> +struct atmel_trng_pdata {

Could that be just atmel_trng_data?

There is no platform data in this driver and it is DT only.

> +	bool has_half_rate;
> +};
> +
>  struct atmel_trng {
>  	struct clk *clk;
>  	void __iomem *base;
> @@ -63,6 +71,7 @@ static int atmel_trng_probe(struct platform_device *pdev)
>  {
>  	struct atmel_trng *trng;
>  	struct resource *res;
> +	const struct atmel_trng_pdata *pdata;
>  	int ret;
>  
>  	trng = devm_kzalloc(&pdev->dev, sizeof(*trng), GFP_KERNEL);
> @@ -77,6 +86,17 @@ static int atmel_trng_probe(struct platform_device *pdev)
>  	trng->clk = devm_clk_get(&pdev->dev, NULL);
>  	if (IS_ERR(trng->clk))
>  		return PTR_ERR(trng->clk);
> +	pdata = of_device_get_match_data(&pdev->dev);
> +	if (!pdata)
> +		return -ENODEV;
> +
> +	if (pdata->has_half_rate) {
> +		unsigned long rate = clk_get_rate(trng->clk);
> +
> +		/* if peripheral clk is above 100MHz, set HALFR */
> +		if (rate > 100000000)
> +			writel(TRNG_HALFR, trng->base + TRNG_MR);
> +	}
>  
>  	ret = clk_prepare_enable(trng->clk);
>  	if (ret)
> @@ -141,9 +161,24 @@ static const struct dev_pm_ops atmel_trng_pm_ops = {
>  };
>  #endif /* CONFIG_PM */
>  
> +static struct atmel_trng_pdata at91sam9g45_config = {
> +	.has_half_rate = false,
> +};
> +
> +static struct atmel_trng_pdata sam9x60_config = {
> +	.has_half_rate = true,
> +};
> +
>  static const struct of_device_id atmel_trng_dt_ids[] = {
> -	{ .compatible = "atmel,at91sam9g45-trng" },
> -	{ /* sentinel */ }
> +	{
> +		.compatible = "atmel,at91sam9g45-trng",
> +		.data = &at91sam9g45_config,
> +	}, {
> +		.compatible = "microchip,sam9x60-trng",
> +		.data = &sam9x60_config,
> +	}, {
> +		/* sentinel */
> +	}
>  };
>  MODULE_DEVICE_TABLE(of, atmel_trng_dt_ids);
>  
> -- 
> 2.20.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
