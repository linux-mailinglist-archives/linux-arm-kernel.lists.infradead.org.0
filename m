Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5561A16BD63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:38:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tDyFf5l8YJFDYzgxSnaKz0ZbOolwbOdYx1P+GP3Sf14=; b=qRuZGK+YKdVbpN
	4wo6Ljch9SauGFHLPE4tSTvQMkyLE22TyKq8pL3kK5Wyv3orb9JBySYGFgUvFtYW1xMgzA8Nx7LfI
	/a4GE506Wc0GmMmdMbaGBLrHTSGT8YpmK6waVFK4mp63kpH5SWtugJlUSpkjD9+SbtPcDvVjRypj+
	NXF/R689AHapsLG3p6v9d1mwdy3iL/tIGag9L581uKJhO8jk40gOQ0aEUTpxnQ7N+q8wx7u4tfkpL
	wNqVGiS09VTtWfkd1YzAaEOPwgHJqPyd75VoyCtprbD5YuCcuvqCgBvwhJ/8NLmFrjyU1m3wDw3Yq
	FHd9NrFNOPPllH/YGt5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WfZ-000523-KP; Tue, 25 Feb 2020 09:38:25 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WfN-00051H-C3; Tue, 25 Feb 2020 09:38:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OgLcUsWl+TfcpKVPqX7tI0GqOaE8EAShX68S92kCpMU=; b=d/Q7do78YcrzGE7LMmEYudWqZ
 mYDG2BK17749n1rsgAt5lWnGpf6PCujp3aoPmsFt0tuIN3NwTxCZ7MrLyVQ/QlQw87ewH5W2qI932
 hLvDyBf83T+zBrBxVM0Zk+homMb7ziNqyDeFMjcpXoSNGharheYxgTttkXETRJu/ohz2ZFasXPl0Q
 c5DnESzfVY2CbeBgC5AWLzJYp2v9kZ3lhEKCCjKyHPu6OHD2fRm3flNrYVaObebsvtTfhzFwJqNcn
 w1bT04vior/wrkpM9ckAbUCgCMMN0hNyNUTvxR2IEClx5a3CUHj6tK3QY0xot2wcQpLb0Mgd8BXCZ
 kEK0goFsA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:52520)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j6Wei-0008OC-Ky; Tue, 25 Feb 2020 09:37:32 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j6WeF-0007KL-PX; Tue, 25 Feb 2020 09:37:03 +0000
Date: Tue, 25 Feb 2020 09:37:03 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 0/8] rework phylink interface for split MAC/PCS
 support
Message-ID: <20200225093703.GS25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_013813_575205_019BA97E 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-doc@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The following series changes the phylink interface to allow us to
better support split MAC / MAC PCS setups.  The fundamental change
required for this turns out to be quite simple.

Today, mac_config() is used for everything to do with setting the
parameters for the MAC, and mac_link_up() is used to inform the
MAC driver that the link is now up (and so to allow packet flow.)
mac_config() also has had a few implementation issues, with folk
who believe that members such as "speed" and "duplex" are always
valid, where "link" gets used inappropriately, etc.

With the proposed patches, all this changes subtly - but in a
backwards compatible way at this stage.

We pass the the full resolved link state (speed, duplex, pause) to
mac_link_up(), and it is now guaranteed that these parameters to
this function will always be valid (no more SPEED_UNKNOWN or
DUPLEX_UNKNOWN here - unless phylink is fed with such things.)

Drivers should convert over to using the state in mac_link_up()
rather than configuring the speed, duplex and pause in the
mac_config() method. The patch series includes a number of MAC
drivers which I've thought have been easy targets - I've left the
remainder as I think they need maintainer input. However, *all*
drivers will need conversion for future phylink development.

 Documentation/networking/sfp-phylink.rst          |  17 +++-
 drivers/net/dsa/b53/b53_common.c                  |   4 +-
 drivers/net/dsa/b53/b53_priv.h                    |   4 +-
 drivers/net/dsa/bcm_sf2.c                         |   4 +-
 drivers/net/dsa/lantiq_gswip.c                    |   4 +-
 drivers/net/dsa/mt7530.c                          |   4 +-
 drivers/net/dsa/mv88e6xxx/chip.c                  |  79 +++++++++++++----
 drivers/net/dsa/sja1105/sja1105_main.c            |   4 +-
 drivers/net/ethernet/cadence/macb.h               |   1 -
 drivers/net/ethernet/cadence/macb_main.c          |  57 +++++++-----
 drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c  |  61 ++++++++-----
 drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h  |   1 +
 drivers/net/ethernet/marvell/mvneta.c             |  63 ++++++++-----
 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c   | 102 +++++++++++++---------
 drivers/net/ethernet/mediatek/mtk_eth_soc.c       |   7 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |   4 +-
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c |  37 ++++----
 drivers/net/phy/phylink.c                         |   9 +-
 include/linux/phylink.h                           |  57 ++++++++----
 include/net/dsa.h                                 |   4 +-
 net/dsa/port.c                                    |   7 +-
 21 files changed, 352 insertions(+), 178 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
