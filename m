Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B13B513F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 17:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6VSoScGN5x1o7MFVYhaoGSlWwqlVawKeHnnORBz1ik=; b=Qk0STPC3Cf1F5u
	xQCk9uDsRubH0NxbGNhwc60fXgTRZBL9LbZOFyUN821i9DDFctFJM4MGXU4ahhDvpIUdda6O2lH88
	c7ux138b+2hDsO81uL4BVsL939DaKBPnkHG9CqPeasbtEELWFC4LaF/jdWjDhVBzUfDaNXyXi+YRE
	Lj9TTMMA28MSV6JL774Vlijyxcrof/XgnGxBoHFYMSK0XCYGB0NRfz5j6qAkBYqjDwJyK7dyWqOY2
	jzVD1dOVt2NojuM5rslRw+mPrV7ZDSt2FMvC+WQNEqcO8p8X9SavbuImURvnxE3Sd0d5fthU65XWh
	21Ns43mATQv8geHNBYRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFEh-0002Vd-QG; Tue, 17 Sep 2019 15:17:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFEQ-0002TJ-Hl
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 15:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n3vipbcBKFSCjmLjh07mRqMB06SYXzi8YcW6hdF7nM0=; b=LO/2RrnQuntHPvMgRBBG1Oiuw
 q1vtvXhYDcXgLLw1gYFkb9eZgfI159T92BatXDtEK5O88EVAzZn7tjkdJsU4XJGoT5LKx/QHx4RMf
 lZd25VGHfIWe8gTpwjy5JkZn2XbvtS+Vfnrj+ubBdB8/+9wDaNxI4YRK/XaD0TeUBuyh6rvAyzpzn
 ImmTh9Qvsb5jtI9+DeQO1ApuSSvc1A7NnMpvByxVpAPY2PmllIK1LM6b/7lQFcSGBBKUu63YmRRM6
 TD9N3GozSnjaiCSG9t4A940Tl6UwnNYPPc9Zc3FHa4fgNVeyjsSaJioqwQsX8f7lrzgiw6gmOK35s
 LrA2ZgK3A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44818)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iAFE5-0002aq-Ax; Tue, 17 Sep 2019 16:17:09 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iAFE3-0001OW-3j; Tue, 17 Sep 2019 16:17:07 +0100
Date: Tue, 17 Sep 2019 16:17:07 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: tinywrkb <tinywrkb@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917151707.GV25745@shell.armlinux.org.uk>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190917124101.GA1200564@arch-dsk-01>
 <20190917125434.GH20778@lunn.ch>
 <20190917133253.GA1210141@arch-dsk-01>
 <20190917133942.GR25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917133942.GR25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_081730_845985_79881241 
X-CRM114-Status: GOOD (  29.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Baruch Siach <baruch@tkos.co.il>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 02:39:43PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Sep 17, 2019 at 04:32:53PM +0300, tinywrkb wrote:
> > On Tue, Sep 17, 2019 at 02:54:34PM +0200, Andrew Lunn wrote:
> > > On Tue, Sep 17, 2019 at 03:41:01PM +0300, tinywrkb wrote:
> > > > On Sun, Sep 15, 2019 at 03:56:52PM +0200, Andrew Lunn wrote:
> > > > > > Tinywrkb confirmed to me in private communication that revert of
> > > > > > 5502b218e001 fixes Ethernet for him on effected system.
> > > > > > 
> > > > > > He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> > > > > > only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> > > > > > there was a plan to use a different 10/100 PHY for Solo/DualLite
> > > > > > SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> > > > > > AR8035 PHY that supports 1Gb.
> > > > > > 
> > > > > > Commit 5502b218e001 might be triggering a hardware issue on the affected
> > > > > > Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> > > > > > SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> > > > > > the moment.
> > > > > 
> > > > > Could somebody with an affected device show us the output of ethtool
> > > > > with and without 5502b218e001. Does one show 1G has been negotiated,
> > > > > and the other 100Mbps? If this is true, how does it get 100Mbps
> > > > > without that patch? We are missing a piece of the puzzle.
> > > > > 
> > > > > 	Andrew
> > > > 
> > > > linux-test-5.1rc1-a2703de70942-without_bad_commit
> > > > 
> > > > Settings for eth0:
> > > > 	Supported ports: [ TP MII ]
> > > > 	Supported link modes:   10baseT/Half 10baseT/Full
> > > > 	                        100baseT/Half 100baseT/Full
> > > > 	                        1000baseT/Full
> > > 
> > > So this means the local device says it can do 1000Mbps.
> > > 
> > > 
> > > > 	Supported pause frame use: Symmetric
> > > > 	Supports auto-negotiation: Yes
> > > > 	Supported FEC modes: Not reported
> > > > 	Advertised link modes:  10baseT/Half 10baseT/Full
> > > > 	                        100baseT/Half 100baseT/Full
> > > > 	                        1000baseT/Full
> > > 
> > > The link peer can also do 1000Mbps.
> > > 
> > > 
> > > > 	Advertised pause frame use: Symmetric
> > > > 	Advertised auto-negotiation: Yes
> > > > 	Advertised FEC modes: Not reported
> > > > 	Link partner advertised link modes:  10baseT/Half 10baseT/Full
> > > > 	                                     100baseT/Half 100baseT/Full
> > > > 	                                     1000baseT/Full
> > > > 	Link partner advertised pause frame use: Symmetric
> > > > 	Link partner advertised auto-negotiation: Yes
> > > > 	Link partner advertised FEC modes: Not reported
> > > > 	Speed: 100Mb/s
> > > 
> > > Yet they have decided to do 100Mbps. 
> > > 
> > > We need to understand Why? The generic PHY driver would not do this on
> > > its own. So i'm thinking something has poked a PHY register with some
> > > value, and this patch is causing it to be over written.
> > > 
> > > Please can you use mii-tool -v -v to dump the PHY registers in each
> > > case.
> > > 
> > > Thanks
> > > 	Andrew
> > 
> > Here's the output of # mii-tool -v -v eth0 
> > 
> > * linux-test-5.1rc1-a2703de70942-without_bad_commit
> > 
> > Using SIOCGMIIPHY=0x8947
> > eth0: negotiated 100baseTx-FD flow-control, link ok
> >   registers for MII PHY 0:
> >     3100 796d 004d d072 15e1 c5e1 000f 0000
> >     0000 0000 0800 0000 0000 0000 0000 a000
> >     0000 0000 0000 f420 082c 0000 04e8 0000
> >     3200 3000 0000 063d 0000 0000 0000 0000
> >   product info: vendor 00:13:74, model 7 rev 2
> >   basic mode:   autonegotiation enabled
> >   basic status: autonegotiation complete, link ok
> >   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> >   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> 
> This is *not* advertising 1000baseT modes (register 9).
> 
> > 
> > 
> > * linux-test-5.1rc1-5502b218e001-with_bad_commit
> > 
> > Using SIOCGMIIPHY=0x8947
> > eth0: negotiated 100baseTx-FD flow-control, link ok
> >   registers for MII PHY 0:
> >     3100 796d 004d d072 15e1 c5e1 000d 0000
> >     0000 0000 0800 0000 0000 0000 0000 a000
> >     0000 0000 0000 0000 082c 0000 04e8 0000
> >     3200 3000 0000 063d 0000 0000 0000 0000
> >   product info: vendor 00:13:74, model 7 rev 2
> >   basic mode:   autonegotiation enabled
> >   basic status: autonegotiation complete, link ok
> >   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> >   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> 
> Neither is this.
> 
> However, the kernel and phylib _thinks_ that it is.  My guess is
> something has rewritten the PHY registers from userspace, rather
> than using ethtool to change the advertisment.  The MAC is still
> trying to operate at 1000Mbps (since that is what phylib resolved)
> yet the link might be actually operating at 100Mbps - but for that
> to happen, we should've seen the link go down and up again.
> 
> Odd.

For reference, here I see:

Using SIOCGMIIPHY=0x8947
eth0: negotiated 1000baseT-FD flow-control, link ok
  registers for MII PHY 0:
    3100 796d 004d d072 15e1 c1e1 000d 0000
    0000 0200 3800 0000 0000 0000 0000 a000
    0000 0000 0000 0000 082c 0000 04e8 0000
    3200 3000 0000 060e 0000 0000 0000 0000
  product info: vendor 00:13:74, model 7 rev 2
  basic mode:   autonegotiation enabled
  basic status: autonegotiation complete, link ok
  capabilities: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
  advertising:  1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
  link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD

Note that userspace writing to register 9 (1G settings) will update
the physical PHY's advertisment for 1G speeds, but the kernel's idea
will not be updated, so things will become de-sync'd, and the kernel
_will_ incorrectly determine the speed.

So, are you using mii-tool or mii-diag to change the negotiation
settings, rather than using ethtool?

This is likely the case, as prior to 5502b218e001, we used to read
the advertisment registers afresh each time we evaluate the resulting
link mode.  After 5502b218e001, we use the advertisment mask cached
in phydev->advertising, which, looking at phy_mii_ioctl(), will not
be updated if register 9 is written.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
