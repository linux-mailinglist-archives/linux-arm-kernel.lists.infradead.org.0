Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553EACBE72
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 17:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aOPRtXZFKxHduKDU9/6CA4BAMblhPEtdPCddHSKKRE=; b=WciEC3F5E4r/nD
	g48BJnxMJwAimjVlZ4PF9QlrA5ja2jAprVRgVDAR+mWD+uI15VSyspxIzGyjDzp0ajjxeOGdcGq2N
	rqVnC8Bb5HhPOzmDA6oUE1QX/RNfV+4r6A6MWSBLkX5oNOrmsgIMl77EsJKE8CMSLsAsn1T10TmfQ
	cNCK6ekzxCf5OcuPbMtthAd9sdKfNVjHZtOBPN2SoLBBuOw3TUjfWr56H6VjOvibtAAcYi32SoGNd
	pOJogr8iu0mKtuT7Atv2l8UQP5xtDUV38QXcdCsqSoxzv+7tA1UsijqLyNJ6V+l04HuTL8MMPVHBp
	XVAfEuCLddioq3V8ZnZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGP5x-000283-Ft; Fri, 04 Oct 2019 15:02:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGP5L-0001cr-Gd
 for linux-arm-kernel@bombadil.infradead.org; Fri, 04 Oct 2019 15:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cUrqHuVE1rLspR5r6YO6NSOkzvmwyWI2H9TB6wyBdfU=; b=WubSi7+6soMzPyRmHo19HHJ/k
 Mctn9HydxG6cEcnmRFmBjo3ueKGuTWOX8bOg3GDIsWM/YbQL6T8Wzc+p/ii9ijCTghbXY0Om21yay
 3sxgraMbaONJ15blAcTXd4UXw9+dNIiqj3qTNTTLWk/opiiPTWwzWu36L3d5R+A95iVj/BOgi9fa+
 I3Cw2P7+pOaqwxpKajT5tnhkbPe3NVp9PCuiXOFVxxHQhWTP6gff2LmYPwoRCyr6Mhv1WDiwWWIZ7
 YvDR3ByN9oAMqc1fp8xlkZ8odNWFCttr39E3pv+p+/BUC/qdQ0MsBKF9tqgyw2DQ5ib6et+A/wuqV
 u/HnFy7XA==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGP5g-0004wq-Qv
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 15:01:59 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 3D2292000D;
 Fri,  4 Oct 2019 15:00:57 +0000 (UTC)
Date: Fri, 4 Oct 2019 17:00:57 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Message-ID: <20191004150057.GZ4106@piout.net>
References: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
 <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_160156_922819_23A3622C 
X-CRM114-Status: GOOD (  36.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: thomas.petazzoni@bootlin.com, kamel.bouhara@bootlin.com,
 Ludovic.Desroches@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/2019 14:54:37+0000, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 10/04/2019 05:12 PM, Kamel Bouhara wrote:
> > External E-Mail
> > 
> > 
> > Add support to read SFR's read-only registers providing the SoC
> > Serial Numbers (SN0+SN1) to userspace.
> > 
> > ~ #  hexdump -n 8  -e'"%d\n"' /sys/bus/nvmem/devices/atmel-sfr0/nvmem
> > 959527243
> > 371539274
> > 
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > ---
> >  Changes in v5:
> >  - Removed the blankline at EOF
> >  - Feeded the entropy pool with the SoC SN using add_device_randomness()
> >    and do it only once at probe().
> > 
> >  drivers/soc/atmel/Kconfig  | 11 +++++
> >  drivers/soc/atmel/Makefile |  1 +
> >  drivers/soc/atmel/sfr.c    | 99 ++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 111 insertions(+)
> >  create mode 100644 drivers/soc/atmel/sfr.c
> > 
> > diff --git a/drivers/soc/atmel/Kconfig b/drivers/soc/atmel/Kconfig
> > index 05528139b023..50caf6db9c0e 100644
> > --- a/drivers/soc/atmel/Kconfig
> > +++ b/drivers/soc/atmel/Kconfig
> > @@ -5,3 +5,14 @@ config AT91_SOC_ID
> >  	default ARCH_AT91
> >  	help
> >  	  Include support for the SoC bus on the Atmel ARM SoCs.
> > +
> > +config AT91_SOC_SFR
> > +	tristate "Special Function Registers support"
> > +	depends on ARCH_AT91 || COMPILE_TEST
> > +	help
> > +	  This is a driver for the Special Function Registers available on
> > +	  Atmel SAMA5Dx SoCs, providing access to specific aspects of the
> > +	  integrated memory, bridge implementations, processor etc.
> > +
> > +	  This driver can also be built as a module. If so, the module
> > +	  will be called sfr.
> > diff --git a/drivers/soc/atmel/Makefile b/drivers/soc/atmel/Makefile
> > index 7ca355d10553..d849a897cd77 100644
> > --- a/drivers/soc/atmel/Makefile
> > +++ b/drivers/soc/atmel/Makefile
> > @@ -1,2 +1,3 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_AT91_SOC_ID) += soc.o
> > +obj-$(CONFIG_AT91_SOC_SFR) += sfr.o
> > diff --git a/drivers/soc/atmel/sfr.c b/drivers/soc/atmel/sfr.c
> > new file mode 100644
> > index 000000000000..145e9af63b4c
> > --- /dev/null
> > +++ b/drivers/soc/atmel/sfr.c
> > @@ -0,0 +1,99 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * sfr.c - driver for special function registers
> > + *
> > + * Copyright (C) 2019 Bootlin.
> > + *
> > + */
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/module.h>
> > +#include <linux/nvmem-provider.h>
> > +#include <linux/random.h>
> > +#include <linux/of.h>
> > +#include <linux/of_device.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +
> > +#define SFR_SN0		0x4c
> > +#define SFR_SN_SIZE	8
> > +
> > +struct atmel_sfr_priv {
> > +	struct regmap			*regmap;
> > +};
> > +
> > +static int atmel_sfr_read(void *context, unsigned int offset,
> > +			  void *buf, size_t bytes)
> > +{
> > +	struct atmel_sfr_priv *priv = context;
> > +
> > +	return regmap_bulk_read(priv->regmap, SFR_SN0 + offset,
> > +				buf, bytes / 4);
> > +}
> > +
> > +static struct nvmem_config atmel_sfr_nvmem_config = {
> > +	.name = "atmel-sfr",
> > +	.read_only = true,
> > +	.word_size = 4,
> > +	.stride = 4,
> > +	.size = SFR_SN_SIZE,
> > +	.reg_read = atmel_sfr_read,
> > +};
> > +
> > +static int atmel_sfr_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	struct device_node *np = dev->of_node;
> > +	struct nvmem_device *nvmem;
> > +	struct atmel_sfr_priv *priv;
> > +	u8 sn[SFR_SN_SIZE];
> > +	int ret;
> > +
> > +	priv = devm_kmalloc(dev, sizeof(*priv), GFP_KERNEL);
> > +	if (!priv)
> > +		return -ENOMEM;
> > +
> > +	priv->regmap = syscon_node_to_regmap(np);
> > +	if (IS_ERR(priv->regmap)) {
> > +		dev_err(dev, "cannot get parent's regmap\n");
> > +		return PTR_ERR(priv->regmap);
> > +	}
> > +
> > +	atmel_sfr_nvmem_config.dev = dev;
> > +	atmel_sfr_nvmem_config.priv = priv;
> > +
> > +	nvmem = devm_nvmem_register(dev, &atmel_sfr_nvmem_config);
> > +	if (IS_ERR(nvmem)) {
> > +		dev_err(dev, "error registering nvmem config\n");
> > +		return PTR_ERR(nvmem);
> > +	}
> > +
> > +	ret = atmel_sfr_read(priv, 0, sn, SFR_SN_SIZE);
> > +	if (ret == 0)
> > +		add_device_randomness(sn, SFR_SN_SIZE);
> > +
> > +	return 0;
> 
> 	return ret;
> 
> to not miss a possible error from atmel_sfr_read().
> 
> The code looks good, with this fixed one can add:
> Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> As I told in v3, I have some doubts on the use cases for this driver, but let's
> see what the at91 folks think.
> 

There is already at least one microchip customer using it so I'm going
to apply it.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
