Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CA11F4F90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sT/I4MlsZsR1l8j9DANfMzkHXODwD1nw+WWXpJfuKX4=; b=dpe02y0tTDpsCnXJ950NDrudQ
	dtO1K8K6ZwSxjM8/tAbSKUbT7QDNgFnWrfeJ4yRLb0jJ7fvk8dMSVojZtX5Md/PRKdF44PHCdfdVG
	8TgMDSjPAvDVh+qC4aRVCPmNTPOsRRO1gBCkMcx0H+zYWwkmhiB4LTeshnAH/f6dlMMxQVpDsld35
	8u2cGT4SetJsZVFRtsjDxN+0skJrdlSVY/pmGmn+UsqE5Y4CSGAcdmJP7VoeBjoDvk072zNkY3KTL
	r9EDdPN+Ho/tb8NTmXzMWyZ1yfF00BGrAMGE/NqEEM7ntYCIymcA+bb2sPIfxrw0YZZGE5zRn9mNd
	LKEAu7/Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivU5-0001In-4R; Wed, 10 Jun 2020 07:49:17 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivTw-0001IA-8a
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:49:10 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 1A02022FAC;
 Wed, 10 Jun 2020 09:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591775344;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EpiWQe7sIJRbI+UfNTOW4odZUYl2nUaDudurz82UFR4=;
 b=WoEXRz5Ol7yHvA4TIamouQM2IQMbMH2HE/Qr6GVUTJt9HQPASS0WLM+XW8xImuPncHHkVE
 gqUr1OWarLyGqYIrwQgyBJlmXzmhVALtKvHmFIfqlPJDI30cHCG+tiR3VcbPYTHydnfr3o
 jIs0QOf9YOPE23Flqsw8nBaumSkKuNI=
MIME-Version: 1.0
Date: Wed, 10 Jun 2020 09:49:04 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <20200610071940.GS4106@dell>
References: <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc> <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc> <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc> <20200609151941.GM4106@dell>
 <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc> <20200609194505.GQ4106@dell>
 <3a6931248f0efcaf8efbb5425a9bd833@walle.cc> <20200610071940.GS4106@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <f7b2b690750edd022000ab56d2f58154@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_004908_621383_424BDD78 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K?= =?UTF-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, david.m.ertman@intel.com,
 Guenter Roeck <linux@roeck-us.net>, devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-10 09:19, schrieb Lee Jones:
> On Wed, 10 Jun 2020, Michael Walle wrote:
>> Am 2020-06-09 21:45, schrieb Lee Jones:
>> > On Tue, 09 Jun 2020, Michael Walle wrote:
>> > > > We do not need a 'simple-regmap' solution for your use-case.
>> > > >
>> > > > Since your device's registers are segregated, just split up the
>> > > > register map and allocate each sub-device with it's own slice.
>> > >
>> > > I don't get it, could you make a device tree example for my
>> > > use-case? (see also above)
>> >
>> >     &i2cbus {
>> >         mfd-device@10 {
>> >             compatible = "simple-mfd";
>> >             reg = <10>;
>> >
>> >             sub-device@10 {
>> >                 compatible = "vendor,sub-device";
>> >                 reg = <10>;
>> >             };
>> >    };
>> >
>> > The Regmap config would be present in each of the child devices.
>> >
>> > Each child device would call devm_regmap_init_i2c() in .probe().
>> 
>> Ah, I see. If I'm not wrong, this still means to create an i2c
>> device driver with the name "simple-mfd".
> 
> Yes, it does.
> 
>> Besides that, I don't like this, because:
>>  - Rob already expressed its concerns with "simple-mfd" and so on.
> 
> Where did this take place?  I'd like to read up on this.

In this thread:
https://lore.kernel.org/linux-devicetree/20200604211039.12689-1-michael@walle.cc/T/#m16fdba5962069e7cd4aa817582ee358c9fe2ecbf

> 
>>  - you need to duplicate the config in each sub device
> 
> You can have a share a single config.
> 
>>  - which also means you are restricting the sub devices to be
>>    i2c only (unless you implement and duplicate other regmap configs,
>>    too). For this driver, SPI and MMIO may be viable options.
> 
> You could also have a shared implementation to choose between different
> busses.

Then what is the difference between to have this shared config in the
parent driver only and use the functions which are already there, i.e.
dev_get_regmap(parent). But see, below, I'll wait with what you're
coming up.

> 
>> Thus, I'd rather implement a simple-mfd.c which implement a common
>> I2C driver for now and populate its children using
>> devm_of_platform_populate(). This could be extended to support other
>> type of regmaps like SPI in the future.
>> 
>> Also some MFD drivers could be moved to this, a likely candidate is
>> the smsc-ece1099.c. Although I don't really understand its purpose,
>> if don't have CONFIG_OF.
>> 
>> Judging from the existing code, this simple-mfd.c wouldn't just be
>> "a list of compatible" strings but also additional quirks and tweaks
>> for particular devices in this list.
> 
> Hold off on the simple-mfd.c idea, as I'm not taken by it yet and
> wouldn't want you to waste your time.  I have another idea which would
> help.  Give me a few days to put something together.

Sure. I'm just glad there is now a discussion about this issue.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
