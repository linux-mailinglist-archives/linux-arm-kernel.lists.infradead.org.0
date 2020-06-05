Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762021EF686
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 13:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SsUiRllc3h/8lWK0DvNCef0RCfZAu9/c8jXCfeJ959o=; b=KdkNYPiModru5xQx//fa12C/B
	Z0zF8oFRCzO8tn7kRbvSH1INRuNuVjVlREzoq4PN63XQGmZuEPJWRSazaIUFGQi3DkvDgaY615LUN
	FLYo14nB5xO5+1bZFnh9padTXhoKPnUzumVzjdbbUGlFdEoe2OAIxl00CEwqZqWmcDBgrV4K0Igt/
	lVAqWkjWYVBeloY3n6lw2ex7y7Amlyt+lcezv8CPmNVKDUlPV8GNCs9+P6zA12qRwNwUjFcZNhBSp
	MAoNAwgSJqknBWsEjFIXOKY6ImQshkZkwvjqt9WAtS/j33FYNMSfJdahEr9J47AkgZJudQ/3d0DQH
	g03LCljnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhAh1-0000PF-2L; Fri, 05 Jun 2020 11:39:23 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhAgs-0000Np-WE
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 11:39:17 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 8E63422FEC;
 Fri,  5 Jun 2020 13:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591357150;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=82fCU3j2UFl91wX9eMDPOe26ZaWLsjPW25Pdt7Qzeqw=;
 b=YqNXpf3MZvxSAINYteCPGwmZC+Bn5rwA7bDeQdwcEcjLALel/t7uq4t0EjmqtV/Rtj+hJK
 zCso13VslSjtALjMRk8yWkwy9CmtTvSvPp5v9u1CBRENViZ+psv/LCtwLQJiH22Y+O63Sk
 Tpq2i+mKVRY7oXST+pqHs/gGX54dWkc=
MIME-Version: 1.0
Date: Fri, 05 Jun 2020 13:39:09 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 05/11] pwm: add support for sl28cpld PWM controller
In-Reply-To: <20200605084915.GE3714@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-6-michael@walle.cc> <20200605084915.GE3714@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <9b539d32c70da72bea0abac0f7cd8e1c@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_043915_337483_DB36D19C 
X-CRM114-Status: GOOD (  39.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-05 10:49, schrieb Lee Jones:
> On Thu, 04 Jun 2020, Michael Walle wrote:
> 
>> Add support for the PWM controller of the sl28cpld board management
>> controller. This is part of a multi-function device driver.
>> 
>> The controller has one PWM channel and can just generate four distinct
>> frequencies.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
>> ---
>>  drivers/pwm/Kconfig        |  10 ++
>>  drivers/pwm/Makefile       |   1 +
>>  drivers/pwm/pwm-sl28cpld.c | 201 
>> +++++++++++++++++++++++++++++++++++++
>>  3 files changed, 212 insertions(+)
>>  create mode 100644 drivers/pwm/pwm-sl28cpld.c
>> 
>> diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
>> index cb8d739067d2..a39371c11ff6 100644
>> --- a/drivers/pwm/Kconfig
>> +++ b/drivers/pwm/Kconfig
>> @@ -437,6 +437,16 @@ config PWM_SIFIVE
>>  	  To compile this driver as a module, choose M here: the module
>>  	  will be called pwm-sifive.
>> 
>> +config PWM_SL28CPLD
>> +	tristate "Kontron sl28 PWM support"
>> +	depends on MFD_SL28CPLD
>> +	help
>> +	  Generic PWM framework driver for board management controller
>> +	  found on the Kontron sl28 CPLD.
>> +
>> +	  To compile this driver as a module, choose M here: the module
>> +	  will be called pwm-sl28cpld.
>> +
>>  config PWM_SPEAR
>>  	tristate "STMicroelectronics SPEAr PWM support"
>>  	depends on PLAT_SPEAR || COMPILE_TEST
>> diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
>> index a59c710e98c7..c479623724e8 100644
>> --- a/drivers/pwm/Makefile
>> +++ b/drivers/pwm/Makefile
>> @@ -41,6 +41,7 @@ obj-$(CONFIG_PWM_RENESAS_TPU)	+= pwm-renesas-tpu.o
>>  obj-$(CONFIG_PWM_ROCKCHIP)	+= pwm-rockchip.o
>>  obj-$(CONFIG_PWM_SAMSUNG)	+= pwm-samsung.o
>>  obj-$(CONFIG_PWM_SIFIVE)	+= pwm-sifive.o
>> +obj-$(CONFIG_PWM_SL28CPLD)	+= pwm-sl28cpld.o
>>  obj-$(CONFIG_PWM_SPEAR)		+= pwm-spear.o
>>  obj-$(CONFIG_PWM_SPRD)		+= pwm-sprd.o
>>  obj-$(CONFIG_PWM_STI)		+= pwm-sti.o
>> diff --git a/drivers/pwm/pwm-sl28cpld.c b/drivers/pwm/pwm-sl28cpld.c
>> new file mode 100644
>> index 000000000000..d82303f509f5
>> --- /dev/null
>> +++ b/drivers/pwm/pwm-sl28cpld.c
>> @@ -0,0 +1,201 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * sl28cpld PWM driver.
>> + *
>> + * Copyright 2019 Kontron Europe GmbH
> 
> This is out of date.

ok

> 
>> + */
>> +
>> +#include <linux/bitfield.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/of_device.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/pwm.h>
>> +#include <linux/regmap.h>
>> +
>> +/*
>> + * PWM timer block registers.
>> + */
>> +#define PWM_CTRL		0x00
>> +#define   PWM_ENABLE		BIT(7)
>> +#define   PWM_MODE_250HZ	0
>> +#define   PWM_MODE_500HZ	1
>> +#define   PWM_MODE_1KHZ		2
>> +#define   PWM_MODE_2KHZ		3
>> +#define   PWM_MODE_MASK		GENMASK(1, 0)
>> +#define PWM_CYCLE		0x01
>> +#define   PWM_CYCLE_MAX		0x7f
>> +
>> +struct sl28cpld_pwm {
>> +	struct pwm_chip pwm_chip;
>> +	struct regmap *regmap;
>> +	u32 offset;
>> +};
>> +
>> +struct sl28cpld_pwm_periods {
>> +	u8 ctrl;
>> +	unsigned long duty_cycle;
>> +};
>> +
>> +struct sl28cpld_pwm_config {
>> +	unsigned long period_ns;
>> +	u8 max_duty_cycle;
>> +};
> 
> Also, instead of hand rolling your own structure here, I think it
> would be prudent to re-use something that already exists.  Seeing as
> this will be used to describe possible state, perhaps 'struct
> pwm_state' would be suitable - leaving polarity and enabled
> unpopulated of course.
> 
> Ah wait (sorry, thinking allowed and on-the-fly here), what is
> max_duty_cycle here?  I assume this does not have the same
> meaning/value-type as the one in 'struct pwm_state'.  What does
> max_duty_cycle represent in your use-case?

Its the max value of the PWM_CYCLE register, with one exception
of the 250Hz mode. There it would be 0x7f; but it is used as a scaling
factor too. Thus I added the "fixup" below.

>> +static struct sl28cpld_pwm_config sl28cpld_pwm_config[] = {
>> +	[PWM_MODE_250HZ] = { .period_ns = 4000000, .max_duty_cycle = 0x80 },
>> +	[PWM_MODE_500HZ] = { .period_ns = 2000000, .max_duty_cycle = 0x40 },
>> +	[PWM_MODE_1KHZ] = { .period_ns = 1000000, .max_duty_cycle = 0x20 },
>> +	[PWM_MODE_2KHZ] = { .period_ns =  500000, .max_duty_cycle = 0x10 },
>> +};
> 
> Tiny nit: If you lined these up from the '{'s it would be easier to
> see/compare the period_ns values at first glance, rather than having
> to count the ' 's and '0's.

yep.

> 
>> +static inline struct sl28cpld_pwm *to_sl28cpld_pwm(struct pwm_chip 
>> *chip)
>> +{
>> +	return container_of(chip, struct sl28cpld_pwm, pwm_chip);
>> +}
> 
> Why not save yourself the trouble and just:
> 
>   struct sl28cpld_pwm *pwm = dev_get_drvdata(chip->dev);

looks better, yes.

> 
>> +static void sl28cpld_pwm_get_state(struct pwm_chip *chip,
>> +				   struct pwm_device *pwm,
>> +				   struct pwm_state *state)
>> +{
>> +	struct sl28cpld_pwm *spc = to_sl28cpld_pwm(chip);
>> +	static struct sl28cpld_pwm_config *config;
>> +	unsigned int reg;
>> +	unsigned long cycle;
> 
> Why is this 'long' here and 'long long' in *_apply()?

cycle has a max value of "u8_max * <defined ulong from config above>",
where below it might be "ulong * ulong". But for consinstency, I could
make it unsigned long long here, too.

>> +	unsigned int mode;
>> +
>> +	regmap_read(spc->regmap, spc->offset + PWM_CTRL, &reg);
>> +
>> +	state->enabled = reg & PWM_ENABLE;
>> +
>> +	mode = FIELD_GET(PWM_MODE_MASK, reg);
>> +	config = &sl28cpld_pwm_config[mode];
>> +	state->period = config->period_ns;
>> +
>> +	regmap_read(spc->regmap, spc->offset + PWM_CYCLE, &reg);
>> +	cycle = reg * config->period_ns;
>> +	state->duty_cycle = DIV_ROUND_CLOSEST_ULL(cycle,
>> +						  config->max_duty_cycle);
>> +}
>> +
>> +static int sl28cpld_pwm_apply(struct pwm_chip *chip, struct 
>> pwm_device *pwm,
>> +			      const struct pwm_state *state)
>> +{
>> +	struct sl28cpld_pwm *spc = to_sl28cpld_pwm(chip);
>> +	struct sl28cpld_pwm_config *config;
>> +	unsigned long long cycle;
>> +	int ret;
>> +	int mode;
>> +	u8 ctrl;
>> +
>> +	/* update config, first search best matching period */
> 
> Please use correct grammar (less full stops) in comments.

ok

> 
>> +	for (mode = 0; mode < ARRAY_SIZE(sl28cpld_pwm_config); mode++) {
>> +		config = &sl28cpld_pwm_config[mode];
>> +		if (state->period == config->period_ns)
>> +			break;
>> +	}
>> +
>> +	if (mode == ARRAY_SIZE(sl28cpld_pwm_config))
>> +		return -EINVAL;
>> +
>> +	ctrl = FIELD_PREP(PWM_MODE_MASK, mode);
>> +	if (state->enabled)
>> +		ctrl |= PWM_ENABLE;
>> +
>> +	cycle = state->duty_cycle * config->max_duty_cycle;
>> +	do_div(cycle, state->period);
> 
> Forgive my ignorance (I'm new here!), but what are these 2 lines
> doing?  Here we are multiplying the current duty_cycle with the
> maximum value, then dividing by the period.
> 
> So in the case of PWM_MODE_1KHZ with a 50% duty cycle, you'd have:
> 
>    (500000 * 0x20[16]) / 1000000 = [0x10]16
> 
> Thus, the above gives as a proportional representation of the maximum
> valid value for placement into the cycle control register(s), right?

correct.

> Either way (whether I'm correct or not), I think it would be nice to
> mention this in a comment.  Maybe even clarify with a simple example.

yes, I'll also look into the helper Andy mentioned. Thus it might be
even self explanatory.

>> +	/*
>> +	 * The hardware doesn't allow to set max_duty_cycle if the
>> +	 * 250Hz mode is enabled. But since this is "all-high" output
>> +	 * just use the 500Hz mode with the duty cycle to max value.
>> +	 */
>> +	if (cycle == config->max_duty_cycle) {
>> +		ctrl &= ~PWM_MODE_MASK;
>> +		ctrl |= FIELD_PREP(PWM_MODE_MASK, PWM_MODE_500HZ);
>> +		cycle = PWM_CYCLE_MAX;
>> +	}
> 
> This is being executed even when 250Hz mode is not enabled.
> 
> Is that by design?

Yes because the mode doesn't matter if you have a duty cycle of 100%.
You'd be free to choose any mode except 250Hz.

> If so, it doesn't match the comment.

Mh? Ok its a bit confusing and it might imply that this is only done
for the 250Hz case. But it doensn't mention it is _only_ used for this
mode.

/*
  * The hardware doesn't allow to set max_duty_cycle if the
  * 250Hz mode is enabled, thus we have to trap that here.
  * But because a 100% duty cycle is equal on all modes, i.e.
  * it is just a "all-high" output, we trap any case with a
  * 100% duty cycle and use the 500Hz mode.
  */

>> +	ret = regmap_write(spc->regmap, spc->offset + PWM_CTRL, ctrl);
>> +	if (ret)
>> +		return ret;
>> +
>> +	return regmap_write(spc->regmap, spc->offset + PWM_CYCLE, 
>> (u8)cycle);
>> +}
>> +
>> +static const struct pwm_ops sl28cpld_pwm_ops = {
>> +	.apply = sl28cpld_pwm_apply,
>> +	.get_state = sl28cpld_pwm_get_state,
>> +	.owner = THIS_MODULE,
>> +};
>> +
>> +static int sl28cpld_pwm_probe(struct platform_device *pdev)
>> +{
>> +	struct sl28cpld_pwm *pwm;
> 
> This is super confusing.  Here you call it 'pwm', but when you bring
> the data to the fore for consumption, you call it something different
> ('spc') for some reason.

yeah it is :(

> Is there logic behind this?

And no it is not. sorry for that.

>> +	struct pwm_chip *chip;
>> +	int ret;
>> +
>> +	if (!pdev->dev.parent)
>> +		return -ENODEV;
>> +
>> +	pwm = devm_kzalloc(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
>> +	if (!pwm)
>> +		return -ENOMEM;
>> +
>> +	pwm->regmap = dev_get_regmap(pdev->dev.parent, NULL);
>> +	if (!pwm->regmap)
>> +		return -ENODEV;
>> +
>> +	ret = device_property_read_u32(&pdev->dev, "reg", &pwm->offset);
> 
> Really?  Can you use the 'reg' property in this way?

Well formerly it was IORESOURCE_REG, which gives you a register offset,
see commit 72dcb1197228b ("resources: Add register address resource 
type").
There is also the of_get_address(), but I doubt that would be correct 
here,
because it does bus mapping etc.
So I looked at how other MFD drivers does it, most of the MFD have the
advantage of having fixed register offsets and then just use hardcoded
offsets. But there are some drivers which pull their offset out of the
reg property from the device tree itself.

$ grep -r "read_u32.*\"reg\"" drivers/
$ grep -r "read_u32.*\"reg\".*base" drivers/

Does anyone have a better idea?

> Side question:
>   Do any of your child address spaces actually overlap/intersect?

nope. they are distinct.

> 
>> +	if (ret)
>> +		return -EINVAL;
>> +
>> +	/* initialize struct pwm_chip */
> 
> Proper grammar please.
ok

> 
>> +	chip = &pwm->pwm_chip;
>> +	chip->dev = &pdev->dev;
>> +	chip->ops = &sl28cpld_pwm_ops;
>> +	chip->base = -1;
>> +	chip->npwm = 1;
>> +
>> +	ret = pwmchip_add(&pwm->pwm_chip);
>> +	if (ret < 0)
> 
> Is '> 0' even valid?
> 
> Suggest "!ret" here, as you have done above.

Yes, same comment as Andy had on the other patches.

>> +		return ret;
>> +
>> +	platform_set_drvdata(pdev, pwm);
>> +
>> +	return 0;
>> +}
>> +
>> +static int sl28cpld_pwm_remove(struct platform_device *pdev)
>> +{
>> +	struct sl28cpld_pwm *pwm = platform_get_drvdata(pdev);
>> +
>> +	return pwmchip_remove(&pwm->pwm_chip);
>> +}
>> +
>> +static const struct of_device_id sl28cpld_pwm_of_match[] = {
>> +	{ .compatible = "kontron,sl28cpld-pwm" },
>> +	{},
>> +};
>> +MODULE_DEVICE_TABLE(of, sl28cpld_pwm_of_match);
>> +
>> +static const struct platform_device_id sl28cpld_pwm_id_table[] = {
>> +	{"sl28cpld-pwm"},
> 
> Spaces either side of the "'s please.

ok

> 
>> +	{},
>> +};
>> +MODULE_DEVICE_TABLE(platform, sl28cpld_pwm_id_table);
> 
> What are you using this for?

They are from the time when these drivers were mfd_cells. But I wanted
to keep them here, if in the future there is another mfd driver which
uses these drivers.

>> +static struct platform_driver sl28cpld_pwm_driver = {
>> +	.probe = sl28cpld_pwm_probe,
>> +	.remove	= sl28cpld_pwm_remove,
>> +	.id_table = sl28cpld_pwm_id_table,
>> +	.driver = {
>> +		.name = KBUILD_MODNAME,
> 
> Please just use the quoted name in full.

Mhh, is there any rule for this? Sometimes KBUILD_MODNAME is used
and sometimes an hardcoded name. I thought KBUILD_MODNAME is nice
because it is filled automatically. And the platform probe use
the .id_table anyway.

>> +		.of_match_table = sl28cpld_pwm_of_match,
>> +	},
>> +};
>> +module_platform_driver(sl28cpld_pwm_driver);
>> +
>> +MODULE_DESCRIPTION("sl28cpld PWM Driver");
> 
> "SL28CPLD" ?

Actually no, I want to call that "sl28cpld". The first part
is "sl28" (not SL28) and sl28CPLD looks pretty weird. I tried
to be consistent on Kconfig/dt-bindings/drivers about this
naming.

>> +MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
>> +MODULE_LICENSE("GPL");

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
