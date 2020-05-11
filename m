Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF191CE73A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 23:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6IRlk/CHv0CO9uvc6uu6cnCxQve4g9TwryEHabi7CI=; b=H7WW6l1C4f/eHz
	PPW1PuXl4wIgqhOu3avi6bNLjzptBdNp3TZAy/AuuaOwEx+qa2aAk3+kS7Bi+Nim0HUL1IHIi0EFP
	sFhUvbiSvJNjPYvcUKAV6ypCmhm92G9z0ZfXDChdoRr8iE4tcu6+4yQsk2oETq5eb9+VeIh6MgKF/
	RfmcGapBwBMBgK8QaezOJ/4oiliQ71Ehx30S1Z66XcqdZ19Wz20AmGH2MD2aW5LfWCqYRUvfDJdUw
	UBnNrj9gkINB0Z+bKHaooXfNWuE2UqZXo/wrnwOS9AjYag6s2Yyh9m8V3oJMqQGYz/quYKrSvui+7
	fbxPekTeO0MMrdsn+Dag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFkY-0005Ya-8Y; Mon, 11 May 2020 21:14:10 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFkQ-0005Y1-QN
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 21:14:04 +0000
Received: by mail-ot1-f66.google.com with SMTP id e20so8775614otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 14:14:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HdAuOfdZA600kVwfN3f7G2AtZ+Xb7Hh7BuebX0KzsAE=;
 b=j+HDrcFATvevH8MEZfUzZgIfaMu9n/hdaltIesIk1tzrkBwhUBs8Ilnuzf+7BKauRJ
 hZU/UG/5FYev20Jz/lUphXJ//SE4yVkL/xB8CAuGeSdpOZHDbujPWqmrRua0IetrRdTL
 UuZdZ3Uf2WsuMDVFi9pTeYnosyncpaN2HEjkOtDDYayKHY6ATd1k/kIiMNxLFs+17MjW
 Syj+ruxK/orqBzd/gWgChVjbSth7oEODuvZcayDWvpNWD0rRTkuJzWJ9Ado3ThtUWiIK
 2SIHPK5lm51Z5gk5e77+tPC18W8Dn1UigqsYwcxPF6b9WVOpHMEifGTYyoUiYzRlPc+w
 UXag==
X-Gm-Message-State: AGi0PuZCn0QH3HsoEmAzAJWoTEkiEBrcojG8S5kE0PnPMlNgegSeeW27
 +Nemh0sbrzNEnFRP3o9MBw==
X-Google-Smtp-Source: APiQypKIP9UgQDUWZjuB+VBbVoiTW/wp1xETY9x89lhBnQtgOkr+ezeDT4hcpLFrxd2JxPUQjERcxQ==
X-Received: by 2002:a05:6830:1449:: with SMTP id
 w9mr10291024otp.230.1589231641881; 
 Mon, 11 May 2020 14:14:01 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 61sm2946252otp.13.2020.05.11.14.14.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:14:01 -0700 (PDT)
Received: (nullmailer pid 21700 invoked by uid 1000);
 Mon, 11 May 2020 21:13:59 -0000
Date: Mon, 11 May 2020 16:13:59 -0500
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 05/16] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200511211359.GB3518@bogus>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-6-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423174543.17161-6-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_141402_852951_7A10EFFD 
X-CRM114-Status: GOOD (  23.50  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 07:45:32PM +0200, Michael Walle wrote:
> This patch adds core support for the board management controller found
> on the SMARC-sAL28 board. It consists of the following functions:
>  - watchdog
>  - GPIO controller
>  - PWM controller
>  - fan sensor
>  - interrupt controller
> 
> At the moment, this controller is used on the Kontron SMARC-sAL28 board.
> 
> Please note that the MFD driver is defined as bool in the Kconfig
> because the next patch will add interrupt support.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/mfd/Kconfig    |  19 +++++
>  drivers/mfd/Makefile   |   2 +
>  drivers/mfd/sl28cpld.c | 153 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 174 insertions(+)
>  create mode 100644 drivers/mfd/sl28cpld.c
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 0a59249198d3..be0c8d93c526 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -2060,5 +2060,24 @@ config SGI_MFD_IOC3
>  	  If you have an SGI Origin, Octane, or a PCI IOC3 card,
>  	  then say Y. Otherwise say N.
>  
> +config MFD_SL28CPLD
> +	bool "Kontron sl28 core driver"
> +	depends on I2C=y
> +	depends on OF
> +	select REGMAP_I2C
> +	select MFD_CORE
> +	help
> +	  This option enables support for the board management controller
> +	  found on the Kontron sl28 CPLD. You have to select individual
> +	  functions, such as watchdog, GPIO, etc, under the corresponding menus
> +	  in order to enable them.
> +
> +	  Currently supported boards are:
> +
> +		Kontron SMARC-sAL28
> +
> +	  To compile this driver as a module, choose M here: the module will be
> +	  called sl28cpld.
> +
>  endmenu
>  endif
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index f935d10cbf0f..9bc38863b9c7 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -259,3 +259,5 @@ obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
>  obj-$(CONFIG_MFD_STMFX) 	+= stmfx.o
>  
>  obj-$(CONFIG_SGI_MFD_IOC3)	+= ioc3.o
> +
> +obj-$(CONFIG_MFD_SL28CPLD)	+= sl28cpld.o
> diff --git a/drivers/mfd/sl28cpld.c b/drivers/mfd/sl28cpld.c
> new file mode 100644
> index 000000000000..1e5860cc7ffc
> --- /dev/null
> +++ b/drivers/mfd/sl28cpld.c
> @@ -0,0 +1,153 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * MFD core for the sl28cpld.
> + *
> + * Copyright 2019 Kontron Europe GmbH
> + */
> +
> +#include <linux/i2c.h>
> +#include <linux/interrupt.h>
> +#include <linux/kernel.h>
> +#include <linux/mfd/core.h>
> +#include <linux/module.h>
> +#include <linux/of_platform.h>
> +#include <linux/regmap.h>
> +
> +#define SL28CPLD_VERSION	0x03
> +#define SL28CPLD_WATCHDOG_BASE	0x04
> +#define SL28CPLD_HWMON_FAN_BASE	0x0b
> +#define SL28CPLD_PWM0_BASE	0x0c
> +#define SL28CPLD_PWM1_BASE	0x0e
> +#define SL28CPLD_GPIO0_BASE	0x10
> +#define SL28CPLD_GPIO1_BASE	0x15
> +#define SL28CPLD_GPO_BASE	0x1a
> +#define SL28CPLD_GPI_BASE	0x1b
> +#define SL28CPLD_INTC_BASE	0x1c

If you want to use 'reg' in the binding, these are the numbers you 
should be using rather than making up numbering!

However, I still don't think you need any child nodes. All the data in 
the DT binding is right here in the driver already. There's no advantage 
to putting child nodes in DT, because this driver still has to be 
updated if you add more nodes.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
