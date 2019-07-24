Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C2473414
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dz9r4VWSmoqacfk/ZOWEmrgPquLvezR3c5KNegIWX1s=; b=Sp23uZDGdwqzIy
	V6Y7XpDfLnfSoppx0DrRomPr5jn57qpislR4i5hvUJ9mZ3nna88jvaYNFMgZrBeRL17np8GR+kd02
	vxQ6lXl6epZ50Zh6bFie2m1BVPSZPpBSTozCLEt2c2na+X52trhpJzmtj5HiMnx7NPxlkTZQbWOpB
	iGY0PeyynDdYU+jXQoMQ42EOd6pM4jqjg5dNtfyevB7J4K3ZBo1xHwfUJTvOKe3ShA/RyFT4Xm6AA
	hS+ajEwT+MZznRhrrZHOOIBZnyKHLEEctNz4jdsdSMcIdEnO1yw3JW4dQy25DR8BD8IsRHQ1LQoe4
	TxfsaEOWg8SVXP8xbH8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKIW-0000QK-5v; Wed, 24 Jul 2019 16:39:24 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKII-0000PH-Ve
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wArjT2MpImAqGdQUdIABnoJnGCq4fg+a4RGyelO4sI0=; b=1nfk9Ah7W9jraNjNJyLYk5qygW
 c9Is3PaSspG/UF2r8LD3z1th+dBaZFXBAS8ftFOF9l0fbKVOPLzk2ihr9UuPdG3XhlVck4uPxHxkL
 4EfXWn/h2ZoD9K6g5WQiAB4HTbsDrPvyERusX4xONbN/aKjx+fwRzVl/EkQhsO3z805I=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hqKIE-0000gj-4j; Wed, 24 Jul 2019 18:39:06 +0200
Date: Wed, 24 Jul 2019 18:39:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next v1 1/4] enetc: Clean up local mdio bus allocation
Message-ID: <20190724163906.GT25635@lunn.ch>
References: <1563979301-596-1-git-send-email-claudiu.manoil@nxp.com>
 <1563979301-596-2-git-send-email-claudiu.manoil@nxp.com>
 <20190724151803.GR25635@lunn.ch>
 <VI1PR04MB4880CD977A5D58DA0A7EE56696C60@VI1PR04MB4880.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4880CD977A5D58DA0A7EE56696C60@VI1PR04MB4880.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_093911_168070_AE1CF529 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> >All the horrible casts go away, the driver is structured like every
> >other driver, sparse is probably happy, etc.
> >
> 
> This looks more like a matter cosmetic preferences.  I mean, I didn't
> notice anything "horrible" in the code so far.

#define bus_to_enetc_regs(bus)  (struct enetc_mdio_regs __iomem *)((bus)->priv)

You should not need a cast here, bus->priv is a void *. But bus->priv
is being abused to hold a __iomem pointer.

enetc_wr_reg(&regs->mdio_cfg, mdio_cfg);

This is also rather odd, passing the address of something to an IO
operator? I also don't know the C standard well enough to know if it
is guaranteed that:

struct enetc_mdio_regs {
        u32     mdio_cfg;       /* MDIO configuration and status */
        u32     mdio_ctl;       /* MDIO control */
        u32     mdio_data;      /* MDIO data */
        u32     mdio_addr;      /* MDIO address */
};

actually works. On a 64bit system is the compiler allowed to put in
padding to keep the u32 64 bit aligned?

> I actually find it more
> ugly to define a new structure with only one element inside, like:
> struct enetc_mdio_priv {
>        struct enetc_hw *hw;
> }

One advantage of this is that struct enetc_hw correctly has all the
__iomem attributes. All the casts to __iomem go away, and sparse is
happy.

> Anyway, if others already did this in the kernel, what can I do?

Clean it up. Make the code more readable and easy to maintain.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
