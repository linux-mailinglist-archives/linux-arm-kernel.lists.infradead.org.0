Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8631D016B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFPvY4GVtFN7uCtQZr9ajk2Qiv/zfdr44VFhYxI3/n4=; b=NJV/TLwKDSnTQs
	wOXIPzWT6O8JlX1VrYfuQqjnEIxGpDflmvfx3WnDdu+BHerbSBTowBUuKbSrqiQh2wXb+x/+5Or1j
	pB4tw70VxoTxQ6E7EucRyDIUFWWqjYA6UQw7uf5MqCt8A6CtAznhquP19XcPCckblL6h+pRgfOVq1
	TomcgzdwmfYJjBdzEXnOQ3Dq+3LtuVf3s3ZM8dhuyL6eDKOlhk9i58cPFAPyuPXLkMBSSy8OMnVNN
	Okitb6GkA4KxuUeFQD1NcTiB7oGSovt+wkEtpSbDr/r+oljZVeHvRTYkB/fogbG7XKwfkMfMS7SyH
	bWWSLNoy2o45nUQHDWtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcw2-0003AR-Gm; Tue, 12 May 2020 21:59:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcvt-00039y-Po
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 21:59:27 +0000
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C8DF2492A
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 21:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589320765;
 bh=4dasN4F5KmkSKWYO6iCX27SovkkmrwOz4v79E3noBoE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YP8cdrrciz6AD9mCNgRNuJ+8S0lvXGBwqGJDrSI3wsmZuR3wa9tIBQq17NCfG4NIB
 VEawFqp/icGBa36IKtrVNQyqEalQcCR4mR6xMppuuWZm7r3wGLAub9CheUDp5AcFtj
 x9b8IX516ah2hZFdoFmwu0PaGIRDtcOuiGZ77vHg=
Received: by mail-ot1-f41.google.com with SMTP id t3so11821508otp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 14:59:25 -0700 (PDT)
X-Gm-Message-State: AGi0PuZ94DfNq7ZgYZ3SygljSOy9V9NfBghsUKCu/1uz7wHn/e1aTjaY
 egy7dbvhLotB8ekUKt8Bcc3YYtmv8Yb+01tw9w==
X-Google-Smtp-Source: APiQypL834c2wGEHb5CE5fdAX3mpa8t0DYv6uZcEwNHKazXdfkA0BR+2q+GjZ5cn3tT0/I4L/tNi+T2+uBKaDwLcHj4=
X-Received: by 2002:a05:6830:4d6:: with SMTP id
 s22mr18608313otd.129.1589320764152; 
 Tue, 12 May 2020 14:59:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-6-michael@walle.cc>
 <20200511211359.GB3518@bogus> <f0fafa63047f00e912013b137e4db15c@walle.cc>
In-Reply-To: <f0fafa63047f00e912013b137e4db15c@walle.cc>
From: Rob Herring <robh@kernel.org>
Date: Tue, 12 May 2020 16:59:12 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJBAghgdKmH1OfpH0B508st7Gx3GMtjufjZvBWM_c6GAQ@mail.gmail.com>
Message-ID: <CAL_JsqJBAghgdKmH1OfpH0B508st7Gx3GMtjufjZvBWM_c6GAQ@mail.gmail.com>
Subject: Re: [PATCH v3 05/16] mfd: Add support for Kontron sl28cpld management
 controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_145925_877037_97913A30 
X-CRM114-Status: GOOD (  34.78  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux HWMON List <linux-hwmon@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 4:45 PM Michael Walle <michael@walle.cc> wrote:
>
> Am 2020-05-11 23:13, schrieb Rob Herring:
> > On Thu, Apr 23, 2020 at 07:45:32PM +0200, Michael Walle wrote:
> >> This patch adds core support for the board management controller found
> >> on the SMARC-sAL28 board. It consists of the following functions:
> >>  - watchdog
> >>  - GPIO controller
> >>  - PWM controller
> >>  - fan sensor
> >>  - interrupt controller
> >>
> >> At the moment, this controller is used on the Kontron SMARC-sAL28
> >> board.
> >>
> >> Please note that the MFD driver is defined as bool in the Kconfig
> >> because the next patch will add interrupt support.
> >>
> >> Signed-off-by: Michael Walle <michael@walle.cc>
> >> ---
> >>  drivers/mfd/Kconfig    |  19 +++++
> >>  drivers/mfd/Makefile   |   2 +
> >>  drivers/mfd/sl28cpld.c | 153
> >> +++++++++++++++++++++++++++++++++++++++++
> >>  3 files changed, 174 insertions(+)
> >>  create mode 100644 drivers/mfd/sl28cpld.c
> >>
> >> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> >> index 0a59249198d3..be0c8d93c526 100644
> >> --- a/drivers/mfd/Kconfig
> >> +++ b/drivers/mfd/Kconfig
> >> @@ -2060,5 +2060,24 @@ config SGI_MFD_IOC3
> >>        If you have an SGI Origin, Octane, or a PCI IOC3 card,
> >>        then say Y. Otherwise say N.
> >>
> >> +config MFD_SL28CPLD
> >> +    bool "Kontron sl28 core driver"
> >> +    depends on I2C=y
> >> +    depends on OF
> >> +    select REGMAP_I2C
> >> +    select MFD_CORE
> >> +    help
> >> +      This option enables support for the board management controller
> >> +      found on the Kontron sl28 CPLD. You have to select individual
> >> +      functions, such as watchdog, GPIO, etc, under the corresponding
> >> menus
> >> +      in order to enable them.
> >> +
> >> +      Currently supported boards are:
> >> +
> >> +            Kontron SMARC-sAL28
> >> +
> >> +      To compile this driver as a module, choose M here: the module will
> >> be
> >> +      called sl28cpld.
> >> +
> >>  endmenu
> >>  endif
> >> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> >> index f935d10cbf0f..9bc38863b9c7 100644
> >> --- a/drivers/mfd/Makefile
> >> +++ b/drivers/mfd/Makefile
> >> @@ -259,3 +259,5 @@ obj-$(CONFIG_MFD_ROHM_BD718XX)   += rohm-bd718x7.o
> >>  obj-$(CONFIG_MFD_STMFX)     += stmfx.o
> >>
> >>  obj-$(CONFIG_SGI_MFD_IOC3)  += ioc3.o
> >> +
> >> +obj-$(CONFIG_MFD_SL28CPLD)  += sl28cpld.o
> >> diff --git a/drivers/mfd/sl28cpld.c b/drivers/mfd/sl28cpld.c
> >> new file mode 100644
> >> index 000000000000..1e5860cc7ffc
> >> --- /dev/null
> >> +++ b/drivers/mfd/sl28cpld.c
> >> @@ -0,0 +1,153 @@
> >> +// SPDX-License-Identifier: GPL-2.0-only
> >> +/*
> >> + * MFD core for the sl28cpld.
> >> + *
> >> + * Copyright 2019 Kontron Europe GmbH
> >> + */
> >> +
> >> +#include <linux/i2c.h>
> >> +#include <linux/interrupt.h>
> >> +#include <linux/kernel.h>
> >> +#include <linux/mfd/core.h>
> >> +#include <linux/module.h>
> >> +#include <linux/of_platform.h>
> >> +#include <linux/regmap.h>
> >> +
> >> +#define SL28CPLD_VERSION    0x03
> >> +#define SL28CPLD_WATCHDOG_BASE      0x04
> >> +#define SL28CPLD_HWMON_FAN_BASE     0x0b
> >> +#define SL28CPLD_PWM0_BASE  0x0c
> >> +#define SL28CPLD_PWM1_BASE  0x0e
> >> +#define SL28CPLD_GPIO0_BASE 0x10
> >> +#define SL28CPLD_GPIO1_BASE 0x15
> >> +#define SL28CPLD_GPO_BASE   0x1a
> >> +#define SL28CPLD_GPI_BASE   0x1b
> >> +#define SL28CPLD_INTC_BASE  0x1c
> >
> > If you want to use 'reg' in the binding, these are the numbers you
> > should be using rather than making up numbering!
>
> My motivation is that I don't want to hardcode the internal addresses
> of the management controller in the device tree. For example if they
> will move around with a later update of the controller, so a driver can
> be compatible with both the old and the new version. If they are in the
> device tree, only one register layout is possible.

I don't understand, if the addresses change, then the above defines
have to change. So your driver is only compatible with 1 version. If
you change the CPLD, then that's a h/w change and your h/w description
(DT) should change. That can either be the compatible string changing
and updating the driver with new match data such as register offsets
or all the differences are in DT and there's no kernel change.

> > However, I still don't think you need any child nodes. All the data in
> > the DT binding is right here in the driver already. There's no
> > advantage
> > to putting child nodes in DT, because this driver still has to be
> > updated if you add more nodes.
>
> But then any phandle will reference the mfd device. And for example
> there
> are two different interrupt controllers, that is the INTC and the
> GPIO[01],
> which will then be combined into one device tree node, right?

You either have to add a cell for 'bank' or divide the 1st cell into a
bank and index. Both have been done before.

To go the other direction, AIUI you shouldn't need OF_MFD_CELL_REG
entries if you have the child devices in DT. Pick one way or the
other. It's ultimately a judgement call. For a one-off device, sub
devices in DT doesn't really buy you anything. If you have sub-blocks
showing up multiple devices, then sub devices makes sense. If there's
only 2-3 combinations, then it's a toss up.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
