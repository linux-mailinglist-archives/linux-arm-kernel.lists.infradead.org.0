Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E28821AFA29
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6a9JBcOx897jIMsL35jmD0BxF1XZLdL5s55gQKiGn+4=; b=Ux4YRE8+HnNBxf
	iK95uMQIgCekXc26Saj9WaOOYEpjqShRO2ixuIDp9WWEsgc8FeKlYwpmkv8+b6L2gNIOqpS2O9Iq0
	QfrlaFIsb1m5TSmPt0WNcaI4Thu0vX9GsQFoWyi6DyuCa+oXLJUadeEcYJR4SS4vdFcJ4RFNuufoG
	i6O+EtM79D93lyDyvd75APZMLX2UWeTXeye698hukEg8vygASuWvv//PZ0jpe5nzRwiKRFPH+AozJ
	azGTWwSNHlYw0E1+G5AQPsHhQeKeZvKLZM4vRqNU3yBpMsMya1EpQhT33W7G/g44c6vkV5YzM97Z4
	v0HuxntSD9AmceuUIYsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9PS-0005Yl-I4; Sun, 19 Apr 2020 12:50:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9PI-0005Xz-7R
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 12:50:45 +0000
Received: from ROU-LT-M43218B.mchp-main.com
 (amontpellier-556-1-155-96.w109-210.abo.wanadoo.fr [109.210.131.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A844F2137B;
 Sun, 19 Apr 2020 12:50:34 +0000 (UTC)
Date: Sun, 19 Apr 2020 14:50:58 +0200
From: ludovic.desroches@microchip.com
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [RFC PATCH] i2c: at91: Fix pinmux after devm_gpiod_get() for bus
 recovery
Message-ID: <20200419125058.ldueh7fdswgxocgf@ROU-LT-M43218B.mchp-main.com>
References: <20200415070643.23663-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415070643.23663-1-codrin.ciubotariu@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055044_308050_2B030F2E 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alan@softiron.com, kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 wsa@the-dreams.de, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-i2c@vger.kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 10:06:43AM +0300, Codrin Ciubotariu wrote:
> devm_gpiod_get() usually calls gpio_request_enable() for non-strict pinmux
> drivers. These puts the pins in GPIO mode, whithout notifying the pinctrl
> driver. At this point, the I2C bus no longer owns the pins. To mux the
> pins back to the I2C bus, we use the pinctrl driver to change the state
> of the pins to GPIO, before using devm_gpiod_get(). After the pins are
> received as GPIOs, we switch theer pinctrl state back to the default
> one,
> 
> Fixes: d3d3fdcc4c90 ("i2c: at91: implement i2c bus recovery")
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

At the moment, I don't see another way to deal with this issue.

Link to the discussion:
https://lore.kernel.org/linux-arm-kernel/20191206173343.GX25745@shell.armlinux.org.uk/

Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
>  drivers/i2c/busses/i2c-at91-master.c | 19 ++++++++++++++++---
>  1 file changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
> index 0aba51a7df32..43d85845c897 100644
> --- a/drivers/i2c/busses/i2c-at91-master.c
> +++ b/drivers/i2c/busses/i2c-at91-master.c
> @@ -845,6 +845,18 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
>  							 PINCTRL_STATE_DEFAULT);
>  	dev->pinctrl_pins_gpio = pinctrl_lookup_state(dev->pinctrl,
>  						      "gpio");
> +	if (IS_ERR(dev->pinctrl_pins_default) ||
> +	    IS_ERR(dev->pinctrl_pins_gpio)) {
> +		dev_info(&pdev->dev, "pinctrl states incomplete for recovery\n");
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * pins will be taken as GPIO, so we might as well inform pinctrl about
> +	 * this and move the state to GPIO
> +	 */
> +	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_gpio);
> +
>  	rinfo->sda_gpiod = devm_gpiod_get(&pdev->dev, "sda", GPIOD_IN);
>  	if (PTR_ERR(rinfo->sda_gpiod) == -EPROBE_DEFER)
>  		return -EPROBE_DEFER;
> @@ -855,9 +867,7 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
>  		return -EPROBE_DEFER;
>  
>  	if (IS_ERR(rinfo->sda_gpiod) ||
> -	    IS_ERR(rinfo->scl_gpiod) ||
> -	    IS_ERR(dev->pinctrl_pins_default) ||
> -	    IS_ERR(dev->pinctrl_pins_gpio)) {
> +	    IS_ERR(rinfo->scl_gpiod)) {
>  		dev_info(&pdev->dev, "recovery information incomplete\n");
>  		if (!IS_ERR(rinfo->sda_gpiod)) {
>  			gpiod_put(rinfo->sda_gpiod);
> @@ -870,6 +880,9 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
>  		return -EINVAL;
>  	}
>  
> +	/* change the state of the pins back to their default state */
> +	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
> +
>  	dev_info(&pdev->dev, "using scl, sda for recovery\n");
>  
>  	rinfo->prepare_recovery = at91_prepare_twi_recovery;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
