Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C1C1FEEF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7WNr/IPKlkuJYuO3X14ypWA61HB+T9xGGhafjycFpWY=; b=C4WhCve6bM/mtnc8v3fo6r174
	AyldG2vmTHiTDANP4uDVR6A5K0WxlibzlRsEU4Kj05EdwBprQMOsGVtRP88+lD0hYP0qbu37wK7Vr
	OQ8zDUJFwOzcFrwZ1j1R9n//ciA//0OLrNolP87ZgFhJJ9LDLiC0UU+6divSmfwLS0zJz0SEmSSQT
	/QTR2xKHbYEjbtjblu0VXcodqu5TgpoYBPqtqhpv/Mz0DDCz4BWPF8nzZCn77JMi7eUsR2p1o81i9
	ZX1Sfjk1UOSNHsTbMI6+HVWWMEhAG6juWJRbHD5UCjPTLGlATlxyl928pLOmIrQdu5gn7Xw3hGdM5
	eMTRX4Eag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlr7Y-0001Zv-2A; Thu, 18 Jun 2020 09:46:08 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlr7P-0001Z5-8a
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 09:46:01 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 7AEEF22EEB;
 Thu, 18 Jun 2020 11:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1592473543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p/EpsEvkLtARNDo2Bm4Z1jVdGL5ztBpdeE0BcLhfcDA=;
 b=MKmfpeyDXVHfAqeDAeRd9RLD1wrNJD06QQp0PI+8vft4/5rRiaQeiPV9/LYaMFoo+azkED
 Cy4VHS0Pt5oN2EbQVXPozyPNjL3nVtNLHiP3gsFqZqi7v1D1Km2kusiQ1Fl3Fe9rYZ7X5X
 OlNpzoQCaYmwuyAU82nrGGADG4BbGcQ=
MIME-Version: 1.0
Date: Thu, 18 Jun 2020 11:45:43 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [SPAM] [PATCH v3 1/1] mfd: Add I2C based System Configuaration
 (SYSCON) access
In-Reply-To: <20200618080223.951737-1-lee.jones@linaro.org>
References: <20200618080223.951737-1-lee.jones@linaro.org>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <46f098524c7bf13dd6adbd1faeb8c758@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_024559_497644_B650B2BA 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 bgolaszewski@baylibre.com, broonie@kernel.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-18 10:02, schrieb Lee Jones:
> The existing SYSCON implementation only supports MMIO (memory mapped)
> accesses, facilitated by Regmap.  This extends support for registers
> held behind I2C busses.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
> Changelog:
> 
> v2 => v3
>   - Change 'is CONFIG' present check to include loadable modules
>     - s/#ifdef CONFIG_MFD_SYSCON_I2C/#if 
> IS_ENABLED(CONFIG_MFD_SYSCON_I2C)/
> 
> v1 => v2
>   - Remove legacy references to OF
>   - Allow building as a module (fixes h8300 0-day issue)
> 
> drivers/mfd/Kconfig            |  7 +++
>  drivers/mfd/Makefile           |  1 +
>  drivers/mfd/syscon-i2c.c       | 90 ++++++++++++++++++++++++++++++++++
>  include/linux/mfd/syscon-i2c.h | 26 ++++++++++
>  4 files changed, 124 insertions(+)
>  create mode 100644 drivers/mfd/syscon-i2c.c
>  create mode 100644 include/linux/mfd/syscon-i2c.h
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 0a59249198d34..f25f80f68edca 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -1300,6 +1300,13 @@ config MFD_SYSCON
>  	  Select this option to enable accessing system control registers
>  	  via regmap.
> 
> +config MFD_SYSCON_I2C
> +	tristate "System Controller Register R/W Based on I2C Regmap"
> +	select REGMAP_I2C
> +	help
> +	  Select this option to enable accessing system control registers
> +	  via I2C using regmap.
> +
>  config MFD_DAVINCI_VOICECODEC
>  	tristate
>  	select MFD_CORE
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index f935d10cbf0fc..0aec1f42ac979 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -219,6 +219,7 @@ obj-$(CONFIG_MFD_RK808)		+= rk808.o
>  obj-$(CONFIG_MFD_RN5T618)	+= rn5t618.o
>  obj-$(CONFIG_MFD_SEC_CORE)	+= sec-core.o sec-irq.o
>  obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
> +obj-$(CONFIG_MFD_SYSCON_I2C)	+= syscon-i2c.o
>  obj-$(CONFIG_MFD_LM3533)	+= lm3533-core.o lm3533-ctrlbank.o
>  obj-$(CONFIG_MFD_VEXPRESS_SYSREG)	+= vexpress-sysreg.o
>  obj-$(CONFIG_MFD_RETU)		+= retu-mfd.o
> diff --git a/drivers/mfd/syscon-i2c.c b/drivers/mfd/syscon-i2c.c
> new file mode 100644
> index 0000000000000..be20ff45ece07
> --- /dev/null
> +++ b/drivers/mfd/syscon-i2c.c
> @@ -0,0 +1,90 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * System Control Driver accessed over I2C
> + *
> + * Copyright (C) 2020 Linaro Ltd.
> + *
> + * Author: Lee Jones <lee.jones@linaro.org>
> + */
> +
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>
> +#include <linux/list.h>
> +#include <linux/mfd/syscon-i2c.h>
> +#include <linux/regmap.h>
> +
> +static DEFINE_SPINLOCK(syscon_i2c_list_slock);
> +static LIST_HEAD(syscon_i2c_list);
> +
> +struct syscon {
> +	struct device *dev;
> +	struct regmap *regmap;
> +	struct list_head list;
> +};
> +
> +static const struct regmap_config syscon_i2c_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +};

What about other configs? eg. 16 bit offsets. And putting that
config into the device tree, was always pushed back so far.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
