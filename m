Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A51519A566
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 08:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plyzbGAqCKvLAwdiGZoHZFEkophu5MBa6jsm6YuwJyw=; b=i2X6iFX32skWF6
	yXCuoQeBPDiDhM72ilI8S/njxYmMNm9b0AJJ6pul0eO1RRI52UsgoQUhMwtLDjmrXsjhHbrdJOe/P
	X9QHvNyXoNt9qmyUy5fNHqiLCKAE/YJmr4StAPfwqgs3rFdwXS6stkhhB65610R1MSIZEIjNJn/bN
	6ODo+kgTtGknEMnZyX2lAF2ReMqafcsfbkBPPFg/RjBTRw5D9ddUdZOD9k7IBh4Y+vcPd1NMswrBD
	8xBkqZbzFANOYbxgNpcSMt9qLf8+lrogfYNehjL9rcpklNBl4Hx02TT5l2ltTG5z9T+5hvXzqM69s
	GkWDSRAOPc9ToZzVNIvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWwp-0008S3-3V; Wed, 01 Apr 2020 06:33:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWwY-0008NS-Tq
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 06:33:44 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jJWwJ-0004Mk-Ei; Wed, 01 Apr 2020 08:33:27 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jJWw5-00053m-3n; Wed, 01 Apr 2020 08:33:13 +0200
Date: Wed, 1 Apr 2020 08:33:13 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200401063313.5e5r7jm6fjzdqpdg@pengutronix.de>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
 <5ae5c0de-f05c-5e3f-86e1-a9afdd3e1ef1@pengutronix.de>
 <20200331075457.GJ25745@shell.armlinux.org.uk>
 <f1352a82-be3a-cd0a-7cba-6f338f205098@pengutronix.de>
 <20200331081918.GK25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331081918.GK25745@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:28:42 up 137 days, 21:47, 155 users,  load average: 0.00, 0.03,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_233342_964757_5996613C 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 linux-imx@nxp.com, kernel@pengutronix.de, David Jander <david@protonic.nl>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 09:19:18AM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Mar 31, 2020 at 10:00:12AM +0200, Marc Kleine-Budde wrote:
> > On 3/31/20 9:54 AM, Russell King - ARM Linux admin wrote:
> > > On Tue, Mar 31, 2020 at 09:47:19AM +0200, Marc Kleine-Budde wrote:
> > >> On 3/30/20 7:41 PM, Russell King - ARM Linux admin wrote:
> > >>>>> arch/arm/mach-imx/mach-imx6q.c:167:		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> > >>>>> arch/arm/mach-imx/mach-imx6q.c:169:		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> > >>>>> arch/arm/mach-imx/mach-imx6q.c:171:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
> > >>>>> arch/arm/mach-imx/mach-imx6q.c:173:		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
> > >>>
> > >>> As far as I'm concerned, the AR8035 fixup is there with good reason.
> > >>> It's not just "random" but is required to make the AR8035 usable with
> > >>> the iMX6 SoCs.  Not because of a board level thing, but because it's
> > >>> required for the AR8035 to be usable with an iMX6 SoC.
> > >>
> > >> Is this still ture, if the AR8035 is attached to a switch behind an iMX6?
> > > 
> > > Do you know of such a setup, or are you talking about theoretical
> > > situations?
> > 
> > Granted, not for the AR8035, but for one of the KSZ Phys. This is why
> > Oleksij started looking into this issue in the first place.
> 
> Maybe there's an easy solution to this - check whether the PHY being
> fixed up is connected to the iMX6 SoC:
> 
> static bool phy_connected_to(struct phy_device *phydev,
> 			     const struct of_device_id *matches)
> {
> 	struct device_node *np, *phy_np;
> 
> 	for_each_matching_node(np, matches) {
> 		phy_np = of_parse_phandle(np, "phy-handle", 0);
> 		if (!phy_np)
> 			phy_np = of_parse_phandle(np, "phy", 0);
> 		if (!phy_np)
> 			phy_np = of_parse_phandle(np, "phy-device", 0);
> 		if (phy_np && phydev->mdio.dev.of_node == phy_np) {
> 			of_node_put(phy_np);
> 			of_node_put(np);
> 			return true;
> 		}
> 		of_node_put(phy_np);
> 	}
> 	return false;
> }
> 
> static struct of_device_id imx_fec_ids[] = {
> 	{ .compatible = "fsl,imx6q-fec", },
> 	...
> 	{ },
> };
> 
> static bool phy_connected_to_fec(struct phy_device *phydev)
> {
> 	return phy_connected_to(phydev, imx_fec_ids);
> }
> 
> and then in the fixups:
> 
> 	if (!phy_connected_to_fec(phydev))
> 		return 0;
> 

Ok, i see. We will limit fixup impact to some specific devicetree nodes.
And if we wont to disable fixup completely, some special devicetree binding will
be needed. Correct? Is this acceptable mainline way?
For the usb ethernet fixups we will need some thing similar.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
