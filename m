Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3474A1CE81A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 00:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C2ZGhyUvE8lznTQnV3PyFChKr8xfTnZDMOVyBCsM3MQ=; b=uLfZnzXS4JCqs/V7dlSSfz0oz
	+btS13l6T0VGxHVtz/aESctJaKfll7r0q7JlTcw/q2nMCyYvUGvQbevOrcvN+sZUSLhhPJTr7DZNu
	kxnCx+4j1YMMMLmF/YI/f/hEWz90fnIh4busxEkrv5WqBf/4uyYYcauVQbRRTy//4yAKybLB+SuJS
	KGT642LFDHarPn7yLC8iup22QBcm6I3KVgEhpLItF2s0f9JdyJv1f13RZSsTc8Nb/Z5JLSuQEjfLg
	7MNcP+mSwBUI/l2X5p8NbiNM7x75wKu/0LU5siqCyiK72tqf+2Pwvs71uvqHCY+UbN0ur+QmHDlsO
	HN1PklWkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYGvv-0002Cu-GU; Mon, 11 May 2020 22:29:59 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYGvn-0002CH-GB
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 22:29:53 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id E950223E4D;
 Tue, 12 May 2020 00:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1589236187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZWtR9bzSYXnNm25amIJ9C/96FTsepP7H5IrzZ9zpG/A=;
 b=YdDVOLeZBQ34l+NCgbOJbibwaRMlbhkryBPCyVboFq3OoIIcwGhTb4bpx1oqBWsLm0T3Ny
 CZp5yyu0djrMsi4kOWfKCfNplFlS7gp1ntDK+bdoeton2uRftwbJISw7i+6IVo7b7aosbu
 kNxvxZ/YLMcP4rurnW92mHmhw4rdMek=
MIME-Version: 1.0
Date: Tue, 12 May 2020 00:29:46 +0200
From: Michael Walle <michael@walle.cc>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 05/16] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <f0fafa63047f00e912013b137e4db15c@walle.cc>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-6-michael@walle.cc> <20200511211359.GB3518@bogus>
 <f0fafa63047f00e912013b137e4db15c@walle.cc>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <7acbb6d9b2240b1856136fa35c1318bf@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_152951_849659_1563A8C2 
X-CRM114-Status: GOOD (  27.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-05-11 23:44, schrieb Michael Walle:
> Am 2020-05-11 23:13, schrieb Rob Herring:
>> On Thu, Apr 23, 2020 at 07:45:32PM +0200, Michael Walle wrote:
>>> This patch adds core support for the board management controller 
>>> found
>>> on the SMARC-sAL28 board. It consists of the following functions:
>>>  - watchdog
>>>  - GPIO controller
>>>  - PWM controller
>>>  - fan sensor
>>>  - interrupt controller
>>> 
>>> At the moment, this controller is used on the Kontron SMARC-sAL28 
>>> board.
>>> 
>>> Please note that the MFD driver is defined as bool in the Kconfig
>>> because the next patch will add interrupt support.
>>> 
>>> Signed-off-by: Michael Walle <michael@walle.cc>
>>> ---
>>>  drivers/mfd/Kconfig    |  19 +++++
>>>  drivers/mfd/Makefile   |   2 +
>>>  drivers/mfd/sl28cpld.c | 153 
>>> +++++++++++++++++++++++++++++++++++++++++
>>>  3 files changed, 174 insertions(+)
>>>  create mode 100644 drivers/mfd/sl28cpld.c
>>> 
>>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>>> index 0a59249198d3..be0c8d93c526 100644
>>> --- a/drivers/mfd/Kconfig
>>> +++ b/drivers/mfd/Kconfig
>>> @@ -2060,5 +2060,24 @@ config SGI_MFD_IOC3
>>>  	  If you have an SGI Origin, Octane, or a PCI IOC3 card,
>>>  	  then say Y. Otherwise say N.
>>> 
>>> +config MFD_SL28CPLD
>>> +	bool "Kontron sl28 core driver"
>>> +	depends on I2C=y
>>> +	depends on OF
>>> +	select REGMAP_I2C
>>> +	select MFD_CORE
>>> +	help
>>> +	  This option enables support for the board management controller
>>> +	  found on the Kontron sl28 CPLD. You have to select individual
>>> +	  functions, such as watchdog, GPIO, etc, under the corresponding 
>>> menus
>>> +	  in order to enable them.
>>> +
>>> +	  Currently supported boards are:
>>> +
>>> +		Kontron SMARC-sAL28
>>> +
>>> +	  To compile this driver as a module, choose M here: the module 
>>> will be
>>> +	  called sl28cpld.
>>> +
>>>  endmenu
>>>  endif
>>> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
>>> index f935d10cbf0f..9bc38863b9c7 100644
>>> --- a/drivers/mfd/Makefile
>>> +++ b/drivers/mfd/Makefile
>>> @@ -259,3 +259,5 @@ obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
>>>  obj-$(CONFIG_MFD_STMFX) 	+= stmfx.o
>>> 
>>>  obj-$(CONFIG_SGI_MFD_IOC3)	+= ioc3.o
>>> +
>>> +obj-$(CONFIG_MFD_SL28CPLD)	+= sl28cpld.o
>>> diff --git a/drivers/mfd/sl28cpld.c b/drivers/mfd/sl28cpld.c
>>> new file mode 100644
>>> index 000000000000..1e5860cc7ffc
>>> --- /dev/null
>>> +++ b/drivers/mfd/sl28cpld.c
>>> @@ -0,0 +1,153 @@
>>> +// SPDX-License-Identifier: GPL-2.0-only
>>> +/*
>>> + * MFD core for the sl28cpld.
>>> + *
>>> + * Copyright 2019 Kontron Europe GmbH
>>> + */
>>> +
>>> +#include <linux/i2c.h>
>>> +#include <linux/interrupt.h>
>>> +#include <linux/kernel.h>
>>> +#include <linux/mfd/core.h>
>>> +#include <linux/module.h>
>>> +#include <linux/of_platform.h>
>>> +#include <linux/regmap.h>
>>> +
>>> +#define SL28CPLD_VERSION	0x03
>>> +#define SL28CPLD_WATCHDOG_BASE	0x04
>>> +#define SL28CPLD_HWMON_FAN_BASE	0x0b
>>> +#define SL28CPLD_PWM0_BASE	0x0c
>>> +#define SL28CPLD_PWM1_BASE	0x0e
>>> +#define SL28CPLD_GPIO0_BASE	0x10
>>> +#define SL28CPLD_GPIO1_BASE	0x15
>>> +#define SL28CPLD_GPO_BASE	0x1a
>>> +#define SL28CPLD_GPI_BASE	0x1b
>>> +#define SL28CPLD_INTC_BASE	0x1c
>> 
>> If you want to use 'reg' in the binding, these are the numbers you
>> should be using rather than making up numbering!
> 
> My motivation is that I don't want to hardcode the internal addresses
> of the management controller in the device tree. For example if they
> will move around with a later update of the controller, so a driver can
> be compatible with both the old and the new version. If they are in the
> device tree, only one register layout is possible.
> 
>> However, I still don't think you need any child nodes. All the data in
>> the DT binding is right here in the driver already. There's no 
>> advantage
>> to putting child nodes in DT, because this driver still has to be
>> updated if you add more nodes.
> 
> But then any phandle will reference the mfd device. And for example 
> there
> are two different interrupt controllers, that is the INTC and the 
> GPIO[01],
> which will then be combined into one device tree node, right?
> 
> So the mfd node would be
> 
> cpld: sl28cpld@4a {
>   interrupt-controller;
>   #interrupt-cells = <2>;
>   gpio-controller;
>   #gpio-cells = <2>;
>   [..]
> };
> 
> and then depending on the mapping one could use:
> 
> interrupts-extended = <&cpld 0 FLAGS>; /* gpio0 line 0 */
> interrupts-extended = <&cpld 8 FLAGS>; /* gpio1 line 0 */
> interrupts-extended = <&cpld 12 FLAGS>; /* irq0 */
> 
> gpios = <&cpld 0> /* gpio0 line 0 */
> 
> But there is also offset 12, but then it is the GPI controller:
> 
> gpios = <&cpld 12> /* gpi line 0, nothing to do with irq0 */
> 
> I don't know if this is good practice, I guess you have to tell me. And
> is it possible to combine any sub device into the mfd node in that way?

Oh I don't think that will work for the watchdog. If you just have one
watchdog it just looks odd.

cpld: sl28cpld@4a {
    interrupt-controller;
    #interrupt-cells = <2>;
    gpio-controller;
    #gpio-cells = <2>;
    timeout-sec = <10>; /* watchdog property */
};

And won't pass the dtbindings check because the nodename is not
"watchdog(@[0-9]+)?". But it really falls short if you want to have
two watchdogs with different properties.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
