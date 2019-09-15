Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02281B307C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 16:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOenKdbLLMtxPNG52biBHLUCF+RSSt/fpxHIgIW2UI8=; b=thoeN80Vw3sYlR
	h2oJO4ftPQjfpN3JDLqEsHxTUa0Rn7iFU1PXf7kvW1kOWUY9RNf70hutW7E4kkgO3kIc0bQbPIHgb
	OZD4Gre4+Gk8kXmtv2qnudUXh8eYMxl2S9i8ZE07dCQ6FV7q/Z5cjwXtvc33ePAVpCukGch83npMz
	oV7nGSjK+hWm3B24FOusIw2q0sOeOP6dDKYPQIJPucCrB9EIYDYUzCllt9OpDcmwITmXwl0btBgXR
	rKLoBVgme/GSW5AnfI/O7T/Q3NMLNOAeUav5FKLxrml5ruWq20K67Uaw+A5j3+qtpuGSBz514ahXX
	1jIO6tAaKR4QQzLnUGuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9VLI-0005f7-PL; Sun, 15 Sep 2019 14:17:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9VK1-0005dt-3T
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 14:16:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eBR/vzgVwigJIICmXIKGeT7bpNanV6iSEjDPyGnjW5c=; b=XKEJqNMeZ9HolY4ThSYhX05Wr
 SZbaH//XZ1mtN178oAeUjZOZ7e3bx51hpWA/ve9/PTLuEF+/DBcQeHlauoZAh3VhSWQyqTIU4gHM7
 9T5b8Gv4bfDeshlippy9acwk3XQacP0nRoOksKg/LojjirGFKPOx4tfWXThNFW2oDn8ruQAArnQjF
 vKE977X5Ap0UJtw1GB7fC+0m8xKUHo3X/qMuunddfEyvkYU7op/jSX2SHm2p7FJX0Hqv9zw5mMonq
 JGaTBFZl8Bi4KaB7LRbUMujef1GHxtb61+JvWlVdjJb51P5KanZbfMWI1UTDHgewlEpZyyiL6A7nG
 1Li8Clciw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60556)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i9VJh-0006iN-Kd; Sun, 15 Sep 2019 15:15:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i9VJg-0007pT-J2; Sun, 15 Sep 2019 15:15:52 +0100
Date: Sun, 15 Sep 2019 15:15:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190915141552.GD25745@shell.armlinux.org.uk>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190915140639.GC25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190915140639.GC25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_071617_923402_375342CE 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Baruch Siach <baruch@tkos.co.il>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 tinywrkb <tinywrkb@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 15, 2019 at 03:06:39PM +0100, Russell King - ARM Linux admin wrote:
> On Sun, Sep 15, 2019 at 03:56:52PM +0200, Andrew Lunn wrote:
> > > Tinywrkb confirmed to me in private communication that revert of
> > > 5502b218e001 fixes Ethernet for him on effected system.
> > > 
> > > He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> > > only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> > > there was a plan to use a different 10/100 PHY for Solo/DualLite
> > > SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> > > AR8035 PHY that supports 1Gb.
> > > 
> > > Commit 5502b218e001 might be triggering a hardware issue on the affected
> > > Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> > > SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> > > the moment.
> > 
> > Could somebody with an affected device show us the output of ethtool
> > with and without 5502b218e001. Does one show 1G has been negotiated,
> > and the other 100Mbps? If this is true, how does it get 100Mbps
> > without that patch? We are missing a piece of the puzzle.
> 
> Hang on.  5502b218e001 is in 5.2 already - it was merged as part of the
> v5.1 merge window.  That means my imx6 Solo Hummingboard is already
> running it with the AR8035 PHY, and it works fine.
> 
> # dmesg
> ...
> OF: fdt: Machine model: SolidRun HummingBoard Solo/DualLite
> ...
> # ethtool eth0
> Settings for eth0:
>         Supported ports: [ TP MII ]
>         Supported link modes:   10baseT/Half 10baseT/Full
>                                 100baseT/Half 100baseT/Full
>                                 1000baseT/Full
>         Supported pause frame use: Symmetric
>         Supports auto-negotiation: Yes
>         Supported FEC modes: Not reported
>         Advertised link modes:  10baseT/Half 10baseT/Full
>                                 100baseT/Half 100baseT/Full
>                                 1000baseT/Full
>         Advertised pause frame use: Symmetric
>         Advertised auto-negotiation: Yes
>         Advertised FEC modes: Not reported
>         Link partner advertised link modes:  10baseT/Half 10baseT/Full
>                                              100baseT/Half 100baseT/Full
>                                              1000baseT/Full
>         Link partner advertised pause frame use: Symmetric
>         Link partner advertised auto-negotiation: Yes
>         Link partner advertised FEC modes: Not reported
>         Speed: 1000Mb/s
>         Duplex: Full
>         Port: MII
>         PHYAD: 0
>         Transceiver: internal
>         Auto-negotiation: on
>         Supports Wake-on: d
>         Wake-on: d
>         Link detected: yes

For some further testing, by changing the advertisment on the DSA
switch (other end of this platform's link):

        Link partner advertised link modes:  10baseT/Half 10baseT/Full
                                             100baseT/Half 100baseT/Full
...
        Speed: 100Mb/s
        Duplex: Full
===============
        Link partner advertised link modes:  10baseT/Half 10baseT/Full
                                             100baseT/Half
...
        Speed: 100Mb/s
        Duplex: Half
===============
        Link partner advertised link modes:  10baseT/Half 10baseT/Full
...
        Speed: 10Mb/s
        Duplex: Full
===============
        Link partner advertised link modes:  10baseT/Half
...
        Speed: 10Mb/s
        Duplex: Half

So it looks like the commit works as it should.  So there's something
else going on.

Note that the FEC does *not* support 1000baseT/Half.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
