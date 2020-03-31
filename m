Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1217A199B82
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AOg2evJZ2UTqGqdKwSGo4VXGv6EsqOk3pO55xAtd74=; b=F6wpj6bmOTTYky
	cTjg1tz8BD/+KKT34C8npDP31O+pXwvOU5zdi2tupgdAU/os6zaNkOy8xv2kyg8iky0jawsCLl7KT
	jvulgv6F1u2OWtOJB16ntgOfjFVs9Y8MCUVldkFM7CVJtT+SE5Ggnm4havJV8MdAATs2FGJnX2zUG
	+OMa8y9JhoGk9aaRGnfGLLTQk8ywD/5hrcJtsP86LB1NZybkLkhUNcjvBheYFFjBlO9TsgAy8HG5R
	TE2JO8bErn4TAlR+9UAVlPDvbI66Y3MQHWWmvWEuRxdigaDd/yEOCMqwLaa78OJPleL8SAZvFYEJq
	yb0VTStqMqOKK6gKsCNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJla-0000qx-Dg; Tue, 31 Mar 2020 16:29:30 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJlI-0000ps-Hu
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lnFeysFtcRPhC/sTyWfEszSCpKMDIewp19ccyBmKsdA=; b=WP4rZVkI+/jOgSfjZSPGHrHYGX
 URIzRpYcZkhi8jgX1A/86Vm+pgm6xcsIQcQuoOM3PFWAGOV5HflBdxZgsVQRjOGw5NLK5/HM2PiEj
 34YC2Kb1nvw09SQxl9vZdT0LdvDhQycwsYJtBTQC6SGptQjMQ+aS2OAOWPBJOlwe9wotE5xBGgOcq
 susnbyZ2YnW8htLEtWLUkG0B2f0ghH5GtduFLZ8wrMJUXNjnWpFbM7zDdSvDv91fb4TaO3UlmzXSf
 zdToUNe03ASK+utQH5hDGmu+MUorlq2m1TG7R42y4VM8TTyJRIdIt+vRxRMc4so40AQfEsWju/ihy
 BCtaRnoQ==;
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJHa3-0003I9-Lt
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:09:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lnFeysFtcRPhC/sTyWfEszSCpKMDIewp19ccyBmKsdA=; b=RZOoQka7jEA84B6SJiEmjaPtj
 D6aoIqSlNCoCKBfIuscCJZpPhpNmoQMrqTNzwDSqzSZIlAyC/sSHaCtU82LFQGLTi8Zfdw24PLXCU
 YZpWF61vVHZ3gUq0Oik2MqZoPUUYPnmI8Gt81Sb5y02FwziyVxxdQ5+cGgL15hHVNhQVg7LaLKptx
 g3UowzFw3YsBdyxGjPuHV4vi2CV10DhKr+t3dcLlacReivnjqyBxEGvfCb5Ba+2Nlh6LJSVuZMDM0
 OO0QtZ+WBQJuI0ri804Yl4fnL3wF/SPi68gRtFrNQEp9OX+i1sNwRO/ecFs57DfOmUWJSTs5ZkXdu
 PmCWH+o7Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60398)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jJHYy-0000Bx-Mp; Tue, 31 Mar 2020 15:08:20 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jJHYp-0008Aa-Eb; Tue, 31 Mar 2020 15:08:11 +0100
Date: Tue, 31 Mar 2020 15:08:11 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v2] ARM: imx: allow to disable board specific PHY fixups
Message-ID: <20200331140811.GN25745@shell.armlinux.org.uk>
References: <20200329110457.4113-1-o.rempel@pengutronix.de>
 <20200329150854.GA31812@lunn.ch>
 <20200330052611.2bgu7x4nmimf7pru@pengutronix.de>
 <40209d08-4acb-75c5-1766-6d39bb826ff9@gmail.com>
 <20200330174114.GG25745@shell.armlinux.org.uk>
 <20200331134520.GA5756@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331134520.GA5756@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>, mkl@pengutronix.de,
 linux-imx@nxp.com, kernel@pengutronix.de, David Jander <david@protonic.nl>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 03:45:20PM +0200, Oleksij Rempel wrote:
> Hi Russell,
> 
> On Mon, Mar 30, 2020 at 06:41:14PM +0100, Russell King - ARM Linux admin wrote:
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
> > 
> > So, having it registered by the iMX6 SoC code is entirely logical and
> > correct.
> > 
> > That's likely true of the AR8031 situation as well.
> > 
> > I can't speak for any of the others.
> 
> OK, let's analyze it step by step:
> --------------------------------------------------------------------------------
> arch/arm/mach-imx/mach-imx6q.c
> 
> The AR8035 fixup is doing following configurations:
> - disable SmartEEE with following description:
>   /* Ar803x phy SmartEEE feature cause link status generates glitch,
>    * which cause ethernet link down/up issue, so disable SmartEEE
> 
> - enable clock output from PHY, configures it to 125Mhz and configures
>   clock skew. See the comment provided in the source code:
>   * Enable 125MHz clock from CLK_25M on the AR8031.  This
>   * is fed in to the IMX6 on the ENET_REF_CLK (V22) pad.
>   * Also, introduce a tx clock delay.
>   *
>   * This is the same as is the AR8031 fixup.
> 
> - powers on the PHY. Probably to make sure the clock output will run
>   before FEC is probed to avoid clock glitches.
> 
> The AR8031 fixup only enables clock output of PHY, configures it to
> 125Mhz, and configures clock skew. The PHY not powered and although it
> supports SmartEEE, it's not disabled. Let's assume the fixup author did
> the correct configuration and SmartEEE is working without problems.

I'm not arguing as a random third party.  I am the fixup author.

SmartEEE on the Atheros PHYs is enabled by default in the hardware,
and is a non-IEEE 802.3 approved hack to try to provide lower power
utilisation.  However, it has been observed to cause ethernet
corruption on SolidRun boards when connected to _some_ switches.
It appears that the combination of Atheros SmartEEE and some switches
introduces this problem.  This has been looked at by _three_ different
people.

The way SmartEEE works is very different from IEEE 802.3 EEE. The EEE
is terminated at the PHY, and the Ethernet controller is supposed to
know nothing about it.  If the link is in low power mode, then if the
MAC wants to start transmitting, the PHY has to buffer the packet,
wake the link up, and then pass the packet on.  There are configurable
delays in the AR8035, and we've tried adjusting those with no success.

This has nothing to do with anything at board level as far as anyone
can work out.

So, it seems entirely reasonable that the same problem would afflict
other iMX6 designs using the AR8035.  Indeed, it already does - the
SolidRun platforms have been through several different design
iterations, including different board layouts, and they _all_ exhibit
the same issue wrt SmartEEE using any of the iMX6 SoCs.

There is no published information from the manufacturer that suggests
that this is an Errata - if there were, then SolidRun being one of
their customers would have had that information.

Didn't bother to read the rest of the email, too long.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
