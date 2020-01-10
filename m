Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3A6137106
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKiljyC0ISmh2gnQGi+Q8lPz5/UmjAwXndZ/oliiF8A=; b=lViOyD3SAk29Qm
	5Y+YZuFCLm6mEpGSS9saNvp1za4oEbKcWiySopFuNmF0WFAgVWh0Ss62VJ2Fgnm4SdTbM7Rz/Gnj1
	r6OJF+y4LKTW8RxI/CxJx2rUTRiUNPADs78MU/Ww9+JIr3RBfDPpSdBXZHKikuF7yWffOxfnnoArK
	q5AstOSp/n5fa5iRglD3GbQxrtw89I50XS4UjM6W1BjhzVmqqUQRTQJtMoA0y4nDdDENHa/PS3Bam
	YUr7QoIqS4actDiFPCrncN2e0MuvZrRMEFY1+jdHNqUOdhs9Un9Y6hknt18ONmpM5j8o1lesyJvyQ
	MuNxMRPhfXo8aNpziKKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipw7Z-0005kt-Gg; Fri, 10 Jan 2020 15:22:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipw7P-0005i4-KA
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1E/aUdlk2arQ+SgSotrUtWIN6SqdTC20k5Cqzx8WCNs=; b=0JZtdRfljjz4qgkWuL0oGkzp0
 nq1qHKyhsYYJuXG4AIYrlcpNIYcxOfteqWB8MHTk2SU/q/wvIAWX2h7pQxs2s89p14SvKZq6z8xSf
 exp5CsuBFgJdAfM50miQir4F03FecXhau/sBHpCNiZoXZvHOJJHUDIiXdsvGn0aKRxEsy6+esF5Vb
 oGA9PQt23aQ5hu7e0dXzupaDtAL544Ej+Xbx5jDhb56uV6ijx6v41lrCap5gorWfPWJQTqaejk7s7
 l6NwSYmBR3vePezA8du+dP0bM0Yp1Vn6NKm2sTcXcg6wrYKOi+ujb1IOFaANmw3avL57ByAJuMrj3
 mXohN2q5Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:60652)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ipw78-0003rJ-Hz; Fri, 10 Jan 2020 15:22:18 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ipw75-0001c2-SL; Fri, 10 Jan 2020 15:22:15 +0000
Date: Fri, 10 Jan 2020 15:22:15 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200110152215.GF25745@shell.armlinux.org.uk>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
 <20200110140415.GE19739@lunn.ch>
 <20200110142038.2ed094ba@donnerap.cambridge.arm.com>
 <20200110150409.GD25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110150409.GD25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072235_669026_A05780EB 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 03:04:09PM +0000, Russell King - ARM Linux admin wrote:
> On Fri, Jan 10, 2020 at 02:20:38PM +0000, Andre Przywara wrote:
> > On Fri, 10 Jan 2020 15:04:15 +0100
> > Andrew Lunn <andrew@lunn.ch> wrote:
> > 
> > Hi Andrew,
> > 
> > > On Fri, Jan 10, 2020 at 11:54:08AM +0000, Andre Przywara wrote:
> > > > With SGMII, the MAC and the PHY can negotiate the link speed between
> > > > themselves, without the host needing to mediate between them.
> > > > Linux recognises this, and will call phylink's mac_config with the speed
> > > > member set to SPEED_UNKNOWN (-1).
> > > > Currently the axienet driver will bail out and complain about an
> > > > unsupported link speed.
> > > > 
> > > > Teach axienet's mac_config callback to leave the MAC's speed setting
> > > > alone if the requested speed is SPEED_UNKNOWN.  
> > > 
> > > Hi Andre
> > > 
> > > Is there an interrupt when SGMII signals a change in link state? If
> > > so, you should call phylink_mac_change().
> > 
> > Good point. The doc describes a "Auto-Negotiation Complete" interrupt
> > status bit, which signal that " ... auto-negotiation of the SGMII or
> > 1000BASE-X interface has completed."
> 
> It depends what they mean by "Auto-negotiation complete" in SGMII.
> SGMII can complete the handshake, yet the config_reg word indicate
> link down.  If such an update causes an "Auto-negotiation complete"
> interrupt, then that's sufficient.
> 
> However, looking at axienet_mac_pcs_get_state(), that is just reading
> back what the MAC was set to in axienet_mac_config(), which is not
> how this is supposed to work.  axienet_mac_pcs_get_state() is
> supposed to get the results of the SGMII/1000BASE-X "negotiation".
> That also needs to be fixed.

I found "pg138-axi-ethernet.pdf" online, which I guess is this IP.
It says for SGMII:

The results of the SGMII auto-negotiation can be read from the SGMII
Management Auto-Negotiation Link Partner Ability Base register
(Table 2-54). The speed of the subsystem should then be set to match.

and similar for 1000BASE-X (referencing the same register.)

However, what they give in table 2-54 is the 1000BASE-X version of
the config_reg word, not the SGMII version (which is different.)

Hmm, I guess there's probably some scope for phylink to start
handling an IEEE 802.3 compliant PCS accessed over MDIO rather
than having each network driver implement this, but for now your
axienet_mac_pcs_get_state() implementation needs to be reading
from the register described in table 2-54 and interpreting the
results according to whether state->interface is 802.3z or not.

Also note, don't set state->interface in axienet_mac_pcs_get_state(),
you will be passed the currently selected interface that was last
configured via axienet_mac_config().

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
