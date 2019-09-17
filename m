Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0B6B518F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 17:31:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQ76bBDro4zBL6rY4pD4Z7xc4FPgiPNbmmLgGk01KTc=; b=loovryIDzNWYNI
	H+UEQR4G0kXYmEwWMthDRUU63Na8vGfvvitlGaB4MFW8Rig5KnVxBWp8J5GUzzFO3uM0OyUpZsJ+d
	OOoRARMR9qVsdwwAiFKcmp2M81m9+76lCEC9uHU0ia9rEouolOKDzcWvbgvC5nWD+UJojQN6IeRjl
	4toI5tMgbs4hPBDoVLlMuQpTpazBScME/jjKa5NgK3KfOYeZILl9SP5CJJzkvRLMaRprondCMRjzN
	MMIVR6hudXcpZrw09Mlu+kCm3TitJDCoH0xHjKlRihbDvL+WEVPjGUhi27VhX4o0x/Ci49JMhVolD
	eJkkq7vL/6e+RFDERzwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFRV-0007yr-Vc; Tue, 17 Sep 2019 15:31:02 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFRH-0007x3-8s
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 15:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qll1tloqDQ4i0lnHJuE14voE1ekPEugt3ZzCaYScXbc=; b=vczL669YtI5E4IKwCcpkQJ42K
 Fj1bG6PlOtRzB4ABC47TbZy9qp7UMQIKh/n+/Sc0gh3jtWA8ifD27k0cufo38DVraR5VpDVCWXf3+
 YJWZNGtFm8OsGKA0A699IblZjjyWODcVaqsazbk0J5CQm0vFh6NuPPtv28bZNiwBsEM6n3iQj6yrd
 XgC+DIM+wow3yz8bX41g7H9yJXcwTwaz0VxZ6k1hGmwuKFqJADWxlKrTro+Mo7LCMnu9+gQdi7af0
 xo4+/r3pzO1aKpMEatk2CzqUq2tfkQgkzO+VOzxSuh+v2pEsiwvCzuSxVgqgIrZWhi3cbV7yio9O4
 O6EKQvz7Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40688)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iAFQz-0002ed-Rp; Tue, 17 Sep 2019 16:30:30 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iAFQx-0001P4-9j; Tue, 17 Sep 2019 16:30:27 +0100
Date: Tue, 17 Sep 2019 16:30:27 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: tinywrkb <tinywrkb@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917153027.GW25745@shell.armlinux.org.uk>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190917124101.GA1200564@arch-dsk-01>
 <20190917125434.GH20778@lunn.ch>
 <20190917133253.GA1210141@arch-dsk-01>
 <20190917133942.GR25745@shell.armlinux.org.uk>
 <20190917151707.GV25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917151707.GV25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_083047_651126_273070B1 
X-CRM114-Status: GOOD (  35.01  )
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
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 04:17:07PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Sep 17, 2019 at 02:39:43PM +0100, Russell King - ARM Linux admin wrote:
> > On Tue, Sep 17, 2019 at 04:32:53PM +0300, tinywrkb wrote:
> > > On Tue, Sep 17, 2019 at 02:54:34PM +0200, Andrew Lunn wrote:
> > > > On Tue, Sep 17, 2019 at 03:41:01PM +0300, tinywrkb wrote:
> > > > > On Sun, Sep 15, 2019 at 03:56:52PM +0200, Andrew Lunn wrote:
> > > > > > > Tinywrkb confirmed to me in private communication that revert of
> > > > > > > 5502b218e001 fixes Ethernet for him on effected system.
> > > > > > > 
> > > > > > > He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> > > > > > > only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> > > > > > > there was a plan to use a different 10/100 PHY for Solo/DualLite
> > > > > > > SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> > > > > > > AR8035 PHY that supports 1Gb.
> > > > > > > 
> > > > > > > Commit 5502b218e001 might be triggering a hardware issue on the affected
> > > > > > > Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> > > > > > > SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> > > > > > > the moment.
> > > > > > 
> > > > > > Could somebody with an affected device show us the output of ethtool
> > > > > > with and without 5502b218e001. Does one show 1G has been negotiated,
> > > > > > and the other 100Mbps? If this is true, how does it get 100Mbps
> > > > > > without that patch? We are missing a piece of the puzzle.
> > > > > > 
> > > > > > 	Andrew
> > > > > 
> > > > > linux-test-5.1rc1-a2703de70942-without_bad_commit
> > > > > 
> > > > > Settings for eth0:
> > > > > 	Supported ports: [ TP MII ]
> > > > > 	Supported link modes:   10baseT/Half 10baseT/Full
> > > > > 	                        100baseT/Half 100baseT/Full
> > > > > 	                        1000baseT/Full
> > > > 
> > > > So this means the local device says it can do 1000Mbps.
> > > > 
> > > > 
> > > > > 	Supported pause frame use: Symmetric
> > > > > 	Supports auto-negotiation: Yes
> > > > > 	Supported FEC modes: Not reported
> > > > > 	Advertised link modes:  10baseT/Half 10baseT/Full
> > > > > 	                        100baseT/Half 100baseT/Full
> > > > > 	                        1000baseT/Full
> > > > 
> > > > The link peer can also do 1000Mbps.
> > > > 
> > > > 
> > > > > 	Advertised pause frame use: Symmetric
> > > > > 	Advertised auto-negotiation: Yes
> > > > > 	Advertised FEC modes: Not reported
> > > > > 	Link partner advertised link modes:  10baseT/Half 10baseT/Full
> > > > > 	                                     100baseT/Half 100baseT/Full
> > > > > 	                                     1000baseT/Full
> > > > > 	Link partner advertised pause frame use: Symmetric
> > > > > 	Link partner advertised auto-negotiation: Yes
> > > > > 	Link partner advertised FEC modes: Not reported
> > > > > 	Speed: 100Mb/s
> > > > 
> > > > Yet they have decided to do 100Mbps. 
> > > > 
> > > > We need to understand Why? The generic PHY driver would not do this on
> > > > its own. So i'm thinking something has poked a PHY register with some
> > > > value, and this patch is causing it to be over written.
> > > > 
> > > > Please can you use mii-tool -v -v to dump the PHY registers in each
> > > > case.
> > > > 
> > > > Thanks
> > > > 	Andrew
> > > 
> > > Here's the output of # mii-tool -v -v eth0 
> > > 
> > > * linux-test-5.1rc1-a2703de70942-without_bad_commit
> > > 
> > > Using SIOCGMIIPHY=0x8947
> > > eth0: negotiated 100baseTx-FD flow-control, link ok
> > >   registers for MII PHY 0:
> > >     3100 796d 004d d072 15e1 c5e1 000f 0000
> > >     0000 0000 0800 0000 0000 0000 0000 a000
> > >     0000 0000 0000 f420 082c 0000 04e8 0000
> > >     3200 3000 0000 063d 0000 0000 0000 0000
> > >   product info: vendor 00:13:74, model 7 rev 2
> > >   basic mode:   autonegotiation enabled
> > >   basic status: autonegotiation complete, link ok
> > >   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> > >   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> > >   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> > 
> > This is *not* advertising 1000baseT modes (register 9).
> > 
> > > 
> > > 
> > > * linux-test-5.1rc1-5502b218e001-with_bad_commit
> > > 
> > > Using SIOCGMIIPHY=0x8947
> > > eth0: negotiated 100baseTx-FD flow-control, link ok
> > >   registers for MII PHY 0:
> > >     3100 796d 004d d072 15e1 c5e1 000d 0000
> > >     0000 0000 0800 0000 0000 0000 0000 a000
> > >     0000 0000 0000 0000 082c 0000 04e8 0000
> > >     3200 3000 0000 063d 0000 0000 0000 0000
> > >   product info: vendor 00:13:74, model 7 rev 2
> > >   basic mode:   autonegotiation enabled
> > >   basic status: autonegotiation complete, link ok
> > >   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> > >   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> > >   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> > 
> > Neither is this.
> > 
> > However, the kernel and phylib _thinks_ that it is.  My guess is
> > something has rewritten the PHY registers from userspace, rather
> > than using ethtool to change the advertisment.  The MAC is still
> > trying to operate at 1000Mbps (since that is what phylib resolved)
> > yet the link might be actually operating at 100Mbps - but for that
> > to happen, we should've seen the link go down and up again.
> > 
> > Odd.
> 
> For reference, here I see:
> 
> Using SIOCGMIIPHY=0x8947
> eth0: negotiated 1000baseT-FD flow-control, link ok
>   registers for MII PHY 0:
>     3100 796d 004d d072 15e1 c1e1 000d 0000
>     0000 0200 3800 0000 0000 0000 0000 a000
>     0000 0000 0000 0000 082c 0000 04e8 0000
>     3200 3000 0000 060e 0000 0000 0000 0000
>   product info: vendor 00:13:74, model 7 rev 2
>   basic mode:   autonegotiation enabled
>   basic status: autonegotiation complete, link ok
>   capabilities: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
>   advertising:  1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
>   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> 
> Note that userspace writing to register 9 (1G settings) will update
> the physical PHY's advertisment for 1G speeds, but the kernel's idea
> will not be updated, so things will become de-sync'd, and the kernel
> _will_ incorrectly determine the speed.
> 
> So, are you using mii-tool or mii-diag to change the negotiation
> settings, rather than using ethtool?
> 
> This is likely the case, as prior to 5502b218e001, we used to read
> the advertisment registers afresh each time we evaluate the resulting
> link mode.  After 5502b218e001, we use the advertisment mask cached
> in phydev->advertising, which, looking at phy_mii_ioctl(), will not
> be updated if register 9 is written.

Please try this patch - I haven't written a commit message for it yet,
it's just to prove the above point.

Thanks.

 drivers/net/phy/phy.c | 5 +++++
 include/linux/mii.h   | 9 +++++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 7af390d8bbdb..068a08a50064 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -458,6 +458,11 @@ int phy_mii_ioctl(struct phy_device *phydev, struct ifreq *ifr, int cmd)
 							   val);
 				change_autoneg = true;
 				break;
+			case MII_CTRL1000:
+				mii_ctrl1000_mod_linkmode_adv_t(phydev->advertising,
+							        val);
+				change_autoneg = true;
+				break;
 			default:
 				/* do nothing */
 				break;
diff --git a/include/linux/mii.h b/include/linux/mii.h
index 5cd824c1c0ca..1249d32dbd63 100644
--- a/include/linux/mii.h
+++ b/include/linux/mii.h
@@ -455,6 +455,15 @@ static inline void mii_lpa_mod_linkmode_lpa_t(unsigned long *lp_advertising,
 			 lp_advertising, lpa & LPA_LPACK);
 }
 
+static inline void mii_ctrl1000_mod_linkmode_adv_t(unsigned long *advertising,
+						   u32 ctrl1000)
+{
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT, advertising,
+			 ctrl1000 & ADVERTISE_1000HALF);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, advertising,
+			 ctrl1000 & ADVERTISE_1000FULL);
+}
+
 /**
  * linkmode_adv_to_lcl_adv_t
  * @advertising:pointer to linkmode advertising

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
