Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92251D21D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 00:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vFPk9aIJy+ka8xtbnpsA5M9ixijLzSaZJeUBrSgzy80=; b=LaYa+YCDIzbY3+cVSzkNIpMUh
	F9/UIo0bOu6MabDiu8yDr7sxze5IpEA5Lo9ZTNqfcXirSOP9eUJjhc3LKuBdqCVyUxoU/gmmL3Nhq
	Nzub0n2Oxa8eB13HNdQR+4MQO+K2r6+7Oi9ZixJJmL9TIJqPXxTF65cPwquiBOyAwaKTwQkbFO2v6
	5nQcyMxqyOeqvUuVY///kWNZzEGF9UNMDJmgpvYb37/vMhnf83IEirp6wU1S1KYqBkAkBrFssy7DR
	p/WJStIA1Nm2mv9EqkIkkeMzeAbS66zMobQw712q+WIr4RV/3QNKZMitE/l6abqNuk+atmyG7vtpy
	dFBQxytaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYzfc-0001j2-1m; Wed, 13 May 2020 22:16:08 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYzf9-0001W4-Tq
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 22:15:43 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 5752922FEC;
 Thu, 14 May 2020 00:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1589408125;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IjMyCHfdnLjEuVo++xDGBWjambq+Fde/qc+KEJNfdSc=;
 b=eKf0mnWxRhNAeHVKoNWCeiV9u0yLpbJAusnkLK3vNXKHhQeGeNYWKXQ++zSpwJbX38tbdU
 2EJap+54vaZnLGcacA4UH6AZs5fGtsgB2NmyXR2hFOrHme+LDvtC1sdogLUw19sHNQKzAs
 BwssZiT/tIG61qYJfOLJ1Eowufi8hK0=
MIME-Version: 1.0
Date: Thu, 14 May 2020 00:15:22 +0200
From: Michael Walle <michael@walle.cc>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 05/16] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <CAL_JsqJBAghgdKmH1OfpH0B508st7Gx3GMtjufjZvBWM_c6GAQ@mail.gmail.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-6-michael@walle.cc> <20200511211359.GB3518@bogus>
 <f0fafa63047f00e912013b137e4db15c@walle.cc>
 <CAL_JsqJBAghgdKmH1OfpH0B508st7Gx3GMtjufjZvBWM_c6GAQ@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <c170d7ad3874567e624bb827c1eac661@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_151540_260300_E5F63CC1 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>, "open list:GPIO
 SUBSYSTEM" <linux-gpio@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux HWMON List <linux-hwmon@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-05-12 23:59, schrieb Rob Herring:
> On Mon, May 11, 2020 at 4:45 PM Michael Walle <michael@walle.cc> wrote:
>> 
>> Am 2020-05-11 23:13, schrieb Rob Herring:
>> > On Thu, Apr 23, 2020 at 07:45:32PM +0200, Michael Walle wrote:
>> >> +#define SL28CPLD_VERSION    0x03
>> >> +#define SL28CPLD_WATCHDOG_BASE      0x04
>> >> +#define SL28CPLD_HWMON_FAN_BASE     0x0b
>> >> +#define SL28CPLD_PWM0_BASE  0x0c
>> >> +#define SL28CPLD_PWM1_BASE  0x0e
>> >> +#define SL28CPLD_GPIO0_BASE 0x10
>> >> +#define SL28CPLD_GPIO1_BASE 0x15
>> >> +#define SL28CPLD_GPO_BASE   0x1a
>> >> +#define SL28CPLD_GPI_BASE   0x1b
>> >> +#define SL28CPLD_INTC_BASE  0x1c
>> >
>> > If you want to use 'reg' in the binding, these are the numbers you
>> > should be using rather than making up numbering!
>> 
>> My motivation is that I don't want to hardcode the internal addresses
>> of the management controller in the device tree. For example if they
>> will move around with a later update of the controller, so a driver 
>> can
>> be compatible with both the old and the new version. If they are in 
>> the
>> device tree, only one register layout is possible.
> 
> I don't understand, if the addresses change, then the above defines
> have to change. So your driver is only compatible with 1 version. If
> you change the CPLD, then that's a h/w change and your h/w description
> (DT) should change. That can either be the compatible string changing
> and updating the driver with new match data such as register offsets
> or all the differences are in DT and there's no kernel change.

The CPLD and the board is designed in a way that it is possible to
update and/or change its function (or parts of it). It must not be
a hardware change, although I admit thats a bit of a grey area wether
you treat it as hardware or "firmware". Anyway, yes you'd have to
change the register offsets, but as this is code it might support
different register offsets. For example you could dynamically add
functionality, if there is a newer controller version while still
being compatible with older versions.

>> > However, I still don't think you need any child nodes. All the data in
>> > the DT binding is right here in the driver already. There's no
>> > advantage
>> > to putting child nodes in DT, because this driver still has to be
>> > updated if you add more nodes.
>> 
>> But then any phandle will reference the mfd device. And for example
>> there
>> are two different interrupt controllers, that is the INTC and the
>> GPIO[01],
>> which will then be combined into one device tree node, right?
> 
> You either have to add a cell for 'bank' or divide the 1st cell into a
> bank and index. Both have been done before.

But this won't work with watchdogs, correct? See
https://lore.kernel.org/linux-devicetree/7acbb6d9b2240b1856136fa35c1318bf@walle.cc/

> To go the other direction, AIUI you shouldn't need OF_MFD_CELL_REG
> entries if you have the child devices in DT.

This is a general problem IMHO. There are mfd drivers which have mfd
cells and a device tree node associated with each cell. But it just
works as long as there is only one sub device per unique compatible
string. So you cannot have multiple mfd cells with the same
compatible string.

That being said, I can try to reimplement it using
of_platform_populate() and its internal offset as its unit address.

> Pick one way or the
> other. It's ultimately a judgement call. For a one-off device, sub
> devices in DT doesn't really buy you anything. If you have sub-blocks
> showing up multiple devices, then sub devices makes sense. If there's
> only 2-3 combinations, then it's a toss up.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
