Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2E11973D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 07:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ig7iVttz5N7arF+G1/8CwV9K7J5fXwYmj+a3Cbn5F0=; b=E912hfcHiB5tP1
	6FR+hMxuXO+8rjtLRh2DsfrzumpoNFbymuskgDNRYQh6bk0A9x2RiAD2gBcTSsYe4UkAVqZ/AbCFL
	pTn/UNsh2GIblBTrYRcUJLu0UlH+dUX70ucRcbLtT11BCtzSd5URKFYwZTQyVNXh4eD6/2lO+N+7w
	v063MLGnuxzX0Or2otxnmZyqCgVMTi2uyMVu80vf2bnKQdZrSt4HJEzD8gHflqiBVDCt3FUFeFn3L
	EMM1aeQX+5la+Eu9kYcQ9ZM6Jvqijws5bHA9x4hn815X+OM6w2IRXdTgcnkQasSvXoG5jColg8aPG
	xvcl9WoKrlLs7mRJykng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jImwX-0005VE-Ts; Mon, 30 Mar 2020 05:26:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jImwN-0005UL-WE
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 05:26:29 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jImw9-0008CY-FM; Mon, 30 Mar 2020 07:26:13 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jImw7-0002A4-F1; Mon, 30 Mar 2020 07:26:11 +0200
Date: Mon, 30 Mar 2020 07:26:11 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329150854.GA31812@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:03:38 up 135 days, 20:22, 141 users,  load average: 0.02, 0.06,
 0.02
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_222628_041105_0A52229B 
X-CRM114-Status: GOOD (  21.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-imx@nxp.com, kernel@pengutronix.de,
 David Jander <david@protonic.nl>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Sun, Mar 29, 2020 at 05:08:54PM +0200, Andrew Lunn wrote:
> On Sun, Mar 29, 2020 at 01:04:57PM +0200, Oleksij Rempel wrote:
> 
> Hi Oleksij
> 
> > +config DEPRECATED_PHY_FIXUPS
> > +	bool "Enable deprecated PHY fixups"
> > +	default y
> > +	---help---
> > +	  In the early days it was common practice to configure PHYs by adding a
> > +	  phy_register_fixup*() in the machine code. This practice turned out to
> > +	  be potentially dangerous, because:
> > +	  - it affects all PHYs in the system
> > +	  - these register changes are usually not preserved during PHY reset
> > +	    or suspend/resume cycle.
> > +	  - it complicates debugging, since these configuration changes were not
> > +	    done by the actual PHY driver.
> > +	  This option allows to disable all fixups which are identified as
> > +	  potentially harmful and give the developers a chance to implement the
> > +	  proper configuration via the device tree (e.g.: phy-mode) and/or the
> > +	  related PHY drivers.
> 
> This appears to be an IMX only problem. Everybody else seems to of got
> this right. There is no need to bother everybody with this new
> option. Please put this in arch/arm/mach-mxs/Kconfig and have IMX in
> the name.

Actually, all fixups seems to do wring thing:
arch/arm/mach-davinci/board-dm644x-evm.c:915:		phy_register_fixup_for_uid(LXT971_PHY_ID, LXT971_PHY_MASK,

Increased MII drive strength. Should be probably enabled by the PHY
driver.

arch/arm/mach-imx/mach-imx6q.c:167:		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
arch/arm/mach-imx/mach-imx6q.c:169:		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
arch/arm/mach-imx/mach-imx6q.c:171:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
arch/arm/mach-imx/mach-imx6q.c:173:		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
arch/arm/mach-imx/mach-imx6sx.c:40:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff,
arch/arm/mach-imx/mach-imx6ul.c:47:		phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
arch/arm/mach-imx/mach-imx7d.c:54:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff,
arch/arm/mach-imx/mach-imx7d.c:56:		phy_register_fixup_for_uid(PHY_ID_BCM54220, 0xffffffff,
arch/arm/mach-mxs/mach-mxs.c:262:		phy_register_fixup_for_uid(PHY_ID_KSZ8051, MICREL_PHY_ID_MASK,

Fix in some random manner PHY specific errata, enable clock output and
configure the clock skew.

arch/arm/mach-orion5x/dns323-setup.c:645:		phy_register_fixup_for_uid(MARVELL_PHY_ID_88E1118,

Enable LED. Should be done in DT if supported.

arch/powerpc/platforms/85xx/mpc85xx_mds.c:305:		phy_register_fixup_for_id(phy_id, mpc8568_fixup_125_clock);
arch/powerpc/platforms/85xx/mpc85xx_mds.c:306:		phy_register_fixup_for_id(phy_id, mpc8568_mds_phy_fixups);
arch/powerpc/platforms/85xx/mpc85xx_mds.c:311:		phy_register_fixup_for_id(phy_id, mpc8568_mds_phy_fixups);

Fix in some random manner PHY specific errata, enable clock output and
configure the clock skew.

drivers/net/ethernet/dnet.c:818:	err = phy_register_fixup_for_uid(0x01410cc0, 0xfffffff0,

Enable LED. Should be done in DT if supported.

drivers/net/usb/lan78xx.c:2071:		ret = phy_register_fixup_for_uid(PHY_KSZ9031RNX, 0xfffffff0,
drivers/net/usb/lan78xx.c:2078:		ret = phy_register_fixup_for_uid(PHY_LAN8835, 0xfffffff0,

enable clock output and configure the clock skew.

As we can see, all of used fixups seem to be wrong. For example micrel
PHY errata should be fixed in one place for all devices. Not only for
some iMX6 SoC. I used this option for iMX, because i can test it.

> There is no need to bother everybody with this new
> option. Please put this in arch/arm/mach-mxs/Kconfig and have IMX in
> the name.

A lot of work is needed to fix all of them. I just do not have enough
time to do it.

> Having said that, i'm not sure this is the best solution. You cannot
> build one kernel which runs on all machines.  Did you consider some
> sort of DT property to disable these fixup? What other ideas did you
> have before deciding on this solution?

As soon as all PHY driver support all needed bits used in this fixups,
we can use drivers on top of fixups. Since changes made by fixups will
be overwritten by PHY drivers any way. The Kconfig option is needed only for
developers who has enough resource to investigate this issues and
mainline needed changes.

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
