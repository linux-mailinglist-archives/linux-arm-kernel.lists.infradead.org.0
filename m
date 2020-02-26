Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DC817002C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 14:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeOjluoCQnZ1YUL9dtrc7VOPS5RxBTJjt7nhIuYAasQ=; b=kSuCVA2sxeyuSo
	aBTknL6T1RDs8BEji/PF8MIW1vv9FsHI/CWvoFGVEz2cZUR7lnEEKaiIAk7wE/AUl+YArOmnX5Bzg
	2VTZbo0FUzMwyaNymcmSpmOsP1+PqMdElSeNMqFXfsJHhetjhFKVKrkpcBpdvtZW6veO0jSWTJEbA
	iff9dmM3uO8tjMyM8D9WvNmVRfjCLwFzSF77wh8/QHfLZ/0yHuTpL6I5njVsiIkt6pi8CVgMJYf/o
	wOC2+ivDAyAMqcUkx/e412hCLlXgnD4HyZaS9dce3hINZ2CzFobeWCDMcNuDKb64WmmFGaMBu0SF/
	Lg7AVmVhnxqOKYV/On1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6wsJ-0007qk-Am; Wed, 26 Feb 2020 13:37:19 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ws6-0007nw-K3; Wed, 26 Feb 2020 13:37:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TBp8jxz4Fmq6X7/vnIup4Lw/YHb5dMP+d4ClS8jxNgw=; b=wrqYx08rR2tTsnBz1DPPvryi2
 YTVRG+GIrDgaSd9MY490EZWpF+4l6G2tyCrJPUxc3qVKjh2dJQl5nfPDEDeF8tRIlDDgRwY7edlyy
 tS+OWrLcey8GjoMAeJP+CPnz9UpUcju6jHoqL91TX+or+1PLwYPypt7Rj02jHDLdZXtPDox6P/OUt
 /v/cD0NICWsSuKbp1+4lgfBshaD9fWz0RZEOxpaskqAcqbFv3mL0vHyJH3EIlgK6MBt9KBJuDvu8Q
 KpFE2heg1YaRy8+Wk8Ty+1q8S0Vrf7AVzW4cQNi+Qxtp9FmhYbvqRGaikNhVgOSO+wM6uXEXbdSmp
 uaPTYK3yQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:45522)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j6wrQ-0007pI-Sc; Wed, 26 Feb 2020 13:36:29 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j6wrG-0008RN-He; Wed, 26 Feb 2020 13:36:14 +0000
Date: Wed, 26 Feb 2020 13:36:14 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH net-next v2 1/8] net: phylink: propagate resolved link
 config via mac_link_up()
Message-ID: <20200226133614.GA25745@shell.armlinux.org.uk>
References: <20200226102312.GX25745@shell.armlinux.org.uk>
 <E1j6tqv-0003G6-BO@rmk-PC.armlinux.org.uk>
 <CA+h21hrR1Xkx9gwAT2FHqcH38L=xjWiPxmF2Er7-4fHFTrA8pQ@mail.gmail.com>
 <20200226115549.GZ25745@shell.armlinux.org.uk>
 <CA+h21hqjMBjgQDee8t=Csy5DXVUk9f=PP0hHSDfkuA746ZKzSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hqjMBjgQDee8t=Csy5DXVUk9f=PP0hHSDfkuA746ZKzSQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_053707_034010_25DF94B2 
X-CRM114-Status: GOOD (  46.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Felix Fietkau <nbd@nbd.name>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 03:00:30PM +0200, Vladimir Oltean wrote:
> On Wed, 26 Feb 2020 at 13:56, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Wed, Feb 26, 2020 at 01:06:06PM +0200, Vladimir Oltean wrote:
> > > Hi Russell,
> > >
> > > On Wed, 26 Feb 2020 at 12:23, Russell King <rmk+kernel@armlinux.org.uk> wrote:
> > > >
> > > > Propagate the resolved link parameters via the mac_link_up() call for
> > > > MACs that do not automatically track their PCS state. We propagate the
> > > > link parameters via function arguments so that inappropriate members
> > > > of struct phylink_link_state can't be accessed, and creating a new
> > > > structure just for this adds needless complexity to the API.
> > > >
> > > > Tested-by: Andre Przywara <andre.przywara@arm.com>
> > > > Tested-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > > > Tested-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > > > ---
> > > >  Documentation/networking/sfp-phylink.rst      | 17 +++++-
> > > >  drivers/net/ethernet/cadence/macb_main.c      |  7 ++-
> > > >  .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  |  7 ++-
> > > >  drivers/net/ethernet/marvell/mvneta.c         |  8 ++-
> > > >  .../net/ethernet/marvell/mvpp2/mvpp2_main.c   | 19 +++++--
> > > >  drivers/net/ethernet/mediatek/mtk_eth_soc.c   |  7 ++-
> > > >  .../net/ethernet/stmicro/stmmac/stmmac_main.c |  4 +-
> > > >  .../net/ethernet/xilinx/xilinx_axienet_main.c |  7 ++-
> > > >  drivers/net/phy/phylink.c                     |  9 ++-
> > > >  include/linux/phylink.h                       | 57 ++++++++++++++-----
> > > >  net/dsa/port.c                                |  4 +-
> > > >  11 files changed, 105 insertions(+), 41 deletions(-)
> > > >
> > > > diff --git a/Documentation/networking/sfp-phylink.rst b/Documentation/networking/sfp-phylink.rst
> > > > index d753a309f9d1..8d7af28cd835 100644
> > > > --- a/Documentation/networking/sfp-phylink.rst
> > > > +++ b/Documentation/networking/sfp-phylink.rst
> > > > @@ -74,10 +74,13 @@ phylib to the sfp/phylink support.  Please send patches to improve
> > > >  this documentation.
> > > >
> > > >  1. Optionally split the network driver's phylib update function into
> > > > -   three parts dealing with link-down, link-up and reconfiguring the
> > > > -   MAC settings. This can be done as a separate preparation commit.
> > > > +   two parts dealing with link-down and link-up. This can be done as
> > > > +   a separate preparation commit.
> > > >
> > > > -   An example of this preparation can be found in git commit fc548b991fb0.
> > > > +   An older example of this preparation can be found in git commit
> > > > +   fc548b991fb0, although this was splitting into three parts; the
> > > > +   link-up part now includes configuring the MAC for the link settings.
> > > > +   Please see :c:func:`mac_link_up` for more information on this.
> > > >
> > > >  2. Replace::
> > > >
> > > > @@ -207,6 +210,14 @@ this documentation.
> > > >     using. This is particularly important for in-band negotiation
> > > >     methods such as 1000base-X and SGMII.
> > > >
> > > > +   The :c:func:`mac_link_up` method is used to inform the MAC that the
> > > > +   link has come up. The call includes the negotiation mode and interface
> > > > +   for reference only. The finalised link parameters are also supplied
> > > > +   (speed, duplex and flow control/pause enablement settings) which
> > > > +   should be used to configure the MAC when the MAC and PCS are not
> > > > +   tightly integrated, or when the settings are not coming from in-band
> > > > +   negotiation.
> > > > +
> > > >     The :c:func:`mac_config` method is used to update the MAC with the
> > > >     requested state, and must avoid unnecessarily taking the link down
> > > >     when making changes to the MAC configuration.  This means the
> > >
> > > Just to make sure I understand the changes:
> > > - A MAC with no PCS can be configured in either .mac_config or .mac_link_up
> >
> > I would much prefer mac_link_up to be used for setting the speed,
> > duplex and pause modes for future-proofing in all cases except for
> > the case where these parameters are automatically updated in the
> > MAC from its associated PCS.
> >
> > mac_link_up must not be used to configure the AN mode or interface
> > mode; these must be configured in mac_config().
> >
> > > - A MAC that needs to be manually reconfigured to the link mode
> > > negotiated by its PCS needs to have the PCS configured in .mac_config
> > > and the MAC in .mac_link_up
> >
> > I do have further changes that split the PCS ops from the MAC ops, so
> > what is in this series is not the full story yet - some of the further
> > patches can be found in my "phy" branch and "cex7" branches where I add
> > support to dpaa2 for automatically switching between SGMII and
> > 1000BASE-X.  dpaa2 is one of these split PCS/MAC setups, but with the
> > extra complication that there's a firmware layer between the PCS and
> > MAC.
> >
> > However, this series is the first stand-alone step along the road to
> > supporting split PCS/MAC setups in a sane manner.
> >
> > I discussed with Andrew Lunn how much to send, and the conclusion was
> > to make the changes in a number of small patch series, as large patch
> > series tend not to get reviewed.  My experience with _this_ series is
> > that even this is very difficult to get feedback for, so adding any
> > additional patches will just make that worse.
> >
> > > - A MAC with PCS where the MAC follows the PCS negotiation
> > > automatically in hardware is basically equivalent with a MAC with no
> > > PCS, and therefore can be configured in either .mac_config or
> > > .mac_link_up
> >
> > In this case, mac_link_up doesn't do anything with the speed/duplex/
> > pause stuff when those are automatically passed from the PCS.
> >
> > I'm afraid that sentence contains a subtlety that's going to get
> > people: it is not clear cut because of the different natures of the
> > various links.
> >
> > In 1000BASE-X, speed is fixed at 1G, and the PCS autonegotiates the
> > duplex and pause with the remote end.  For mvneta (an example of a
> > combined PCS/MAC implementation) operating in-band:
> > - In mac_config():
> >   - configures for 1000BASE-X interface type with in-band AN.
> >   - configures fixed 1G.
> >   - As mvneta only supports full duplex, we disable duplex negotiation
> >     and force full duplex.
> >   - Only symmetric pause is supported, and we set the symmetric pause
> >     advertisement appropriately, with pause negotiation enabled.
> > - In mac_link_up():
> >   - merely allow the device to transmit and receive.
> >
> > The MAC will be forced to 1G, full duplex, and will automatically be
> > configured by the PCS for pause support depending on the hardware
> > based pause resolution.
> >
> > The situation is different for SGMII operating in-band:
> > - In mac_config():
> >   - configures for SGMII interface type with in-band AN.
> >   - configures speed and duplex negotiation.
> >   - disables pause negotiation; SGMII has no support for this.
> > - In mac_link_up():
> >   - enables or disables pause frames depending on the tx_pause/
> >     rx_pause flags, since this is not available from the MAC.
> >   - allow the device to transmit and receive.
> >
> > If we aren't operating in in-band mode, then:
> > - In mac_config():
> >   - configures for the interface type without in-band AN.
> >   - disables speed, duplex and pause negotiation.
> > - In mac_link_up():
> >   - sets the speed, duplex and pause frames depending on the passed
> >     parameters.
> 
> But there shouldn't be any requirement for this to be configured at
> this step and not earlier?
> 
> >   - allow the device to transmit and receive.
> >
> > Please see patch 7 of this series which implements this for mvneta.
> >
> > So, there is a split between what mac_config() should be doing and what
> > mac_link_up() should be doing; this is why I've said in the
> > documentation that the "mode" and "interface" are for reference only in
> > mac_link_up() - mac_link_up() can use these to decide _how_ to program
> > the resolved parameters, but should _not_ use them to determine the
> > link configuration (such as changing the interface between SGMII and
> > 1000BASE-X - that is the responsibility of mac_config().)
> 
> Does any driver currently make any use of the phy_interface_t argument
> provided as reference in .mac_link_up?

Yes.  mvpp2 uses it to decide whether to configure the 10/100/1G MAC
or the 10G XLG MAC, for example - there are drivers that need to
configure different blocks for the link-up event depending on the
interface mode.  Rather than having drivers store the interface mode
internally, copying what phylink is doing, we provide that to the
network driver so it can make its own decisions without that additional
complexity.

> > I hope that helps clarify the situation.
> >
> > --
> > RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> > FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> > According to speedtest.net: 11.9Mbps down 500kbps up
> 
> Ok, so basically what is known early, as well as whatever is needed
> for the in-band AN preparation, is configured in .mac_config and what
> is known late is configured in .mac_link_up.

I envision a time when the speed/duplex/pause settings will not be
passed to mac_config.

> Except that you would like to slowly move everything MAC-related to
> .mac_link_up, and everything PCS-related to .mac_config, presumably in
> an effort to convert .mac_config to .pcs_config and .mac_link_up to
> .mac_config. I don't actually know what other patches you have in the
> cex7 branch you mentioned. Please consider that people don't
> necessarily bookmark your git trees. I've spent some good 10 minutes
> searching for the "cex7" and "phy" keywords in emails received from
> you, and haven't found the git links.

http://git.armlinux.org.uk/cgit/linux-arm.git/

I'm afraid that it's rather scattered amongst quite a few branches at
the moment, because of their dependencies on other stuff in my tree.
For dpaa2, see:

http://git.armlinux.org.uk/cgit/linux-arm.git/log/?h=cex7

specifically:

"dpaa2-mac: add PCS support"
"net: phylink: add c45 pcs helpers"
"net: phylink: helpers for 802.3 clause 37/SGMII register sets"
"net: phylink: add pcs operations"
"net: phylink: rename 'ops' to 'mac_ops'"
"net: mii: add linkmode_adv_to_mii_adv_x()"
"net: mii: convert mii_lpa_to_ethtool_lpa_x() to linkmode variant"

dpaa2 is complicated by the firmware, and that we can't switch the
interface mode between (SGMII,1000base-X) and 10G.

If the firmware is in "DPMAC_LINK_TYPE_PHY" mode, it expects to be told
the current link parameters via the dpmac_set_link_state() call - it
isn't clear whether that needs to be called for other modes with the
up/down state (firmware API documentation is poor.)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
