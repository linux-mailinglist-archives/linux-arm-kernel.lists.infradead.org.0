Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D181BB6652
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdwU33LsGog0D+YsW9LbcchQ3GOBcRjucJl9kavgHQw=; b=SDuJboGEUw/lbb
	Se69NSZ9uSJmGSrTVp0lzWItpvEZ1zx1JZNTY37rBXEwT7tVGd08y2WE7N3lXTjE6E6Fi1F896xO0
	NVpoLm7oRox4gY60s1FuSe7xJ9kFjYp/nE1QwNP1jEkk8ZS5hO7AbFc5OyuG3HGQrbhEPj+VvT+eQ
	Wky7+skg171C4Thp1iD3Mu2lWL10CAPuXU0/5VZqyZqtm7fIClIExmGOBDlTp1StlZYayD0uVa53K
	x8+fV1cJCMI2NAk3zxAL6XKIcSTeuISjrlUzO8DdAIElz0mRDG8Dfc+xrtUMxB7BPblus5iRFo5lG
	LEOr6L7TaCXmPS1Wkkcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAb9M-000846-5Q; Wed, 18 Sep 2019 14:41:44 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAb8r-00083i-V8
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:41:16 +0000
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A9E06200011;
 Wed, 18 Sep 2019 14:41:00 +0000 (UTC)
Date: Wed, 18 Sep 2019 16:40:58 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH] pwm: atmel: Remove platform_device_id and use only dt
 bindings
Message-ID: <20190918144058.GN21254@piout.net>
References: <20190918140534.23365-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918140534.23365-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_074114_299105_3802C1AE 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 18/09/2019 16:05:34+0200, Kamel Bouhara wrote:
> Since commit 26202873bb51 ("avr32: remove support for AVR32
> architecture") there is no more user of platform_device_id and we
> should only use dt bindings
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  drivers/pwm/Kconfig     |  2 +-
>  drivers/pwm/pwm-atmel.c | 29 +++--------------------------
>  2 files changed, 4 insertions(+), 27 deletions(-)
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
> index e5e1eaf372fa..a3d93d634462 100644
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
> @@ -353,14 +340,7 @@ MODULE_DEVICE_TABLE(of, atmel_pwm_dt_ids);
>  static inline const struct atmel_pwm_data *
>  atmel_pwm_get_driver_data(struct platform_device *pdev)
>  {
> -	const struct platform_device_id *id;
> -
> -	if (pdev->dev.of_node)
> -		return of_device_get_match_data(&pdev->dev);
> -
> -	id = platform_get_device_id(pdev);
> -
> -	return (struct atmel_pwm_data *)id->driver_data;
> +	return of_device_get_match_data(&pdev->dev);

The whole function is gone so you could simply call
of_device_get_match_data from atmel_pwm_probe.

>  }
>  
>  static int atmel_pwm_probe(struct platform_device *pdev)
> @@ -396,10 +376,8 @@ static int atmel_pwm_probe(struct platform_device *pdev)
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
> @@ -437,7 +415,6 @@ static struct platform_driver atmel_pwm_driver = {
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
