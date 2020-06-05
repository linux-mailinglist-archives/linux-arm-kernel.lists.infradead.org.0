Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D371EF507
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6j/p6fyrFC18Rb9UJSVBjGDNU2Iv+/CimsdEY1gy1DI=; b=bLSTkZ+Rn7t+KXd0j19xeLRn3
	p3lF6028tgLwwXDEGgwNJUcr8uOJxUGa3LsJHl6dlhVk41eCC1+DAc5P6wpv1+5JK4LVwZPr1oZaE
	nNKOU1IlD2EA+NRtz6+KMiLAQ0gB/ApKlXg+SHJgKiMpuorHUXx4hq00TtywZXKMqQTeNNllPy7HY
	sf+R3BXf33H4VbKO5bQtF7b/Abt0zEwCb9eVmnwBfXu54CD9FoS4jiEulQHNMyFyGOjhv4HyZt83X
	QgaCmxe3wH6GTyOAtuJZGoBQPdVTqbY8qVrmw6a9LNp7NPY3iyvVIkzGXZOvVsg9t/GSPHOwdVqEQ
	a1HgQgiuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9Hw-0001CT-OY; Fri, 05 Jun 2020 10:09:24 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9Hp-0001Bk-Rp
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:09:19 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id C88EF22EE4;
 Fri,  5 Jun 2020 12:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591351756;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MsgwKzto2IoOJjvjTzGrigwCXuk4v4Z5kvEN1IzyNVY=;
 b=YOz7DoaZopOBIiCVRhTaDmoHMSotqFUD1klTT5xzP/DYKwRApaTqVpxiFqUj62wQlkCeso
 rmShm/jyM0iW0HJQFp/yx0Rrr4/4YkFrd+I1dZGiEUATTJIfds6yt2ig9EK80aeePTx5yV
 JdQmMvjA6eyQ/Ls2P9eum9CkF6m0QN0=
MIME-Version: 1.0
Date: Fri, 05 Jun 2020 12:09:15 +0200
From: Michael Walle <michael@walle.cc>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <CAHp75Vd-R3yqhq88-whY6vdDhESpzvFCsbi-ygSTjfXfUzOrtg@mail.gmail.com>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <CAHp75Vd-R3yqhq88-whY6vdDhESpzvFCsbi-ygSTjfXfUzOrtg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8ed988b3e0bc48ea9219d0847c1b1b8e@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_030918_050592_22D9D254 
X-CRM114-Status: GOOD (  16.21  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Am 2020-06-05 10:01, schrieb Andy Shevchenko:
> On Fri, Jun 5, 2020 at 12:16 AM Michael Walle <michael@walle.cc> wrote:
>> 
>> Add the core support for the board management controller found on the
>> SMARC-sAL28 board. It consists of the following functions:
>>  - watchdog
>>  - GPIO controller
>>  - PWM controller
>>  - fan sensor
>>  - interrupt controller
>> 
>> At the moment, this controller is used on the Kontron SMARC-sAL28 
>> board.
>> 
>> Please note that the MFD driver is defined as bool in the Kconfig
>> because the next patch will add interrupt support.
> 
> ...
> 
>> +config MFD_SL28CPLD
>> +       bool "Kontron sl28 core driver"
>> +       depends on I2C=y
> 
> Why not module?

There are users of the interupt lines provided by the interrupt 
controller.
For example, the gpio-button driver. If this is compiled into the kernel
(which it is by default in the arm64 defconfig), probing will fail 
because
the interrupt is not found. Is there a better way for that? I guess the 
same
is true for the GPIO driver.

> 
>> +       depends on OF
> 
> I didn't find an evidence this is needed.

see below.

> 
> No Compile Test?

ok

>> +       select REGMAP_I2C
>> +       select MFD_CORE
> 
> ...
> 
>> +#include <linux/of_platform.h>
> 
> No evidence of user of this.
> I think you meant mod_devicetable.h.

devm_of_platform_populate(), so I need CONFIG_OF, too right?


>> +static struct i2c_driver sl28cpld_driver = {
>> +       .probe_new = sl28cpld_probe,
>> +       .driver = {
>> +               .name = "sl28cpld",
>> +               .of_match_table = of_match_ptr(sl28cpld_of_match),
> 
> Drop of_match_ptr(). It has a little sense in this context (depends 
> OF).
> It will have a little sense even if you drop depends OF b/c you will
> introduce a compiler warning.

ok

> 
>> +       },
>> +};

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
