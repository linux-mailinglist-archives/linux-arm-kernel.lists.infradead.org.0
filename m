Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FCC196CBB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 13:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RR6pBqIGok3PvpPHCJqYGw3uYHc0god0HfTgSzUnfkk=; b=i3RljqPJIZoFJJ
	7bwDudya/VvcW2ZuwWhuqR6vWvcO4Gh2t+IbSohX2iReHuUMQh7q+uEWCpuoSgUngkGfFks61baux
	bCtMVYbwTdGirX7QdICKg2dRcQ1egML5fqPZKlPzo0sLf4SeQs6uaYO8CJyxK1HqJeRlYecOVoge6
	HXW0G1M3eRozN0XuOoDAuCdIEr6LbGp4/Acyse/HNcW6HxBqmyuc1XyJ0QdoE8rwJ6MRsxHiU7agU
	x4/XHCVkf71R02ts1JcWyuzK75d8HwH7ZZFB/mriHB5oTk0di46/9kKPVYjZfGpUAMVlTyOjiAZsT
	YW+yQEIKHPPISPoi0E8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVgg-0008A2-J6; Sun, 29 Mar 2020 11:01:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVgW-00085b-Sl
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 11:00:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DcDjMRJGak4rnCBBIVUoPjQcQK/n+fyetuJEHORJerY=; b=Ed0UISfy7jSV8UEXmJm5FzyAz
 02T4cSjN9/tiaB9aP9Ue29lA1fLVkuEuG4El1lE/JBaApX6xK5K0OB921qV6XESR7to1TQhvSV/It
 Hpa7f6T3p36AI2xNIndH66zLk+4edxncspCCg3bq2X5MWEDMdP5Zq/sSsAHmRszlc4S1M0QIMv+fu
 l+LEhcUd8n+GEczhZhQoiF+tlOjEfFJxX343bz0GMTAU+aviO0jIR28Jl6R8ZaVKrONX6xnhdG9tt
 vTWhHHxGhAszc/iCY/FE77a7PVjbOenLG4qd/WeBX0RP7JVEzS/Vw7TEGTjoAwgennskTgtosPaQO
 ipvLNubYQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59462)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jIVgK-0004ak-6T; Sun, 29 Mar 2020 12:00:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jIVgI-00069V-9U; Sun, 29 Mar 2020 12:00:42 +0100
Date: Sun, 29 Mar 2020 12:00:42 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 devicetree@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-pwm@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH RFC 3/6] gpio: mvebu: add PWM support for Armada 8k
Message-ID: <20200329110042.GY25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <E1jIVUE-0005hC-VU@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1jIVUE-0005hC-VU@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_040057_266033_7B45C519 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 11:48:14AM +0100, Russell King wrote:
> Add support for PWM devices on the Armada 8k, which are useful on the
> Macchiatobin and Clearfog GT 8K platforms for controlling the fan
> speed.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/gpio/gpio-mvebu.c | 166 +++++++++++++++++++++++++-------------
>  1 file changed, 111 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-mvebu.c b/drivers/gpio/gpio-mvebu.c
> index ee13b11c5298..4abe298e9c0f 100644
> --- a/drivers/gpio/gpio-mvebu.c
> +++ b/drivers/gpio/gpio-mvebu.c
> @@ -91,8 +91,16 @@
>  #define MVEBU_GPIO_SOC_VARIANT_ARMADAXP 0x3
>  #define MVEBU_GPIO_SOC_VARIANT_A8K	0x4
>  
> +#define MVEBU_PWM_SOC_VARIANT_ARMADA370	1
> +#define MVEBU_PWM_SOC_VARIANT_A8K	2
> +
>  #define MVEBU_MAX_GPIO_PER_BANK		32
>  
> +struct mvebu_gpio_soc_variant {
> +	int gpio;
> +	int pwm;
> +};
> +
>  struct mvebu_pwm {
>  	struct regmap		*regs;
>  	u32			 offset;
> @@ -679,21 +687,17 @@ static void mvebu_pwm_get_state(struct pwm_chip *chip,
>  	else
>  		state->duty_cycle = 1;
>  
> -	regmap_read(mvpwm->regs, mvebu_pwmreg_blink_off_duration(mvpwm), &u);
>  	val = (unsigned long long)u;
> +	regmap_read(mvpwm->regs, mvebu_pwmreg_blink_off_duration(mvpwm), &u);
> +	val += (unsigned long long)u;
>  	val *= NSEC_PER_SEC;
>  	do_div(val, mvpwm->clk_rate);
> -	if (val < state->duty_cycle) {
> +	if (val > UINT_MAX)
> +		state->period = UINT_MAX;
> +	else if (val)
> +		state->period = val;
> +	else
>  		state->period = 1;
> -	} else {
> -		val -= state->duty_cycle;
> -		if (val > UINT_MAX)
> -			state->period = UINT_MAX;
> -		else if (val)
> -			state->period = val;
> -		else
> -			state->period = 1;
> -	}

I should've split this out - there seems to be a bug in the existing
PWM implementation concerning the calculation of the period, which the
above change corrects.

One register contains the duration for the "on" part of the period, and
the other for the "off" part of the period. Therefore, the total period
is the sum of _both_ the on part and the off part.

>  
>  	regmap_read(mvchip->regs, GPIO_BLINK_EN_OFF + mvchip->offset, &u);
>  	if (u)
> @@ -779,6 +783,7 @@ static void __maybe_unused mvebu_pwm_resume(struct mvebu_gpio_chip *mvchip)
>  }
>  
>  static int mvebu_pwm_probe(struct platform_device *pdev,
> +			   const struct mvebu_gpio_soc_variant *soc_variant,
>  			   struct mvebu_gpio_chip *mvchip,
>  			   int id)
>  {
> @@ -787,27 +792,9 @@ static int mvebu_pwm_probe(struct platform_device *pdev,
>  	void __iomem *base;
>  	u32 set;
>  
> -	if (!of_device_is_compatible(mvchip->chip.of_node,
> -				     "marvell,armada-370-gpio"))
> +	if (!soc_variant->pwm)
>  		return 0;
>  
> -	if (IS_ERR(mvchip->clk))
> -		return PTR_ERR(mvchip->clk);
> -
> -	/*
> -	 * Use set A for lines of GPIO chip with id 0, B for GPIO chip
> -	 * with id 1. Don't allow further GPIO chips to be used for PWM.
> -	 */
> -	if (id == 0)
> -		set = 0;
> -	else if (id == 1)
> -		set = U32_MAX;
> -	else
> -		return -EINVAL;
> -
> -	regmap_write(mvchip->regs,
> -		     GPIO_BLINK_CNT_SELECT_OFF + mvchip->offset, set);
> -
>  	mvpwm = devm_kzalloc(dev, sizeof(struct mvebu_pwm), GFP_KERNEL);
>  	if (!mvpwm)
>  		return -ENOMEM;
> @@ -815,20 +802,67 @@ static int mvebu_pwm_probe(struct platform_device *pdev,
>  	mvchip->mvpwm = mvpwm;
>  	mvpwm->mvchip = mvchip;
>  
> -	/*
> -	 * There are only two sets of PWM configuration registers for
> -	 * all the GPIO lines on those SoCs which this driver reserves
> -	 * for the first two GPIO chips. So if the resource is missing
> -	 * we can't treat it as an error.
> -	 */
> -	base = devm_platform_ioremap_resource_byname(pdev, "pwm");
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	switch (soc_variant->pwm) {
> +	case MVEBU_PWM_SOC_VARIANT_ARMADA370:
> +		if (IS_ERR(mvchip->clk))
> +			return PTR_ERR(mvchip->clk);
> +
> +		/*
> +		 * There are only two sets of PWM configuration registers for
> +		 * all the GPIO lines on those SoCs which this driver reserves
> +		 * for the first two GPIO chips. So if the resource is missing
> +		 * we can't treat it as an error.
> +		 */
> +		base = devm_platform_ioremap_resource_byname(pdev, "pwm");
> +		if (IS_ERR(base))
> +			return PTR_ERR(base);
>  
> -	mvpwm->regs = devm_regmap_init_mmio(&pdev->dev, base,
> -					    &mvebu_gpio_regmap_config);
> -	if (IS_ERR(mvpwm->regs))
> -		return PTR_ERR(mvpwm->regs);
> +		mvpwm->regs = devm_regmap_init_mmio(&pdev->dev, base,
> +						    &mvebu_gpio_regmap_config);
> +		if (IS_ERR(mvpwm->regs))
> +			return PTR_ERR(mvpwm->regs);
> +
> +		/*
> +		 * Use set A for lines of GPIO chip with id 0, B for GPIO chip
> +		 * with id 1. Don't allow further GPIO chips to be used for PWM.
> +		 */
> +		if (id == 0)
> +			set = 0;
> +		else if (id == 1)
> +			set = U32_MAX;
> +		else
> +			return -EINVAL;
> +		break;
> +
> +	case MVEBU_PWM_SOC_VARIANT_A8K:
> +		/*
> +		 * If there is no clock, this is an older DT, so avoid
> +		 * registering the PWM.
> +		 */
> +		if (IS_ERR(mvchip->clk))
> +			return 0;
> +
> +		mvpwm->regs = mvchip->regs;
> +		switch (id) {
> +		case 1:
> +			mvpwm->offset = 0x1f0;
> +			set = 0;
> +			break;
> +		case 2:
> +			mvpwm->offset = 0x1f8;
> +			set = U32_MAX;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	regmap_write(mvchip->regs,
> +		     GPIO_BLINK_CNT_SELECT_OFF + mvchip->offset, set);
>  
>  	mvpwm->clk_rate = clk_get_rate(mvchip->clk);
>  	if (!mvpwm->clk_rate) {
> @@ -909,26 +943,48 @@ static void mvebu_gpio_dbg_show(struct seq_file *s, struct gpio_chip *chip)
>  #define mvebu_gpio_dbg_show NULL
>  #endif
>  
> +static const struct mvebu_gpio_soc_variant mvebu_gpio_orion_variant = {
> +	.gpio = MVEBU_GPIO_SOC_VARIANT_ORION,
> +};
> +
> +static const struct mvebu_gpio_soc_variant mvebu_gpio_mv78200_variant = {
> +	.gpio = MVEBU_GPIO_SOC_VARIANT_MV78200,
> +};
> +
> +static const struct mvebu_gpio_soc_variant mvebu_gpio_armadaxp_variant = {
> +	.gpio = MVEBU_GPIO_SOC_VARIANT_ARMADAXP,
> +};
> +
> +static const struct mvebu_gpio_soc_variant mvebu_gpio_armada370_variant = {
> +	.gpio = MVEBU_GPIO_SOC_VARIANT_ORION,
> +	.pwm = MVEBU_PWM_SOC_VARIANT_ARMADA370,
> +};
> +
> +static const struct mvebu_gpio_soc_variant mvebu_gpio_a8k_variant = {
> +	.gpio = MVEBU_GPIO_SOC_VARIANT_A8K,
> +	.pwm = MVEBU_PWM_SOC_VARIANT_A8K,
> +};
> +
>  static const struct of_device_id mvebu_gpio_of_match[] = {
>  	{
>  		.compatible = "marvell,orion-gpio",
> -		.data	    = (void *) MVEBU_GPIO_SOC_VARIANT_ORION,
> +		.data	    = &mvebu_gpio_orion_variant,
>  	},
>  	{
>  		.compatible = "marvell,mv78200-gpio",
> -		.data	    = (void *) MVEBU_GPIO_SOC_VARIANT_MV78200,
> +		.data	    = &mvebu_gpio_mv78200_variant,
>  	},
>  	{
>  		.compatible = "marvell,armadaxp-gpio",
> -		.data	    = (void *) MVEBU_GPIO_SOC_VARIANT_ARMADAXP,
> +		.data	    = &mvebu_gpio_armadaxp_variant,
>  	},
>  	{
>  		.compatible = "marvell,armada-370-gpio",
> -		.data	    = (void *) MVEBU_GPIO_SOC_VARIANT_ORION,
> +		.data	    = &mvebu_gpio_armada370_variant,
>  	},
>  	{
>  		.compatible = "marvell,armada-8k-gpio",
> -		.data       = (void *) MVEBU_GPIO_SOC_VARIANT_A8K,
> +		.data       = &mvebu_gpio_a8k_variant,
>  	},
>  	{
>  		/* sentinel */
> @@ -1093,6 +1149,7 @@ static int mvebu_gpio_probe_syscon(struct platform_device *pdev,
>  
>  static int mvebu_gpio_probe(struct platform_device *pdev)
>  {
> +	const struct mvebu_gpio_soc_variant *soc_variant;
>  	struct mvebu_gpio_chip *mvchip;
>  	const struct of_device_id *match;
>  	struct device_node *np = pdev->dev.of_node;
> @@ -1100,15 +1157,14 @@ static int mvebu_gpio_probe(struct platform_device *pdev)
>  	struct irq_chip_type *ct;
>  	unsigned int ngpios;
>  	bool have_irqs;
> -	int soc_variant;
>  	int i, cpu, id;
>  	int err;
>  
>  	match = of_match_device(mvebu_gpio_of_match, &pdev->dev);
>  	if (match)
> -		soc_variant = (unsigned long) match->data;
> +		soc_variant = match->data;
>  	else
> -		soc_variant = MVEBU_GPIO_SOC_VARIANT_ORION;
> +		soc_variant = &mvebu_gpio_orion_variant;
>  
>  	/* Some gpio controllers do not provide irq support */
>  	have_irqs = of_irq_count(np) != 0;
> @@ -1139,7 +1195,7 @@ static int mvebu_gpio_probe(struct platform_device *pdev)
>  	if (!IS_ERR(mvchip->clk))
>  		clk_prepare_enable(mvchip->clk);
>  
> -	mvchip->soc_variant = soc_variant;
> +	mvchip->soc_variant = soc_variant->gpio;
>  	mvchip->chip.label = dev_name(&pdev->dev);
>  	mvchip->chip.parent = &pdev->dev;
>  	mvchip->chip.request = gpiochip_generic_request;
> @@ -1157,7 +1213,7 @@ static int mvebu_gpio_probe(struct platform_device *pdev)
>  	mvchip->chip.of_node = np;
>  	mvchip->chip.dbg_show = mvebu_gpio_dbg_show;
>  
> -	if (soc_variant == MVEBU_GPIO_SOC_VARIANT_A8K)
> +	if (soc_variant->gpio == MVEBU_GPIO_SOC_VARIANT_A8K)
>  		err = mvebu_gpio_probe_syscon(pdev, mvchip);
>  	else
>  		err = mvebu_gpio_probe_raw(pdev, mvchip);
> @@ -1168,7 +1224,7 @@ static int mvebu_gpio_probe(struct platform_device *pdev)
>  	/*
>  	 * Mask and clear GPIO interrupts.
>  	 */
> -	switch (soc_variant) {
> +	switch (soc_variant->gpio) {
>  	case MVEBU_GPIO_SOC_VARIANT_ORION:
>  	case MVEBU_GPIO_SOC_VARIANT_A8K:
>  		regmap_write(mvchip->regs,
> @@ -1265,7 +1321,7 @@ static int mvebu_gpio_probe(struct platform_device *pdev)
>  
>  	/* Some MVEBU SoCs have simple PWM support for GPIO lines */
>  	if (IS_ENABLED(CONFIG_PWM))
> -		return mvebu_pwm_probe(pdev, mvchip, id);
> +		return mvebu_pwm_probe(pdev, soc_variant, mvchip, id);
>  
>  	return 0;
>  
> -- 
> 2.20.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
