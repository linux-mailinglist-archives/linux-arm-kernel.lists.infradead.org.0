Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E989EB66D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ES0WAbh8fjIVomIwzHbCaU/MSRGBpSSnU6cQM18E/24=; b=fY0ie2jqp+itJx
	JeQyNvkXDzD93u0ljtiCFU6b2mejHnn3/JXaqks10fwXAPcoq4bfi2KIFBrh4fZ5ntvfvI/Hn/f2Q
	M6sXWeuI6nUU66xaND/0DMN85gtlDJ0BxYiFZ/CHGnIheetRI4VJ6ZN4E+uN8H8jm0aCuyN4aTn5o
	fZaBD7dUFYlSZQAENysVvEB7dTj2KefutaxIKlN83/SBURhVpP6lHXEAMsxj5TWgH4HMJj1ztBiZG
	QY5ogtJ8fmsQy0h+S2mUkHV9QhPisByejNWHnhldxLpgSLdcrY0zlBKmhx3GdI2wXJtXpltBZmixt
	njpqoinTtlUI+9BsXU4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbcM-0003nb-L3; Wed, 18 Sep 2019 15:11:42 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbbu-0003ce-Du
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:11:16 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id A8A1E1BF214;
 Wed, 18 Sep 2019 15:11:02 +0000 (UTC)
Date: Wed, 18 Sep 2019 17:11:00 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v2] pwm: atmel: Remove platform_device_id and use only dt
 bindings
Message-ID: <20190918151100.GO21254@piout.net>
References: <20190918145716.32022-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918145716.32022-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_081114_775094_037FF0FE 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.201 listed in wl.mailspike.net]
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
Cc: linux-pwm@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/09/2019 16:57:16+0200, Kamel Bouhara wrote:
> Since commit 26202873bb51 ("avr32: remove support for AVR32
> architecture") there is no more user of platform_device_id and we
> should only use dt bindings
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

>cj ---
> Changelog:
>  v1->v2
>  
>  - Remove whole function atmel_pwm_get_driver_data and call
>  of_device_get_match_data from atmel_pwm_probe
> 
>  drivers/pwm/Kconfig     |  2 +-
>  drivers/pwm/pwm-atmel.c | 35 +++--------------------------------
>  2 files changed, 4 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
> index a7e57516959e..b51fb1a33aa2 100644
> --- a/drivers/pwm/Kconfig
> +++ b/drivers/pwm/Kconfig
> @@ -44,7 +44,7 @@ config PWM_AB8500
>  
>  config PWM_ATMEL
>  	tristate "Atmel PWM support"
> -	depends on ARCH_AT91
> +	depends on ARCH_AT91 && OF
>  	help
>  	  Generic PWM framework driver for Atmel SoC.
>  
> diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
> index e5e1eaf372fa..f7cf0a86a37c 100644
> --- a/drivers/pwm/pwm-atmel.c
> +++ b/drivers/pwm/pwm-atmel.c
> @@ -318,19 +318,6 @@ static const struct atmel_pwm_data mchp_sam9x60_pwm_data = {
>  	},
>  };
>  
> -static const struct platform_device_id atmel_pwm_devtypes[] = {
> -	{
> -		.name = "at91sam9rl-pwm",
> -		.driver_data = (kernel_ulong_t)&atmel_sam9rl_pwm_data,
> -	}, {
> -		.name = "sama5d3-pwm",
> -		.driver_data = (kernel_ulong_t)&atmel_sama5_pwm_data,
> -	}, {
> -		/* sentinel */
> -	},
> -};
> -MODULE_DEVICE_TABLE(platform, atmel_pwm_devtypes);
> -
>  static const struct of_device_id atmel_pwm_dt_ids[] = {
>  	{
>  		.compatible = "atmel,at91sam9rl-pwm",
> @@ -350,19 +337,6 @@ static const struct of_device_id atmel_pwm_dt_ids[] = {
>  };
>  MODULE_DEVICE_TABLE(of, atmel_pwm_dt_ids);
>  
> -static inline const struct atmel_pwm_data *
> -atmel_pwm_get_driver_data(struct platform_device *pdev)
> -{
> -	const struct platform_device_id *id;
> -
> -	if (pdev->dev.of_node)
> -		return of_device_get_match_data(&pdev->dev);
> -
> -	id = platform_get_device_id(pdev);
> -
> -	return (struct atmel_pwm_data *)id->driver_data;
> -}
> -
>  static int atmel_pwm_probe(struct platform_device *pdev)
>  {
>  	const struct atmel_pwm_data *data;
> @@ -370,7 +344,7 @@ static int atmel_pwm_probe(struct platform_device *pdev)
>  	struct resource *res;
>  	int ret;
>  
> -	data = atmel_pwm_get_driver_data(pdev);
> +	data = of_device_get_match_data(&pdev->dev);
>  	if (!data)
>  		return -ENODEV;
>  
> @@ -396,10 +370,8 @@ static int atmel_pwm_probe(struct platform_device *pdev)
>  	atmel_pwm->chip.dev = &pdev->dev;
>  	atmel_pwm->chip.ops = &atmel_pwm_ops;
>  
> -	if (pdev->dev.of_node) {
> -		atmel_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
> -		atmel_pwm->chip.of_pwm_n_cells = 3;
> -	}
> +	atmel_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
> +	atmel_pwm->chip.of_pwm_n_cells = 3;
>  
>  	atmel_pwm->chip.base = -1;
>  	atmel_pwm->chip.npwm = 4;
> @@ -437,7 +409,6 @@ static struct platform_driver atmel_pwm_driver = {
>  		.name = "atmel-pwm",
>  		.of_match_table = of_match_ptr(atmel_pwm_dt_ids),
>  	},
> -	.id_table = atmel_pwm_devtypes,
>  	.probe = atmel_pwm_probe,
>  	.remove = atmel_pwm_remove,
>  };
> -- 
> 2.23.0
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
