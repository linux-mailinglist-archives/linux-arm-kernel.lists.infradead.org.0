Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9501BD055
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 01:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8rTWHzZ9SCijO0nFjavbS6oZTap3Qz9TLI2SFtWU4Q=; b=aEohqLtVpjOGN7
	nnBGvdgB6BqsDiPmv7txkNYqBUxf+8a12Goe3srIV+pLYuzdDdpDOiIy+p2EOJpUCnkrphoJUAoEV
	hDsEPQTHzR4EWDQL9bQh4QOI5OTWOttPiQBOrovEsC9O012DfFRKGs3CwtEzX53NDB4wFDq3s33y0
	PpNcMqrhsRdmWs5YXqDzd1VlPxZPA2qB6Wtwr42OEfhp2wlYg860gaU+Tyh4lMOMU1PF7/ofPQO+1
	mTzPpQ4Hz6Odh87Byykx6p+KVlu6Ue9RsJ1g3Uc72AOSZTeae1iNNTekBtnMASsb7AZJBQe7btgDC
	h2xsDPzmIZcOG3Nwfgeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZGl-00076n-JB; Tue, 28 Apr 2020 23:04:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTZGW-0006Ws-2p
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 23:03:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BsAu9CbTZnYT7McFaL1CunnflUXC01TqVFN2jcTLruY=; b=NPw9vlFaRyuah8iIS1n8Vt8id
 KuCm92icKQx/5U35DtxwIj4SrqcZ0Av337Of8de0bNhl6X9DdAFmKa5SqULs2CyxJUtD89jOuzkC0
 N2AqY0ab6oipX7bttova4xLy93TXm4ti88mrdN3RF1YypsTrgz7h0Pi2tJ5YCidKusIGQdeRD9LN1
 sFxXI94Tnaji9rBhrj23NIocNT9m8s5ikoCoPRcbp2gi3piTfzgIUbw6TQ4Zni+oMi84sDO88LxYa
 VJH59cVDEbpCLk3OqImVLkiSGkKJn1PhsQg5aoR57JQQD1ASyW5Gge8hrkhD1npJn5kLdZ/HpBCoM
 Q8+W4Z+3Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57056)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jTZE5-00042I-Pv; Wed, 29 Apr 2020 00:01:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jTZE0-00086c-DQ; Wed, 29 Apr 2020 00:01:12 +0100
Date: Wed, 29 Apr 2020 00:01:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robert Hancock <hancock@sedsystems.ca>
Subject: Re: Xilinx axienet 1000BaseX support
Message-ID: <20200428230112.GS25745@shell.armlinux.org.uk>
References: <20200110152215.GF25745@shell.armlinux.org.uk>
 <20200110170457.GH25745@shell.armlinux.org.uk>
 <20200118112258.GT25745@shell.armlinux.org.uk>
 <3b28dcb4-6e52-9a48-bf9c-ddad4cf5e98a@arm.com>
 <20200120154554.GD25745@shell.armlinux.org.uk>
 <20200127170436.5d88ca4f@donnerap.cambridge.arm.com>
 <20200127185344.GA25745@shell.armlinux.org.uk>
 <bf2448d0-390c-5045-3503-885240829fbf@sedsystems.ca>
 <20200422075124.GJ25745@shell.armlinux.org.uk>
 <8a829647-34a8-6e6a-05cf-76f5e88b8410@sedsystems.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a829647-34a8-6e6a-05cf-76f5e88b8410@sedsystems.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_160348_145822_BED4EEDF 
X-CRM114-Status: GOOD (  32.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Andre Przywara <andre.przywara@arm.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 03:59:45PM -0600, Robert Hancock wrote:
> On 2020-04-22 1:51 a.m., Russell King - ARM Linux admin wrote:
> > On Tue, Apr 21, 2020 at 07:45:47PM -0600, Robert Hancock wrote:
> > > Hi Andre/Russell,
> > > 
> > > Just wondering where things got to with the changes for SGMII on Xilinx
> > > axienet that you were discussing (below)? I am looking into our Xilinx setup
> > > using 1000BaseX SFP and trying to get it working "properly" with newer
> > > kernels. My understanding is that the requirements for 1000BaseX and SGMII
> > > are somewhat similar. I gathered that SGMII was working somewhat already,
> > > but that not all link modes had been tested. However, it appears 1000BaseX
> > > is not yet working in the stock kernel.
> > > 
> > > The way I had this working before with a 4.19-based kernel was basically a
> > > hack to phylink to allow the Xilinx PCS/PMA PHY to be configured
> > > sufficiently as a PHY for it to work, and mostly ignored the link status of
> > > the SFP PHY itself, even though we were using in-band signalling mode with
> > > an SFP module. That was using this patch:
> > > 
> > > https://patchwork.ozlabs.org/project/netdev/patch/1559330285-30246-5-git-send-email-hancock@sedsystems.ca/
> > > 
> > > Of course, that's basically just a hack which I suspect mostly worked by
> > > luck. I see that there are some helpers that were added to phylink to allow
> > > setting PHY advertisements and reading PHY status from clause 22 PHY
> > > devices, so I'm guessing that is the way to go in this case? Something like:
> > > 
> > > axienet_mac_config: if using in-band mode, use
> > > phylink_mii_c22_pcs_set_advertisement to configure the Xilinx PHY.
> > > 
> > > axienet_mac_pcs_get_state: use phylink_mii_c22_pcs_get_state to get the MAC
> > > PCS state from the Xilinx PHY
> > > 
> > > axienet_mac_an_restart: if using in-band mode, use
> > > phylink_mii_c22_pcs_an_restart to restart autonegotiation on Xilinx PHY
> > > 
> > > To use those c22 functions, we need to find the mdio_device that's
> > > referenced by the phy-handle in the device tree - I guess we can just use
> > > some of the guts of of_phy_find_device to do that?
> > 
> > Please see the code for DPAA2 - it's changed slightly since I sent a
> > copy to the netdev mailing list, and it still isn't clear whether this
> > is the final approach (DPAA2 has some fun stuff such as several
> > different PHYs at address 0.) NXP basically didn't like the approach
> > I had in the patches I sent to netdev, we had a call, they presented
> > an alternative appraoch, I implemented it, then they decided my
> > original approach was the better solution for their situation.
> > 
> > See http://git.armlinux.org.uk/cgit/linux-arm.git/log/?h=cex7
> > 
> > specifically the patches from:
> > 
> >    "dpaa2-mac: add 1000BASE-X/SGMII PCS support"
> > 
> > through to:
> > 
> >    "net: phylink: add interface to configure clause 22 PCS PHY"
> > 
> > You may also need some of the patches further down in the net-queue
> > branch:
> > 
> >    "net: phylink: avoid mac_config calls"
> > 
> > through to:
> > 
> >    "net: phylink: rejig link state tracking"
> 
> I've been playing with this a bit on a 5.4 kernel with some of these patches
> backported. However, I'm running into something that my previous hacks for
> this basically dealt with as a side effect: when phylink_start is called,
> sfp_upstream_start gets called, an SFP module is detected,
> phylink_connect_phy gets called, but then it hits this condition and bails
> out, because we are using INBAND mode with 1000BaseX:
> 
> 	if (WARN_ON(pl->cfg_link_an_mode == MLO_AN_FIXED ||
> 		    (pl->cfg_link_an_mode == MLO_AN_INBAND &&
> 		     phy_interface_mode_is_8023z(interface))))
> 		return -EINVAL;

I'm expecting SGMII mode to be used when there's an external PHY as
that gives greatest flexibility (as it allows 10 and 100Mbps speeds
as well.)  From what I remember, these blocks support SGMII, so it
should just be a matter of adding that.

> I guess I'm not sure how this is supposed to work when the PHY on the SFP
> module gets detected, i.e. if there's supposed to be another code path that
> this is supposed to go down, or this is something that just hasn't been
> fully implemented yet?

Copper PHYs work fine - using SGMII mode everywhere so far.

The problem is, if you want to use them as 1000BASE-X, you generally
have to ensure that the PHY is appropriately programmed for 1000BASE-X
negotiation, and the copper side advertisement only indicates 1G
support. Not all copper PHYs have the PHY accessible for such
programming, and in that case it becomes an exercise of "read the
SFP documentation before buying"!

The other complication is... there's nothing in the module EEPROM
that really says whether they are 1000BASE-X or SGMII.

What saves us thus far is that most copper SFPs use the Marvell
88E1111 chip, which is I2C accessible, and we drive that using
phylib - and the phylib Marvell driver knows how to ensure that
the PHY is configured for SGMII mode.  I'm not sure the same is
true with 1000BASE-X mode.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
