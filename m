Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5748578CE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+VYTZOXQviFJE2f1mYC+QMfTBZzUBW7FulZ/XKt7Y8=; b=TGPPGgQAaPlcLw
	8g+vtvfDE7MZ0iu4WHuOn4p5qQvgiKGk1Ed5ZVUstlPruoOUQBkB6wBTAUfOIMp3ON0NGIMpzCp+w
	iNFtES0Xzd66KgbfX/KH5pttGscvS/5kSCwJ69HrNw8DDRoZmaSSOApmWOSQQlo+v4eT0shyGcOAL
	q88Gt3mNvbsV8owoA/9nUB7kOiDVTm5FIxlMKKI5dvHrkLVSfq2F+ZA8Yw4sETM319GS0X5JNQL4a
	aXIlvBy/NBWKNiDHagxdUYR5hkSvCNMyvwXce7CbstKdHqCJZBk59XrF/t9sB2g4dYZKcFSvc6Um2
	Nd6hYeh53AN2gVVA59JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs5m8-0006Wb-Aw; Mon, 29 Jul 2019 13:33:16 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs5m1-0006Vq-Fv
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U3tRa9QfgN1HYp59kKYY38Ral1fkU/m2XaKVscV3imU=; b=HDBTO8bOTZVjt8lna6mpSqKPsk
 wHSqFCzFxaLqaO0X2AJ/xnLlmNWIs/QcMOcPun/pP3vEl6E92+wES/7zMVV2CwjYirvKD+Fx5CTvG
 OURuoajnEZxy2u2QyFW5Kv3HH3RrMDBGyklzW7e8/4iSmvXZ2bJhT3+wv+vnyconzdKg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hs5li-0001HY-QM; Mon, 29 Jul 2019 15:32:50 +0200
Date: Mon, 29 Jul 2019 15:32:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH 2/4] net: phy: Add mdio-aspeed
Message-ID: <20190729133250.GB4110@lunn.ch>
References: <20190729043926.32679-1-andrew@aj.id.au>
 <20190729043926.32679-3-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729043926.32679-3-andrew@aj.id.au>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_063309_690153_20C75DD5 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 02:09:24PM +0930, Andrew Jeffery wrote:
> The AST2600 design separates the MDIO controllers from the MAC, which is
> where they were placed in the AST2400 and AST2500. Further, the register
> interface is reworked again, so now we have three possible different
> interface implementations, however this driver only supports the
> interface provided by the AST2600. The AST2400 and AST2500 will continue
> to be supported by the MDIO support embedded in the FTGMAC100 driver.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  drivers/net/phy/Kconfig       |  13 +++
>  drivers/net/phy/Makefile      |   1 +
>  drivers/net/phy/mdio-aspeed.c | 159 ++++++++++++++++++++++++++++++++++
>  3 files changed, 173 insertions(+)
>  create mode 100644 drivers/net/phy/mdio-aspeed.c
> 
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index 20f14c5fbb7e..206d8650ee7f 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -21,6 +21,19 @@ config MDIO_BUS
>  
>  if MDIO_BUS
>  
> +config MDIO_ASPEED
> +	tristate "ASPEED MDIO bus controller"
> +	depends on ARCH_ASPEED || COMPILE_TEST
> +	depends on OF_MDIO && HAS_IOMEM
> +	help
> +	  This module provides a driver for the independent MDIO bus
> +	  controllers found in the ASPEED AST2600 SoC. This is a driver for the
> +	  third revision of the ASPEED MDIO register interface - the first two
> +	  revisions are the "old" and "new" interfaces found in the AST2400 and
> +	  AST2500, embedded in the MAC. For legacy reasons, FTGMAC100 driver
> +	  continues to drive the embedded MDIO controller for the AST2400 and
> +	  AST2500 SoCs, so say N if AST2600 support is not required.
> +
>  config MDIO_BCM_IPROC
>  	tristate "Broadcom iProc MDIO bus controller"
>  	depends on ARCH_BCM_IPROC || COMPILE_TEST
> diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
> index 839acb292c38..ba07c27e4208 100644
> --- a/drivers/net/phy/Makefile
> +++ b/drivers/net/phy/Makefile
> @@ -22,6 +22,7 @@ libphy-$(CONFIG_LED_TRIGGER_PHY)	+= phy_led_triggers.o
>  obj-$(CONFIG_PHYLINK)		+= phylink.o
>  obj-$(CONFIG_PHYLIB)		+= libphy.o
>  
> +obj-$(CONFIG_MDIO_ASPEED)	+= mdio-aspeed.o
>  obj-$(CONFIG_MDIO_BCM_IPROC)	+= mdio-bcm-iproc.o
>  obj-$(CONFIG_MDIO_BCM_UNIMAC)	+= mdio-bcm-unimac.o
>  obj-$(CONFIG_MDIO_BITBANG)	+= mdio-bitbang.o
> diff --git a/drivers/net/phy/mdio-aspeed.c b/drivers/net/phy/mdio-aspeed.c
> new file mode 100644
> index 000000000000..71496a9ff54a
> --- /dev/null
> +++ b/drivers/net/phy/mdio-aspeed.c
> @@ -0,0 +1,159 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/* Copyright (C) 2019 IBM Corp. */
> +
> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/mdio.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_mdio.h>
> +#include <linux/phy.h>
> +#include <linux/platform_device.h>
> +
> +#define DRV_NAME "mdio-aspeed"
> +
> +#define ASPEED_MDIO_CTRL		0x0
> +#define   ASPEED_MDIO_CTRL_FIRE		BIT(31)
> +#define   ASPEED_MDIO_CTRL_ST		BIT(28)
> +#define     ASPEED_MDIO_CTRL_ST_C45	0
> +#define     ASPEED_MDIO_CTRL_ST_C22	1
> +#define   ASPEED_MDIO_CTRL_OP		GENMASK(27, 26)
> +#define     MDIO_C22_OP_WRITE		0b01
> +#define     MDIO_C22_OP_READ		0b10
> +#define   ASPEED_MDIO_CTRL_PHYAD	GENMASK(25, 21)
> +#define   ASPEED_MDIO_CTRL_REGAD	GENMASK(20, 16)
> +#define   ASPEED_MDIO_CTRL_MIIWDATA	GENMASK(15, 0)
> +
> +#define ASPEED_MDIO_DATA		0x4
> +#define   ASPEED_MDIO_DATA_MDC_THRES	GENMASK(31, 24)
> +#define   ASPEED_MDIO_DATA_MDIO_EDGE	BIT(23)
> +#define   ASPEED_MDIO_DATA_MDIO_LATCH	GENMASK(22, 20)
> +#define   ASPEED_MDIO_DATA_IDLE		BIT(16)
> +#define   ASPEED_MDIO_DATA_MIIRDATA	GENMASK(15, 0)
> +
> +#define ASPEED_MDIO_RETRIES		10
> +
> +struct aspeed_mdio {
> +	void __iomem *base;
> +};
> +
> +static int aspeed_mdio_read(struct mii_bus *bus, int addr, int regnum)
> +{
> +	struct aspeed_mdio *ctx = bus->priv;
> +	u32 ctrl;
> +	int i;
> +
> +	dev_dbg(&bus->dev, "%s: addr: %d, regnum: %d\n", __func__, addr,
> +		regnum);
> +
> +	/* Just clause 22 for the moment */
> +	ctrl = ASPEED_MDIO_CTRL_FIRE

Hi Andrew

In the binding, you say C45 is supported. Here you don't. It would be
nice to be consistent.


> +		| FIELD_PREP(ASPEED_MDIO_CTRL_ST, ASPEED_MDIO_CTRL_ST_C22)
> +		| FIELD_PREP(ASPEED_MDIO_CTRL_OP, MDIO_C22_OP_READ)
> +		| FIELD_PREP(ASPEED_MDIO_CTRL_PHYAD, addr)
> +		| FIELD_PREP(ASPEED_MDIO_CTRL_REGAD, regnum);
> +
> +	iowrite32(ctrl, ctx->base + ASPEED_MDIO_CTRL);
> +
> +	for (i = 0; i < ASPEED_MDIO_RETRIES; i++) {
> +		u32 data;
> +
> +		data = ioread32(ctx->base + ASPEED_MDIO_DATA);
> +		if (data & ASPEED_MDIO_DATA_IDLE)
> +			return FIELD_GET(ASPEED_MDIO_DATA_MIIRDATA, data);
> +
> +		udelay(100);
> +	}

One of the readx_poll_timeout functions could be used.

> +
> +	dev_err(&bus->dev, "MDIO read failed\n");
> +	return -EIO;
> +}
> +
> +static int aspeed_mdio_write(struct mii_bus *bus, int addr, int regnum, u16 val)
> +{
> +	struct aspeed_mdio *ctx = bus->priv;
> +	u32 ctrl;
> +	int i;
> +
> +	dev_dbg(&bus->dev, "%s: addr: %d, regnum: %d, val: 0x%x\n",
> +		__func__, addr, regnum, val);
> +
> +	/* Just clause 22 for the moment */
> +	ctrl = ASPEED_MDIO_CTRL_FIRE
> +		| FIELD_PREP(ASPEED_MDIO_CTRL_ST, ASPEED_MDIO_CTRL_ST_C22)
> +		| FIELD_PREP(ASPEED_MDIO_CTRL_OP, MDIO_C22_OP_WRITE)
> +		| FIELD_PREP(ASPEED_MDIO_CTRL_PHYAD, addr)
> +		| FIELD_PREP(ASPEED_MDIO_CTRL_REGAD, regnum)
> +		| FIELD_PREP(ASPEED_MDIO_CTRL_MIIWDATA, val);
> +
> +	iowrite32(ctrl, ctx->base + ASPEED_MDIO_CTRL);
> +
> +	for (i = 0; i < ASPEED_MDIO_RETRIES; i++) {
> +		ctrl = ioread32(ctx->base + ASPEED_MDIO_CTRL);
> +		if (!(ctrl & ASPEED_MDIO_CTRL_FIRE))
> +			return 0;
> +
> +		udelay(100);
> +	}

readx_poll_timeout() here as well.

Otherwise this looks good.

	  Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
