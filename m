Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A32CB3097
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 16:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CMGIjjNcFmstitGL7+UUXElQgrwe9UP+bbAG1/L7Fw=; b=vBWpvElbJKshGH
	kYxZeQkLpUJd2Xw3EgQI8q9ZjpBID6u4SZKtQtWRIItTASpSzUMSbHHlczkYkAQuS+pcMCe1rVdC6
	XB8vrRGlmN0/JWdh8Q84/TQaq/K48O0twyQDVBOgumFDlB/0qPuwk/A1wyiululGSmdSt4081ttqG
	riFh9H4b0MujsYXT9E0qb4xBBsczcBIr0maf57zfravZ+2q9z/i9SoXyBq1zEUgZMxZcn5tmGc7ep
	WA0SsFOKpn6+xZXafxxu5Ra0QdRL/M/4kGs6GpfXZB4um3Vt/sAQ/5H4FB5CFNLftD0GqkOrJjaUu
	j9NMdnCK0eQxl3/UiIeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Vzw-0000TC-AD; Sun, 15 Sep 2019 14:59:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Vzc-0000So-Ig
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 14:59:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T41zXqwFTZnFv5jJR7KFp66Sn49JT2O0ng3vIKC9TcM=; b=jrUraqf0BunV/bVTalwUfGsXl
 kQN3xs2aAa4h3ASgd5vPy4H9TqN0u4LkJD7be6oTxYi7FHmBXvzxVNO8tuS7XegMnK458PkR57bCS
 oKl26FkLNQTwUHL6UaNFWL9PNPQvmEIEzj7dQUvillQflEVPPzvebPUi7UjEG1WTW49laJEfjZ0oN
 iDRmfmbNvvNPw65dblbxRAwApS3ln7KCJeF3PTKvwVgpqBZOg+ONJre5AZzY8Q1Nqyd/7HHefXAFl
 zGkufuh+fR/7WgKO4mjErl31rw1c5GVJ9vza6nnm26tryeIc97eV+x1A9QZaEMPduVhakP79Ztcr0
 Xl7MeFkbg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:39856)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i9VzI-0006t2-Fj; Sun, 15 Sep 2019 15:58:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i9VzA-0007rp-Gw; Sun, 15 Sep 2019 15:58:44 +0100
Date: Sun, 15 Sep 2019 15:58:44 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190915145844.GE25745@shell.armlinux.org.uk>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190915140639.GC25745@shell.armlinux.org.uk>
 <20190915141552.GD25745@shell.armlinux.org.uk>
 <20190915144252.GA17261@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190915144252.GA17261@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_075912_629878_7F972EC2 
X-CRM114-Status: GOOD (  18.11  )
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

On Sun, Sep 15, 2019 at 04:42:52PM +0200, Andrew Lunn wrote:
> > > OF: fdt: Machine model: SolidRun HummingBoard Solo/DualLite
> > > ...
> > > # ethtool eth0
> > > Settings for eth0:
> > >         Supported ports: [ TP MII ]
> > >         Supported link modes:   10baseT/Half 10baseT/Full
> > >                                 100baseT/Half 100baseT/Full
> > >                                 1000baseT/Full
> > >         Supported pause frame use: Symmetric
> > >         Supports auto-negotiation: Yes
> > >         Supported FEC modes: Not reported
> > >         Advertised link modes:  10baseT/Half 10baseT/Full
> > >                                 100baseT/Half 100baseT/Full
> > >                                 1000baseT/Full
> > >         Advertised pause frame use: Symmetric
> > >         Advertised auto-negotiation: Yes
> > >         Advertised FEC modes: Not reported
> > >         Link partner advertised link modes:  10baseT/Half 10baseT/Full
> > >                                              100baseT/Half 100baseT/Full
> > >                                              1000baseT/Full
> > >         Link partner advertised pause frame use: Symmetric
> > >         Link partner advertised auto-negotiation: Yes
> > >         Link partner advertised FEC modes: Not reported
> > >         Speed: 1000Mb/s
> > >         Duplex: Full
> > >         Port: MII
> > >         PHYAD: 0
> > >         Transceiver: internal
> > >         Auto-negotiation: on
> > >         Supports Wake-on: d
> > >         Wake-on: d
> > >         Link detected: yes
> 
> > Note that the FEC does *not* support 1000baseT/Half.
> 
> Hi Russell
> 
> fec_main.c has code to mask it out. And it is not listed in the modes
> you have above. So as you say, this all looks to be working.
> 
> I'm wondering if there is an older variant of the hardware with
> 100Mbps magnetics, and the boot loader is setting something in the
> PHY? It could be we are now stomping over that?

Not according to Rabeeh, the SolidRun CTO:

< rabeeh> all i.MX6 based machines from SolidRun are 1Gbps phys
< rabeeh> i thought that we fixed that information, documentation wise;
          but seems not

Even the Carrier1 board that pre-dates Hummingboards had the AR8035
with 1G magnetics.

The schematics I have for the Cubox-i state that the RJ45 jack (which
contains the magnetics) is to be "Gigabit".

There was a 10/100M option for the microsom, which is selected by where
a resistor pack is fitted, having the effect of configuring the AR8035
differently.  I seem to recall the 10/100M option in the early days was
to use a different Atheros PHY.

However, I'm not aware of 10/100M option making it into production, and
Rabeeh's comment (who was involved in the design) confirms that.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
