Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3121B5393
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 19:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qa9ZrXxB2pQm0aUyx7/TdnCKfPUOHYtSF9kZVZDYLZo=; b=d73DrnfKdhTp5p
	3Lq5trnjK5L5cVfiskNhMpZeu/RmaqTAtxF9aCsU/65QMYpS7goPpno7t7oN3VIki0E/dc4jWSno/
	xD1LZfukQ+a1fCV9aomar5gHQDr0oHyLWBX0sUS77cX3CcRxpPvaQ0M0Eynf0HoYhx2dMt2rBu/H1
	iCjy8dokhq9UL7s55hzk46LTuOco4gXG6Sl3g8p7giNa2DNN1102Sy7pM2FjNHH4KNpDgeU3CA9d/
	uVp6ixi8nSLwHARy8vPgAnL6Wv5xfWxG9vfZeALiFbvGA0bTbmu9z8dIlz3nADMSiRAf6ZTESx9gU
	fCyAp0sy9Yp4SZ7gDlBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGuT-0002oY-TY; Tue, 17 Sep 2019 17:05:01 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGuB-0002nQ-4P
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 17:04:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kq0CocEY9i4/5e+2igO8Cik75CQMtIKP4GgD17cUQo4=; b=W3RKu9YPCV8TsiO0pKS6tbgX4
 6OBHY3CDKjT+9eFudvercZJOcgz3vv584J0P65B9IMswiyIiic+AuoqdJdVqVMkDnmK5gLqlucfLG
 lW2u5U9nEPUj+VECWwMlbb1+2Wgckt5VeQLKquPObMGA7MBg37Dekn9z5Ulqx8orTsjBwRpSQdy1u
 ZnuJIvM8C/zOaBB8b2WGypZ0TmrUPvwkOC2xpAp1qCsg52hhGCWpbrDCWHktzULRGnWqXkdN0N1wi
 j0/cHkDAnPxXs5yeolO/poFT1sSFyHFziscsBI8QquESxddTcJfKPWQxvL3gPLcrW7fwRMFggl3Bf
 yuUEbrFag==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44848)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iAGtr-00035z-Fx; Tue, 17 Sep 2019 18:04:23 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iAGtn-0001SK-M8; Tue, 17 Sep 2019 18:04:19 +0100
Date: Tue, 17 Sep 2019 18:04:19 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: tinywrkb <tinywrkb@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917170419.GX25745@shell.armlinux.org.uk>
References: <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190917124101.GA1200564@arch-dsk-01>
 <20190917125434.GH20778@lunn.ch>
 <20190917133253.GA1210141@arch-dsk-01>
 <20190917133942.GR25745@shell.armlinux.org.uk>
 <20190917151707.GV25745@shell.armlinux.org.uk>
 <20190917153027.GW25745@shell.armlinux.org.uk>
 <20190917163427.GA1475935@arch-dsk-01>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917163427.GA1475935@arch-dsk-01>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_100443_180598_1B4A0546 
X-CRM114-Status: GOOD (  16.59  )
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

On Tue, Sep 17, 2019 at 07:34:27PM +0300, tinywrkb wrote:
> The patch didn't fix the issue.
> 
> # ethtool eth0
> 
> Settings for eth0:
> 	Supported ports: [ TP MII ]
> 	Supported link modes:   10baseT/Half 10baseT/Full
> 	                        100baseT/Half 100baseT/Full
> 	                        1000baseT/Full
> 	Supported pause frame use: Symmetric
> 	Supports auto-negotiation: Yes
> 	Supported FEC modes: Not reported
> 	Advertised link modes:  10baseT/Half 10baseT/Full
> 	                        100baseT/Half 100baseT/Full
> 	                        1000baseT/Full
> 	Advertised pause frame use: Symmetric
> 	Advertised auto-negotiation: Yes
> 	Advertised FEC modes: Not reported
> 	Link partner advertised link modes:  10baseT/Half 10baseT/Full
> 	                                     100baseT/Half 100baseT/Full
> 	                                     1000baseT/Full
> 	Link partner advertised pause frame use: Symmetric
> 	Link partner advertised auto-negotiation: Yes
> 	Link partner advertised FEC modes: Not reported
> 	Speed: 1000Mb/s
> 	Duplex: Full
> 	Port: MII
> 	PHYAD: 0
> 	Transceiver: internal
> 	Auto-negotiation: on
> 	Supports Wake-on: d
> 	Wake-on: d
> 	Link detected: yes
> 
> # mii-tool -v -v eth0
> 
> Using SIOCGMIIPHY=0x8947
> eth0: negotiated 100baseTx-FD flow-control, link ok
>   registers for MII PHY 0:
>     3100 796d 004d d072 15e1 c5e1 000f 0000
>     0000 0000 0800 0000 0000 0000 0000 a000
>     0000 0000 0000 f420 082c 0000 04e8 0000
>     3200 3000 0000 063d 0000 0000 0000 0000
>   product info: vendor 00:13:74, model 7 rev 2
>   basic mode:   autonegotiation enabled
>   basic status: autonegotiation complete, link ok
>   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
>   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> 
> # journalctl -b | egrep -i 'phy|eth|fec'|grep -v usb
> 
> kernel: Booting Linux on physical CPU 0x0
> kernel: libphy: Fixed MDIO Bus: probed
> kernel: libphy: fec_enet_mii_bus: probed
> kernel: fec 2188000.ethernet eth0: registered PHC device 0
> kernel: dwhdmi-imx 120000.hdmi: Detected HDMI TX controller v1.31a with HDCP (DWC HDMI 3D TX PHY)
> kernel: Generic PHY 2188000.ethernet-1:00: attached PHY driver [Generic PHY] (mii_bus:phy_addr=2188000.ethernet-1:00, irq=POLL)
> kernel: fec 2188000.ethernet eth0: Link is Up - 1Gbps/Full - flow control rx/tx
> kernel: IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
> systemd-networkd[242]: eth0: Gained carrier

Okay, so this is getting weird.

ethtool still shows that 1000baseT/Full is being advertised, yet the
PHY disagrees:

     3100 796d 004d d072 15e1 c5e1 000f 0000
     0000 0000 0800 0000 0000 0000 0000 a000
          ^^^^
Gigabit control register, bits 9 should be set, but it's clear.

Looking at the following registers, brings up another possibility what
is going on:

     0000 0000 0000 f420 082c 0000 04e8 0000
                    ^^^^ ^^^^

These two registers may provide a hint.  Of the first register, which
is the interrupt status register, bit 5 is set, indicating that a
"smartspeed downgrade occurred".  The second register is the smartspeed
configuration, which basically says that the feature is enabled.

Smartspeed is designed to allow the link to come up if two-pair CAT5
cable is used (are you using a 4-pair or 2-pair cable?) by making the
link fall back to 100mbit, or with CAT3 cable, 10mbit speeds.  What
isn't specified is whether it does this by clearing bits in the various
advertisement registers.

Given what you've said so far, I'd suggest that this is indeed the
case - when smartspeed is triggered, advertisement bits are cleared by
the PHY without the kernel's knowledge, leading to the kernel getting
the speed resolution incorrect after 5502b218e001.

There's another issue here - if smartspeed clears advertisement bits,
then if you connect a 4-pair cable after having used a 2-pair cable,
you'd still be limited to 100mbit.  The ethtool output will be just
as confusing.

The only thing I can think we should do is to read-back the
advertisement from the PHY whenever we read the rest of the status
and update the phy->advertising mask, just like we do with the link
partner advertisement.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
