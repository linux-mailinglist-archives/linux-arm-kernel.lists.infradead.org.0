Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387CC152132
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 20:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wi/ECtZS4OHDvl0UfWn5woK2w1//Quq6dQcexAZPtlM=; b=dqjT4Bkli0sit6
	L1zKDssvSupKJL9UPTO49uNzS9BXeIpurUtKBqV3V0BnXy+QCGmv797+G2oYG6TIpXbMWDreXU4ko
	IxtPxEt4iL6l0WekHDAokDiJwCgZc4ufjASqJwgYzfO/mS5KJnRnxfwgAFaol87Z5ewrFIPy7rmTi
	jQO6W/mciVYgJKpV6QyoFkmxlgVRqcEAmbQ90JdsG4+kzHPdWLviK/aW0USTw1zLk4i3OJXCjLBHH
	JOXJHrTPHPJvWD5yyjrp+2Calft2aQFR5VUyZvv3VZLhxJNQivPgzcbkZRyCvrW5kIjWYDYNbVqKl
	wwH6FpaMwp7u100hd9+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz3wS-0005Gw-UC; Tue, 04 Feb 2020 19:33:00 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz3wM-0005Fc-64
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 19:32:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NEyB+td276ts8YTAgKy+Wd6aG//Mg77+7niimGcvraE=; b=MS7LtFiH+GHOwbhBv+vWvw2G6
 GGWaM353Shw+BRBXs3RPScYYjeHQWFMROBIpEnJT7HGRbSG1i8cbmhXaKODdxvHybU3ar6gtLPDjK
 v7CeOGLDXcMudmwpzsdOQT8Tg3F1uCEx98i+Uv6jo4DSh0TY7l0+Oq1AzLR124wiV8lWBE+CtiRzt
 H1JY2UDAKt+Sv2+BWrf3iA9Jkf/+VFwVJraFRdDYOAiVKA70VZuRUOCEckZxy2i9fRi38TAP0VZni
 Zxa04NpiTRK6Y50rqsQgLNI2xlxelTAhwhieQKXV7XbA7I79pi+7flkAWySufmzU+MTigSV/8khep
 JPfNySMhQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:35968)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iz3w3-00040d-Fm; Tue, 04 Feb 2020 19:32:35 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iz3vy-0001AI-Sy; Tue, 04 Feb 2020 19:32:30 +0000
Date: Tue, 4 Feb 2020 19:32:30 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200204193230.GT25745@shell.armlinux.org.uk>
References: <20200127114600.GU25745@shell.armlinux.org.uk>
 <20200127140038.GD13647@lunn.ch>
 <20200127140834.GW25745@shell.armlinux.org.uk>
 <20200127145107.GE13647@lunn.ch>
 <20200127161132.GX25745@shell.armlinux.org.uk>
 <20200127162206.GJ13647@lunn.ch>
 <c3e863b8-2143-fee3-bb0b-65699661d7ab@gmail.com>
 <BN8PR12MB3266B69DA09E1CC215843C3CD30A0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200204172603.GS25745@shell.armlinux.org.uk>
 <20200204174318.GB1364@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204174318.GB1364@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_113254_223766_95FB7891 
X-CRM114-Status: GOOD (  21.72  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 06:43:18PM +0100, Andrew Lunn wrote:
> > There, there is one MAC, but there are multiple different PCS - one
> > for SGMII and 1000base-X, another for 10G, another for 25G, etc.
> > These PCS are accessed via a MDIO adapter embedded in each of the
> > MAC hardware blocks.
> 
> Hi Russell
> 
> Marvell mv88e6390X switches are like this is a well. There is a PCS
> for SGMII and 1000Base-X, and a second one for 10G. And it dynamically
> swaps between them depending on the port mode, the so called cmode.
> 
> So a generic solution is required, and please take your time to build
> one.

Well, DSA is quite a mixed bag...

As far as I can work out, the situation with the CPU and DSA ports is
quite hopeless - you've claimed that a change in phylink has broken it,
I can't find what that may be.  The fact is, phylink has never had any
link information for DSA links when no fixed-link property has been
specified in DT.  As I've already said in a previous email about this,
I can't see *any* sane way to fix that - but there was no response.


On a more positive note...

The mac_link_up() changes that I've talked about should work for DSA,
if only there was a reasonable way to reconfigure the ports.  If you
look at the "phy" branch, you will notice that there's a patch there -
"net: mv88e6xxx: use resolved link config in mac_link_up()" which adds
the support to configure the MAC manually.  It's rather messy, and I
see no way to deal with the pause settings.  There is support in some
Marvell DSA switches to force flow control but that's not supported
through the current mid-layer at all (port_set_pause doesn't do it.)
I'm not sure whether the "mv88e6xxx_phy_is_internal()" check there is
the right test for every DSA switch correct either.

What is missing is reading the results from the PCS (aka serdes) and
forwarding them into phylink - I did have a quick look at how that might
be possible, but the DSA code structure (consisting of multiple
mid-layers) makes it hard without rewriting quite a lot of code.  That's
fine if you know all the DSA chips inside out, but I don't - and that's
where we need someone who has the knowledge of all DSA switches that we
support.  Or, we get rid of the multiple mid-layers and switch to a
library approach, so that we can modify support for one DSA switch
without affecting everything.  It may be a simple matter of dropping the
existing serdes workaround, but I'm not sure at the moment.

I've tried this code out on the ZII rev B, I haven't tried it on the rev
C which has the 6390 switches yet.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
