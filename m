Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0576B79EA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 04:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2d6Rq6Il4cqBEHV9YvIszchj62YHnJBl/CpHS3Hye1k=; b=PeWFzJoa3APWzC
	kS7Wk1Ym2Q2unLASzJDxmtmbEMu7IruoEKNlr/PgUUOXqw+v6Ecxqswux3CfC2drO+l0kPyxdVb0Y
	FgG0nJ13Qx/5wS9T+JJs/5MdjfrQBdwYxoBedhIko6GrxvKbafJlbwe82CMerj7WE7ndkG1ZpBqSb
	Hkq9EBKkvGNfUQwsLImk6JhpEoUJ5Oe0DnZeM24aK9MgyARj8JfjW3NFTz492sLW61kTXuSqz1S37
	fjunEpayB8uFgf268i+1RcjOvzoO14zE+h+YmCeC0NzEhSY1SXZoFg0KIKhYIrq/6jKT+LnhPXZYf
	RdQT511ewfTpjwbfuDUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsHoH-0001Rs-ED; Tue, 30 Jul 2019 02:24:17 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsHo5-0001RV-2p
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 02:24:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 00EB91730;
 Mon, 29 Jul 2019 22:23:57 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 22:23:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=VyxODSw/tRbhfBSToBdgcw8l4+PZOn7
 D5cdegfoq2fI=; b=irtv6mcrSUlU42j++dXIrzGmVdwZNEKgD3wm8OuYShRWbiN
 lsYc5YurwtbemMyF5utr0AbLvumXjda4z7WNOIQ9TvLJwG9F94MiGdRDJ78Wo9PB
 eyRSw/xqsnLYo0kGFhwkVWaonMBMYwaosQ6glU2eE5g8A5fQvsYh/bk9R/tWibUZ
 ZFBPt5zpWHRnDa4PCS/4L63z6xtzMJ9MaHcb+W0bkT7mgDeSkxEKQEIiZ+Owhs8n
 SjLp16FcpCcb4PHdEmQDA0Mvb/LL8HO40jmTrTwGHfJCcaX4E0aNBR3eX9EChtg2
 aGjxWGL8Zd7TbbS/ojH6ycENN7UlqtIz94K4I+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=VyxODS
 w/tRbhfBSToBdgcw8l4+PZOn7D5cdegfoq2fI=; b=JD6AaBMLn3Dywuyoil5nHJ
 HGpq8BqFtxkRvpRPftwZb0Mjr0T9aFRGX1ISizuQnoB2yNGMCRT2lRS0MACYxFdC
 mhI9DMqj26YCtO1wTrTS5CTVXOpu4LgdgvJP41HyNKFf9tl3/SxEgL53F0pmMtc1
 NTYY8XUCDt1ClWjZAZXG+XlGKoH4HBcsdcwu5z0xRxY0tVCedLAOUXdeQQ0kLDUz
 YaOW9i17QiGXOl2Obyn2hkbOtUt3GAKIhH5pLeUK5Z6yhfa4uNh7buXcQuTqYgWi
 QI1oHm/KOeDJZKUGBVIugGji5nPK8ZQaBSkUtEg8omvktNI6JZfEoNn/+yjksLxQ
 ==
X-ME-Sender: <xms:Oqo_XZ92B2MptR8XrGt2rvqB6A75BYkkM5sx03QQjQvLFhyx-fYYWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledvgdehkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:Oqo_XfyeKGs9_Kp2xn4n6k8X4Q_QyfYS9H2hAvAysNkzJUX-aQJeZg>
 <xmx:Oqo_XVIfR7B0eYRrrsWvGr6l5LUm_WlD9ByFyaS0tOnIQMlsZnlsPg>
 <xmx:Oqo_XSZ22Zt2dH67sAxpfF_ncRINFARY3vuRDuE9q2vkDZUYf-0xkA>
 <xmx:PKo_XZXSkR4kTG8GdzueTXBHWP4gJmcD6l39HX2s9hrVP_EeSTfyJg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 50C1AE00A2; Mon, 29 Jul 2019 22:23:54 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <19074ccb-5356-469b-8d1e-8076be135a21@www.fastmail.com>
In-Reply-To: <20190729133250.GB4110@lunn.ch>
References: <20190729043926.32679-1-andrew@aj.id.au>
 <20190729043926.32679-3-andrew@aj.id.au> <20190729133250.GB4110@lunn.ch>
Date: Tue, 30 Jul 2019 11:53:32 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Andrew Lunn" <andrew@lunn.ch>
Subject: Re: [PATCH 2/4] net: phy: Add mdio-aspeed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_192405_401051_80616A9F 
X-CRM114-Status: GOOD (  26.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, linux-aspeed@lists.ozlabs.org,
 netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 29 Jul 2019, at 23:03, Andrew Lunn wrote:
> On Mon, Jul 29, 2019 at 02:09:24PM +0930, Andrew Jeffery wrote:
> > The AST2600 design separates the MDIO controllers from the MAC, which is
> > where they were placed in the AST2400 and AST2500. Further, the register
> > interface is reworked again, so now we have three possible different
> > interface implementations, however this driver only supports the
> > interface provided by the AST2600. The AST2400 and AST2500 will continue
> > to be supported by the MDIO support embedded in the FTGMAC100 driver.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  drivers/net/phy/Kconfig       |  13 +++
> >  drivers/net/phy/Makefile      |   1 +
> >  drivers/net/phy/mdio-aspeed.c | 159 ++++++++++++++++++++++++++++++++++
> >  3 files changed, 173 insertions(+)
> >  create mode 100644 drivers/net/phy/mdio-aspeed.c
> > 
> > diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> > index 20f14c5fbb7e..206d8650ee7f 100644
> > --- a/drivers/net/phy/Kconfig
> > +++ b/drivers/net/phy/Kconfig
> > @@ -21,6 +21,19 @@ config MDIO_BUS
> >  
> >  if MDIO_BUS
> >  
> > +config MDIO_ASPEED
> > +	tristate "ASPEED MDIO bus controller"
> > +	depends on ARCH_ASPEED || COMPILE_TEST
> > +	depends on OF_MDIO && HAS_IOMEM
> > +	help
> > +	  This module provides a driver for the independent MDIO bus
> > +	  controllers found in the ASPEED AST2600 SoC. This is a driver for the
> > +	  third revision of the ASPEED MDIO register interface - the first two
> > +	  revisions are the "old" and "new" interfaces found in the AST2400 and
> > +	  AST2500, embedded in the MAC. For legacy reasons, FTGMAC100 driver
> > +	  continues to drive the embedded MDIO controller for the AST2400 and
> > +	  AST2500 SoCs, so say N if AST2600 support is not required.
> > +
> >  config MDIO_BCM_IPROC
> >  	tristate "Broadcom iProc MDIO bus controller"
> >  	depends on ARCH_BCM_IPROC || COMPILE_TEST
> > diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
> > index 839acb292c38..ba07c27e4208 100644
> > --- a/drivers/net/phy/Makefile
> > +++ b/drivers/net/phy/Makefile
> > @@ -22,6 +22,7 @@ libphy-$(CONFIG_LED_TRIGGER_PHY)	+= phy_led_triggers.o
> >  obj-$(CONFIG_PHYLINK)		+= phylink.o
> >  obj-$(CONFIG_PHYLIB)		+= libphy.o
> >  
> > +obj-$(CONFIG_MDIO_ASPEED)	+= mdio-aspeed.o
> >  obj-$(CONFIG_MDIO_BCM_IPROC)	+= mdio-bcm-iproc.o
> >  obj-$(CONFIG_MDIO_BCM_UNIMAC)	+= mdio-bcm-unimac.o
> >  obj-$(CONFIG_MDIO_BITBANG)	+= mdio-bitbang.o
> > diff --git a/drivers/net/phy/mdio-aspeed.c b/drivers/net/phy/mdio-aspeed.c
> > new file mode 100644
> > index 000000000000..71496a9ff54a
> > --- /dev/null
> > +++ b/drivers/net/phy/mdio-aspeed.c
> > @@ -0,0 +1,159 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/* Copyright (C) 2019 IBM Corp. */
> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/delay.h>
> > +#include <linux/mdio.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_mdio.h>
> > +#include <linux/phy.h>
> > +#include <linux/platform_device.h>
> > +
> > +#define DRV_NAME "mdio-aspeed"
> > +
> > +#define ASPEED_MDIO_CTRL		0x0
> > +#define   ASPEED_MDIO_CTRL_FIRE		BIT(31)
> > +#define   ASPEED_MDIO_CTRL_ST		BIT(28)
> > +#define     ASPEED_MDIO_CTRL_ST_C45	0
> > +#define     ASPEED_MDIO_CTRL_ST_C22	1
> > +#define   ASPEED_MDIO_CTRL_OP		GENMASK(27, 26)
> > +#define     MDIO_C22_OP_WRITE		0b01
> > +#define     MDIO_C22_OP_READ		0b10
> > +#define   ASPEED_MDIO_CTRL_PHYAD	GENMASK(25, 21)
> > +#define   ASPEED_MDIO_CTRL_REGAD	GENMASK(20, 16)
> > +#define   ASPEED_MDIO_CTRL_MIIWDATA	GENMASK(15, 0)
> > +
> > +#define ASPEED_MDIO_DATA		0x4
> > +#define   ASPEED_MDIO_DATA_MDC_THRES	GENMASK(31, 24)
> > +#define   ASPEED_MDIO_DATA_MDIO_EDGE	BIT(23)
> > +#define   ASPEED_MDIO_DATA_MDIO_LATCH	GENMASK(22, 20)
> > +#define   ASPEED_MDIO_DATA_IDLE		BIT(16)
> > +#define   ASPEED_MDIO_DATA_MIIRDATA	GENMASK(15, 0)
> > +
> > +#define ASPEED_MDIO_RETRIES		10
> > +
> > +struct aspeed_mdio {
> > +	void __iomem *base;
> > +};
> > +
> > +static int aspeed_mdio_read(struct mii_bus *bus, int addr, int regnum)
> > +{
> > +	struct aspeed_mdio *ctx = bus->priv;
> > +	u32 ctrl;
> > +	int i;
> > +
> > +	dev_dbg(&bus->dev, "%s: addr: %d, regnum: %d\n", __func__, addr,
> > +		regnum);
> > +
> > +	/* Just clause 22 for the moment */
> > +	ctrl = ASPEED_MDIO_CTRL_FIRE
> 
> Hi Andrew
> 
> In the binding, you say C45 is supported. Here you don't. It would be
> nice to be consistent.

Right - but the bindings describe the hardware, and the hardware is capable.
Just that the driver as it stands can't drive it that way.

Having said that I do need to do more digging to understand how to cater to
C45 PHYs wrt the read/write calls.

> 
> 
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_ST, ASPEED_MDIO_CTRL_ST_C22)
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_OP, MDIO_C22_OP_READ)
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_PHYAD, addr)
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_REGAD, regnum);
> > +
> > +	iowrite32(ctrl, ctx->base + ASPEED_MDIO_CTRL);
> > +
> > +	for (i = 0; i < ASPEED_MDIO_RETRIES; i++) {
> > +		u32 data;
> > +
> > +		data = ioread32(ctx->base + ASPEED_MDIO_DATA);
> > +		if (data & ASPEED_MDIO_DATA_IDLE)
> > +			return FIELD_GET(ASPEED_MDIO_DATA_MIIRDATA, data);
> > +
> > +		udelay(100);
> > +	}
> 
> One of the readx_poll_timeout functions could be used.

Thanks, I'll take a look.

> 
> > +
> > +	dev_err(&bus->dev, "MDIO read failed\n");
> > +	return -EIO;
> > +}
> > +
> > +static int aspeed_mdio_write(struct mii_bus *bus, int addr, int regnum, u16 val)
> > +{
> > +	struct aspeed_mdio *ctx = bus->priv;
> > +	u32 ctrl;
> > +	int i;
> > +
> > +	dev_dbg(&bus->dev, "%s: addr: %d, regnum: %d, val: 0x%x\n",
> > +		__func__, addr, regnum, val);
> > +
> > +	/* Just clause 22 for the moment */
> > +	ctrl = ASPEED_MDIO_CTRL_FIRE
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_ST, ASPEED_MDIO_CTRL_ST_C22)
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_OP, MDIO_C22_OP_WRITE)
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_PHYAD, addr)
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_REGAD, regnum)
> > +		| FIELD_PREP(ASPEED_MDIO_CTRL_MIIWDATA, val);
> > +
> > +	iowrite32(ctrl, ctx->base + ASPEED_MDIO_CTRL);
> > +
> > +	for (i = 0; i < ASPEED_MDIO_RETRIES; i++) {
> > +		ctrl = ioread32(ctx->base + ASPEED_MDIO_CTRL);
> > +		if (!(ctrl & ASPEED_MDIO_CTRL_FIRE))
> > +			return 0;
> > +
> > +		udelay(100);
> > +	}
> 
> readx_poll_timeout() here as well.
> 
> Otherwise this looks good.

Thanks for the review!

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
