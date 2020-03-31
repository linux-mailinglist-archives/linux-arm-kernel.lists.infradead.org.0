Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2813F199260
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 11:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOEKztGlfnTz8a4yW458F8YDOlHnKqzhHgiJydMqork=; b=sypbNr13G1rbdv
	LpYXd1mPeYjcdD2jnWLMf7+i7QkcltRXRzk0jGPRiJMMFFzIs4CT3bFJoTQvAtKssvbctWFC8NGBT
	4WlMCvDBqC4OTl6w1iMutK2R7kZd6t+mQPfYY8elzZpjvJsHgqnICMz8OILQp7JgM71Ufdxb9f+L/
	ke2g+PaQyhAkq8WhOTyu4eWoiJOTwvwxPBZQcXHxLQskJzPzVhs1ruLc0mc14je5EM9RtJQodKJaR
	MekEOUg/2f+vNRoQV/piYpeHc5GUqbcbHUK/em1zti+dmt18agr2CjHtjZny9OM/ToaAGe+dMJRO8
	/DX2kTQO6gN7SMAe2kXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJDL2-0005P8-R1; Tue, 31 Mar 2020 09:37:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDKq-0005NQ-JV
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 09:37:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z6TICUyxsa+QCefFyRg36rmk8KM37Y26ejkrOIJDzxQ=; b=O3Ad90Olkh1rswAXTYRjuhTkW
 pzR4t5J0iMM1/xtB0+uv9qoRNdymg3U29Ljer0555W6PyWDEYqsTp4w0AmGSo8OyeIPi9QcbQprep
 Yii3N9E14mPuUpllf8SNJcm3Kyycf5PlKiwr43wNFD/avEb5989bbK8ZmbntdViVPzNwZ4szN04DW
 OnC6magogHF6LsYVKNYhW6ujk9ImtL1C2IZ7hA9uwxjonDnp5/UtBNRlwsx0H/ua+XKhXOCcmo1VS
 HZiS89jOCPMY6v/dZTzFhjEpi13iLbjjvFrysRATMOzDpdqV5Vhj8gI/VDhhhjDeP/+9vwrnMIBmy
 AcN6Z7AVQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60310)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jJDKP-0007W4-G7; Tue, 31 Mar 2020 10:37:01 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jJDKD-00080m-3L; Tue, 31 Mar 2020 10:36:49 +0100
Date: Tue, 31 Mar 2020 10:36:49 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: David Jander <david@protonic.nl>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200331093648.GL25745@shell.armlinux.org.uk>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
 <20200331104459.6857474e@erd988>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331104459.6857474e@erd988>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_023728_657014_D0F91BB1 
X-CRM114-Status: GOOD (  31.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 linux-imx@nxp.com, kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 10:44:59AM +0200, David Jander wrote:
> On Mon, 30 Mar 2020 18:41:14 +0100
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> 
> > On Mon, Mar 30, 2020 at 10:33:03AM -0700, Florian Fainelli wrote:
> > > 
> > > 
> > > On 3/29/2020 10:26 PM, Oleksij Rempel wrote:  
> > > > Hi Andrew,
> > > > 
> > > > On Sun, Mar 29, 2020 at 05:08:54PM +0200, Andrew Lunn wrote:  
> > > >> On Sun, Mar 29, 2020 at 01:04:57PM +0200, Oleksij Rempel wrote:
> > > >>
> > > >> Hi Oleksij
> > > >>  
> > > >>> +config DEPRECATED_PHY_FIXUPS
> > > >>> +	bool "Enable deprecated PHY fixups"
> > > >>> +	default y
> > > >>> +	---help---
> > > >>> +	  In the early days it was common practice to configure PHYs by adding a
> > > >>> +	  phy_register_fixup*() in the machine code. This practice turned out to
> > > >>> +	  be potentially dangerous, because:
> > > >>> +	  - it affects all PHYs in the system
> > > >>> +	  - these register changes are usually not preserved during PHY reset
> > > >>> +	    or suspend/resume cycle.
> > > >>> +	  - it complicates debugging, since these configuration changes were not
> > > >>> +	    done by the actual PHY driver.
> > > >>> +	  This option allows to disable all fixups which are identified as
> > > >>> +	  potentially harmful and give the developers a chance to implement the
> > > >>> +	  proper configuration via the device tree (e.g.: phy-mode) and/or the
> > > >>> +	  related PHY drivers.  
> > > >>
> > > >> This appears to be an IMX only problem. Everybody else seems to of got
> > > >> this right. There is no need to bother everybody with this new
> > > >> option. Please put this in arch/arm/mach-mxs/Kconfig and have IMX in
> > > >> the name.  
> > > > 
> > > > Actually, all fixups seems to do wring thing:
> > > > arch/arm/mach-davinci/board-dm644x-evm.c:915:		phy_register_fixup_for_uid(LXT971_PHY_ID, LXT971_PHY_MASK,
> > > > 
> > > > Increased MII drive strength. Should be probably enabled by the PHY
> > > > driver.
> > > > 
> > > > arch/arm/mach-imx/mach-imx6q.c:167:		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> > > > arch/arm/mach-imx/mach-imx6q.c:169:		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> > > > arch/arm/mach-imx/mach-imx6q.c:171:		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
> > > > arch/arm/mach-imx/mach-imx6q.c:173:		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,  
> > 
> > As far as I'm concerned, the AR8035 fixup is there with good reason.
> > It's not just "random" but is required to make the AR8035 usable with
> > the iMX6 SoCs.  Not because of a board level thing, but because it's
> > required for the AR8035 to be usable with an iMX6 SoC.
> 
> I have checked with the datasheet of the AR8035, and AFAICS, what the code
> does is this:
> 
>  - Disable the SmartEEE feature of the phy. The comment in the code implies
>    that for some reason it doesn't work, but the reason itself is not given.
>    Anyway, disabling SmartEEE should IMHO opinion be controlled by a DT
>    setting. There is no reason to believe this problem is specific to the
>    i.MX6. Besides, it is a feature of the phy, so it seems logical to expose
>    that via the DT. Once that is done, it has no place here.
> 
>  - Set the external clock output to 125MHz. This is needed because the i.MX6
>    needs a 125MHz reference clock input. But it is not a requirement to use
>    this output. It is perfectly fine and possible to design a board that uses
>    an external oscillator for this. It is also possible that an i.MX6 design
>    has such a phy connected to a MAC behind a switch or some other interface.
>    Independent of i.MX6 this setting can also be necessary for other hardware
>    designs, based on different SoC's. In summary, this is a feature of the
>    specific hardware design at hand, and has nothing to do with the i.MX6
>    specifically. This should definitely be exposed through the DT and not be
>    here.
> 
>  - Enable TXC delay. To clarify, the RGMII specification version 1 specified
>    that the RXC and TXC traces should be routed long enough to introduce a
>    certain delay to the clock signal, or the delay should be introduced via
>    other means. In a later version of the spec, a provision was given for MAC
>    or PHY devices to generate this delay internally. The i.MX6 MAC interface
>    is unable to generate the required delay internally, so it has to be taken
>    care of either by the board layout, or by the PHY device. This is the
>    crucial point: The amount of delay set by the PHY delay register depends on
>    the board layout. It should NEVER be hard-coded in SoC setup code. The
>    correct way is to specify it in the DT. Needless to say that this too,
>    isn't i.MX6-specific.
> 
> > So, having it registered by the iMX6 SoC code is entirely logical and
> > correct.
> 
> I'm afraid I don't agree. See above. This code really should never have been
> here. It is not i.MX6-specific as I pointed out above, nor is it necessarily
> applicable to all i.MX6 boards that use those phy devices.

Then we will have to agree to disagree, sorry.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
