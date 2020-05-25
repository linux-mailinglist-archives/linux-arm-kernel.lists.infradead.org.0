Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFF31E1378
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 19:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SOaz7XATvzfgMko5NpJJJoE28MwiQtBL24wRP+xrh6A=; b=N7KgmoO/zgIPQOxqJ7MDP7rkP
	WApnSv8Hx3K6v0OMMV77eAhvdrGEo4FLRBsIElD/RNissaSoDUy6pBqqZSYK/EUB4S7H37MptLTSG
	SGZM3JTzlVczLVLYJ7SjgKpePFylGBaNr84pSElOzSoDEJrxGZWv8MOHeRzM+QZunIZJyxAstFRtF
	rK2oInDfFxjvQ1pNrtgbKCyH2dODEmrZRKLpUXHfmbcy3Dv6PYeBtNfEz8778h3hThLRqN3aDgl54
	O8D41B8V810cDhIF3f28A+RfXJmIwgnyNpcu59s8J+pVqh5cfhFPyaY+TW6xt0HFm1u7s6gyc7K+8
	RgmM//njw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdH1l-00085H-N2; Mon, 25 May 2020 17:36:41 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdH1e-00084Z-23
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 17:36:36 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id DDEC922F2E;
 Mon, 25 May 2020 19:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1590428188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tccD7vzIYEWi1bFmktWHDapg7/kSp29lv3VkLLvN1aI=;
 b=f6dMxTFgq0dv3WcoUWQY3lGpKEI1zRaAo5vQ4eXD9W5/1IcgsbkQs2IprvSdGhntzf7+3s
 VjDUBiP0Ohl+I7F/gjvbCkc+SOXy34S18pA/Vg+5sV+GUZVZ6tYqTNQJ4NOoGbVDgMncOV
 VXE73fAV7Jnjk0n8FxO++uqxK4wM9EM=
MIME-Version: 1.0
Date: Mon, 25 May 2020 19:36:27 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
In-Reply-To: <20200515102848.GH271301@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc> <20200515102848.GH271301@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <159e68b4ce53630ef906b2fcbca925bd@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_103634_393923_0C946A2C 
X-CRM114-Status: GOOD (  27.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-watchdog@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-05-15 12:28, schrieb Lee Jones:
> On Thu, 30 Apr 2020, Michael Walle wrote:
> 
>> Hi Lee,
>> 
>> Am 2020-04-23 19:45, schrieb Michael Walle:
>> > There might be multiple children with the device tree compatible, for
>> > example if a MFD has multiple instances of the same function. In this
>> > case only the first is matched and the other children get a wrong
>> > of_node reference.
>> > Add a new option to match also against the unit address of the child
>> > node. Additonally, a new helper OF_MFD_CELL_REG is added.
>> 
>> 
>> Do you think this is feasible? I guess this is the biggest uncertainty
>> for me at the moment in this patch series.
> 
> I think it sounds fine in principle.  So long as it doesn't change the
> existing behaviour when of_reg isn't set.
> 
>> > Signed-off-by: Michael Walle <michael@walle.cc>
>> > ---
>> >  drivers/mfd/mfd-core.c   | 29 ++++++++++++++++++++---------
>> >  include/linux/mfd/core.h | 26 ++++++++++++++++++++------
>> >  2 files changed, 40 insertions(+), 15 deletions(-)
>> >
>> > diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
>> > index e735565969b3..4ecb376338f7 100644
>> > --- a/drivers/mfd/mfd-core.c
>> > +++ b/drivers/mfd/mfd-core.c
>> > @@ -117,6 +117,7 @@ static int mfd_add_device(struct device *parent, int
>> > id,
>> >  	struct device_node *np = NULL;
>> >  	int ret = -ENOMEM;
>> >  	int platform_id;
>> > +	u32 of_reg;
>> >  	int r;
>> >
>> >  	if (id == PLATFORM_DEVID_AUTO)
>> > @@ -151,16 +152,26 @@ static int mfd_add_device(struct device *parent,
>> > int id,
>> >
>> >  	if (parent->of_node && cell->of_compatible) {
>> >  		for_each_child_of_node(parent->of_node, np) {
>> > -			if (of_device_is_compatible(np, cell->of_compatible)) {
>> > -				if (!of_device_is_available(np)) {
>> > -					/* Ignore disabled devices error free */
>> > -					ret = 0;
>> > -					goto fail_alias;
>> > -				}
>> > -				pdev->dev.of_node = np;
>> > -				pdev->dev.fwnode = &np->fwnode;
>> > -				break;
>> > +			if (!of_device_is_compatible(np, cell->of_compatible))
>> > +				continue;
>> > +
>> > +			/* also match the unit address if set */
> 
> Please use correct grammar in comments (leaving off the full-stop).
> 
>> > +			if (cell->of_reg & MFD_OF_REG_VALID) {
>> > +				if (of_property_read_u32(np, "reg", &of_reg))
>> > +					continue;
>> > +				if ((cell->of_reg & MFD_OF_REG_MASK) != of_reg)
>> > +					continue;
>> >  			}
>> > +
>> > +			if (!of_device_is_available(np)) {
>> > +				/* Ignore disabled devices error free */
>> > +				ret = 0;
>> > +				goto fail_alias;
>> > +			}
>> > +
>> > +			pdev->dev.of_node = np;
>> > +			pdev->dev.fwnode = &np->fwnode;
>> > +			break;
>> >  		}
>> >  	}
>> >
>> > diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
>> > index d01d1299e49d..c2c0ad6b14f3 100644
>> > --- a/include/linux/mfd/core.h
>> > +++ b/include/linux/mfd/core.h
>> > @@ -13,8 +13,11 @@
>> >  #include <linux/platform_device.h>
>> >
>> >  #define MFD_RES_SIZE(arr) (sizeof(arr) / sizeof(struct resource))
>> > +#define MFD_OF_REG_VALID	BIT(31)
> 
> What about 64bit platforms?

The idea was to have this as a logical number. I.e. for now you may only
have one subdevice per unique compatible string. In fact, if you have a
look at the ab8500.c, there are multiple "stericsson,ab8500-pwm"
subdevices. But there is only one DT node for all three of it. I guess
this works as long as you don't use phandles to reference the pwm node
in the device tree. Or you don't want to use device tree properties
per subdevice (for example the "timeout-sec" of a watchdog device).

So to circumvent this, I thought of having the unit-address (and thus
the "reg" property) to differentiate between multiple subdevices. Now
there is one special case for me: this board management controller
might be upgradable and it might change internally. Thus I came up
with that logical numbering of subdevices. Rob doesn't seem to be a
fan of that, though. Therefore, having bit 31 as a valid indicator
leaves you with 2^31 logical devices, which should be enough ;)

Rob proposed to have the internal offset as the unit-address. But
in that case I can also use devm_of_platform_populate() and don't
need the OF_MFD_CELL_REG; I'd just parse the reg offset in each
individual subdevice driver. But like I said, I wanted to keep the
internal offsets out of the device tree.

-michael

> 
>> > +#define MFD_OF_REG_MASK		GENMASK(30, 0)
>> >
>> > -#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat,
>> > _match)\
>> > +#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat,	\
>> > +		     _of_reg, _match)					\
>> >  	{								\
>> >  		.name = (_name),					\
>> >  		.resources = (_res),					\
>> > @@ -22,24 +25,32 @@
>> >  		.platform_data = (_pdata),				\
>> >  		.pdata_size = (_pdsize),				\
>> >  		.of_compatible = (_compat),				\
>> > +		.of_reg = (_of_reg),					\
>> >  		.acpi_match = (_match),					\
>> >  		.id = (_id),						\
>> >  	}
>> >
>> > +#define OF_MFD_CELL_REG(_name, _res, _pdata, _pdsize, _id, _compat,	\
>> > +			_of_reg)					\
>> > +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat,	\
>> > +		     ((_of_reg) | MFD_OF_REG_VALID), NULL)		\
>> > +
>> >  #define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat)		\
>> > -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)	\
>> > +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat,	\
>> > +		     0, NULL)						\
>> >
>> >  #define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match)	\
>> > -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)	\
>> > +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0,	\
>> > +		     _match)						\
>> >
>> >  #define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id)		\
>> > -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)	\
>> > +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, NULL) \
>> >
>> >  #define MFD_CELL_RES(_name, _res)					\
>> > -	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)		\
>> > +	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, 0, NULL)		\
>> >
>> >  #define MFD_CELL_NAME(_name)						\
>> > -	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)		\
>> > +	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, 0, NULL)		\
>> >
>> >  struct irq_domain;
>> >  struct property_entry;
>> > @@ -78,6 +89,9 @@ struct mfd_cell {
>> >  	 */
>> >  	const char		*of_compatible;
>> >
>> > +	/* matching the reg property if set */
> 
> Proper grammar please.
> 
> "OF unit address for device matching"
> 
>> > +	unsigned int		of_reg;
>> > +
>> >  	/* Matches ACPI */
>> >  	const struct mfd_cell_acpi_match	*acpi_match;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
