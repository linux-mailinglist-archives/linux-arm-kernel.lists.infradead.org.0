Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC41C1BEC03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wsgUEfHPlf6Shd7OpgKIyrAyLuqCj5fXO06B0hInq14=; b=hPjj6uAG8WPtfHjEAgsaEGRYf
	Oit4yiBN2SfVgdAj9cfX8KWiRgSr+/Jrj3x4ovxS/Trevm+/LQx0A8Izl1h7tNkCroXvd/3gEH+EU
	PAZjac+RCpre+VS6H4y0oEiPiMMHRKINVyXuSF7E65z6mOGls9erZlCFwfJMBzIBXvP39UgXHjWaY
	yJz2rqbDMxQFyIYZFvkw5PXGpg0PiyBaYmyJ1jHvdhzsLE1jeDFD+SWCKqorXIRmn8zLILGxySewW
	/LQaYmGKx7u5gLyHruTfrLkYGqRZUmq/R5FhR187eyNHMuwTM9xMuW4S43n+17Bob1oxYo2efs/eM
	0TDHC6V6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTv30-0002zC-AT; Wed, 29 Apr 2020 22:19:18 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTv2k-0002wp-Il
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 22:19:04 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id CC72422F54;
 Thu, 30 Apr 2020 00:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1588198733;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OmNmiJrBqjSomX4a3GYQTKJyBa1w0mCqW3xG6X4r7JU=;
 b=Z/PwLy3ofPJI0xZH8IT5HibD+o80mve3lOqDxmcoLl5fAWYxiphkS3L+FlMZ3hwjqkPVXe
 FWyxmaG79Gwm3M+Y76olNlSWLCYjY+suQcs/NAmXlgNRFpGqjE3p9qgeG7IWOdSSjMV0EB
 tuVu73gv8gmi36GFiF4+cMEP6WC8huQ=
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 00:18:48 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
In-Reply-To: <20200423174543.17161-4-michael@walle.cc>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
Message-ID: <67e90dafd67c285158c2c6f67f92edb7@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: CC72422F54
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[linux.intel.com,linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org,vger.kernel.org,lists.infradead.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_151902_995257_175D2097 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Lee,

Am 2020-04-23 19:45, schrieb Michael Walle:
> There might be multiple children with the device tree compatible, for
> example if a MFD has multiple instances of the same function. In this
> case only the first is matched and the other children get a wrong
> of_node reference.
> Add a new option to match also against the unit address of the child
> node. Additonally, a new helper OF_MFD_CELL_REG is added.


Do you think this is feasible? I guess this is the biggest uncertainty
for me at the moment in this patch series.

-michael

> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/mfd/mfd-core.c   | 29 ++++++++++++++++++++---------
>  include/linux/mfd/core.h | 26 ++++++++++++++++++++------
>  2 files changed, 40 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index e735565969b3..4ecb376338f7 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -117,6 +117,7 @@ static int mfd_add_device(struct device *parent, 
> int id,
>  	struct device_node *np = NULL;
>  	int ret = -ENOMEM;
>  	int platform_id;
> +	u32 of_reg;
>  	int r;
> 
>  	if (id == PLATFORM_DEVID_AUTO)
> @@ -151,16 +152,26 @@ static int mfd_add_device(struct device *parent, 
> int id,
> 
>  	if (parent->of_node && cell->of_compatible) {
>  		for_each_child_of_node(parent->of_node, np) {
> -			if (of_device_is_compatible(np, cell->of_compatible)) {
> -				if (!of_device_is_available(np)) {
> -					/* Ignore disabled devices error free */
> -					ret = 0;
> -					goto fail_alias;
> -				}
> -				pdev->dev.of_node = np;
> -				pdev->dev.fwnode = &np->fwnode;
> -				break;
> +			if (!of_device_is_compatible(np, cell->of_compatible))
> +				continue;
> +
> +			/* also match the unit address if set */
> +			if (cell->of_reg & MFD_OF_REG_VALID) {
> +				if (of_property_read_u32(np, "reg", &of_reg))
> +					continue;
> +				if ((cell->of_reg & MFD_OF_REG_MASK) != of_reg)
> +					continue;
>  			}
> +
> +			if (!of_device_is_available(np)) {
> +				/* Ignore disabled devices error free */
> +				ret = 0;
> +				goto fail_alias;
> +			}
> +
> +			pdev->dev.of_node = np;
> +			pdev->dev.fwnode = &np->fwnode;
> +			break;
>  		}
>  	}
> 
> diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
> index d01d1299e49d..c2c0ad6b14f3 100644
> --- a/include/linux/mfd/core.h
> +++ b/include/linux/mfd/core.h
> @@ -13,8 +13,11 @@
>  #include <linux/platform_device.h>
> 
>  #define MFD_RES_SIZE(arr) (sizeof(arr) / sizeof(struct resource))
> +#define MFD_OF_REG_VALID	BIT(31)
> +#define MFD_OF_REG_MASK		GENMASK(30, 0)
> 
> -#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, 
> _match)\
> +#define MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat,	\
> +		     _of_reg, _match)					\
>  	{								\
>  		.name = (_name),					\
>  		.resources = (_res),					\
> @@ -22,24 +25,32 @@
>  		.platform_data = (_pdata),				\
>  		.pdata_size = (_pdsize),				\
>  		.of_compatible = (_compat),				\
> +		.of_reg = (_of_reg),					\
>  		.acpi_match = (_match),					\
>  		.id = (_id),						\
>  	}
> 
> +#define OF_MFD_CELL_REG(_name, _res, _pdata, _pdsize, _id, _compat,	\
> +			_of_reg)					\
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat,	\
> +		     ((_of_reg) | MFD_OF_REG_VALID), NULL)		\
> +
>  #define OF_MFD_CELL(_name, _res, _pdata, _pdsize,_id, _compat)		\
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat, NULL)	\
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, _compat,	\
> +		     0, NULL)						\
> 
>  #define ACPI_MFD_CELL(_name, _res, _pdata, _pdsize, _id, _match)	\
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, _match)	\
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0,	\
> +		     _match)						\
> 
>  #define MFD_CELL_BASIC(_name, _res, _pdata, _pdsize, _id)		\
> -	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, NULL)	\
> +	MFD_CELL_ALL(_name, _res, _pdata, _pdsize, _id, NULL, 0, NULL) \
> 
>  #define MFD_CELL_RES(_name, _res)					\
> -	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, NULL)		\
> +	MFD_CELL_ALL(_name, _res, NULL, 0, 0, NULL, 0, NULL)		\
> 
>  #define MFD_CELL_NAME(_name)						\
> -	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, NULL)		\
> +	MFD_CELL_ALL(_name, NULL, NULL, 0, 0, NULL, 0, NULL)		\
> 
>  struct irq_domain;
>  struct property_entry;
> @@ -78,6 +89,9 @@ struct mfd_cell {
>  	 */
>  	const char		*of_compatible;
> 
> +	/* matching the reg property if set */
> +	unsigned int		of_reg;
> +
>  	/* Matches ACPI */
>  	const struct mfd_cell_acpi_match	*acpi_match;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
