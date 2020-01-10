Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5E61375D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=of2OG7JTarfXn/zk1T9p5o9uvjA9OP05Y6fd90MH4ow=; b=L3g+1IH+rmPs4V
	QIgD37H0gHK8sEq2FaGaYTJskEwz7rWSI0tX/j93CsTdK2HkyFwhGCum+fgt/9kzrlVM6ffIstWDR
	Nw1E/Uop1EQ5cl6deaboqIuTwAPXsv1GdnTZ5ITHK+uzE4yMhX98h+Cn3hZjQ15mixnqzFCMkpRTm
	+a1mQLJmvl6tOh5kjd6N8Y6/O1xQ2GB8uc2C0sgQlUg5mjztFvv8NSVZWyJWLBaxSmB7hRKoDiJXl
	R3nvel9EIFn6ELER1CvU71NQDWeh42naRv5AKsAAzbwMOlh4c/OzdGWYY7dvSZb5XH8PbMhejH0Hx
	Ivokd1wvLgRXfmW/9J+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipyfu-0007xO-JG; Fri, 10 Jan 2020 18:06:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipyfi-0007w2-Hg
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 18:06:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a9MwX1AMuzEuDn4d0nEW1VjBzoamPPtVjj2dTrZIJy8=; b=NWk3oWBirzieQnPFOphE4pqV9
 g6XU1xlbgTDLyH10Tu/4KIfZopRv3tHl09iKvYRsxy4RTEmHf8NMjZSLPUpXJIDV68CiOLEwcNQ6/
 rozHllvpWTB2m8OSRbLESyHYCg7dK88aZdX3OjqqnK/Jn+uhgS6nA5hg5+cbmYnkxRUbJEcaAaeU9
 s+Cr5ARE36a0Dqq2s8zc8SQm4mBFa4R7q6h+68ITTmj89yb4B217CuVXTc4M92y/3eYAWEa4eGV6w
 RkbgyzKRi4xbBP+ah4wM4LrSlRWhK8aVf8jSNgGuRa1dcT+Sdr9QMAFeF3cdJACppOfqmLd7q8M64
 AkCmVn++g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:60710)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ipyfP-0004hZ-Cs; Fri, 10 Jan 2020 18:05:51 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ipyfK-0001iA-H5; Fri, 10 Jan 2020 18:05:46 +0000
Date: Fri, 10 Jan 2020 18:05:46 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200110180546.GK25745@shell.armlinux.org.uk>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
 <20200110145849.GC25745@shell.armlinux.org.uk>
 <20200110173249.0b086a76@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110173249.0b086a76@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_100610_585504_CD58689D 
X-CRM114-Status: GOOD (  23.00  )
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 05:32:49PM +0000, Andre Przywara wrote:
> On Fri, 10 Jan 2020 14:58:49 +0000
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> 
> > On Fri, Jan 10, 2020 at 11:54:08AM +0000, Andre Przywara wrote:
> > > With SGMII, the MAC and the PHY can negotiate the link speed between
> > > themselves, without the host needing to mediate between them.
> > > Linux recognises this, and will call phylink's mac_config with the speed
> > > member set to SPEED_UNKNOWN (-1).  
> > 
> > I wonder whether you have read the documentation for the phylink
> > mac_config() method (if not, please read it, it contains some very
> > important information about what mac_config() should do.)  When
> > operating in SGMII in-band mode, state->speed and state->duplex are
> > not actually valid.
> > 
> > You'll probably want to submit a better patch after reading the
> > documentation.
> 
> Sure, I am admittedly quite clueless about phylink in particular, and found the available information quite daunting.
> So I tried my best in looking at what other drivers do. From what I got there is that you speed=-1 should be ignored, but the other fields still handled.
> Also I was somewhat puzzled, as I was expecting "mode" being MLO_AN_INBAND. But in fact it's called twice with MLO_AN_PHY, and mac_pcs_get_state() never gets called:

Okay.  When phylink is in PHY mode, it operates just the same as the
more conventional phylib setup: phylib reports the negotiation results
to the network driver which sets the MAC up appropriately.

The only difference between the phylib way of doing things and phylink
is that phylink is in the path, so mac_config() gets called to setup
the MAC with the results of the PHY negotiation.  This will be the case
irrespective of which PHY interface mode is being used.

So, in PHY mode, we don't care whether there is in-band signalling or
not - and the reason that's vague is because it _is_ already vague
with existing phylib setups using SGMII.

So, basically, the MLO_AN_PHY mode is the complete equivalent of
phylib without phylink.


MLO_AN_FIXED is just like MLO_AN_PHY, except phylink is operating in
fixed-link mode - similar to the old fixed-link emulated PHY setup that
phylib offered, but without needing a MII bus and squeezing the
information through phylib's interfaces.  From the point of view of a
MAC driver, however, it's just the same as MLO_AN_PHY.


If you configure phylink for inband mode by placing

	managed = "in-band-status";

in DT, then phylink will operate in MLO_AN_INBAND mode.  It will also
operate in that mode if the MAC is connected directly to a SFP cage
and a SFP is inserted that requires inband mode.

Exactly how inband mode operates depends in the nature of the inband
signalling.  There's two different schemes:

SGMII: the PHY communicates the speed and duplex settings to the MAC
PCS through the in-band control word.  Pause mode is not available
via the in-band control word.  SGMII can operate at 10M, 100M or 1G,
half or full duplex.  The PHY may or may not be accessible.

Here, phylink will read the speed and duplex from the MAC PCS rather
than the PHY, and if the PHY is accessible, phylink will merge the
negotiated pause mode information and pass this over to the MAC.

(Note: there are some vendor extensions to pass pause mode through
SGMII as well, but I haven't seen a MAC that supports them yet.)

1000BASE-X (aka 802.3z): the link partner advertises its capabilities
via the in-band control word, which are:
	- full duplex
	- half duplex
	- pause
	- asym pause

and each end of the link has to resolve the capabilities to agree the
operating mode of the link.  As only a single speed is supported in
this mode, there is no need to advertise any speed capabilities (if
the link operates at dis-similar speeds - for example, 2500BASE-X at
one end and 1000BASE-X on the other, there's no way to get the control
word through.)

Here, phylink will only read from the MAC PCS to discover the results
of the negotiation; there will be no call to mac_config().


Phylink currently expects the result of the in-band negotiation at
the MAC PCS to be propagated to the MAC by hardware (as this is what
happens with mvneta and mvpp2, the first two MACs that phylink
supports.)  If there is hardware that requires something else, then
that will need to be revisited, and will result in not only code but
also documentation updates as well.

I hope this helps you to understand phylink.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
