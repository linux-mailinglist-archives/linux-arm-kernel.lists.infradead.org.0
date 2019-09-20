Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4011B8E93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 12:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4P3AyXMIpIuwDGvNkCsrxl8n0gkrb4CFeJNUjMZ2t4=; b=OrYHX9iRxLc3Xx
	GYAGzNtpecLs/s0RLNphTFz6BOrD7O62qLh03rlhi526WxDXbKZknN8EbW+ZYcqCNC6gToPu6WmRL
	/vTo8WEQy3NlqHl9K905Lcglht8obpyHt/y5gY6TRWzXZQs/X9Wxys303XSTwjrlhGUCiwsXFytWg
	W1+stW1uI4CR1t/oqYqnjkb5YpwIbPjqX3UGqHz3mQnBk47vg3myl2GGwx0usfMLiCciIsRSjC+XD
	YASkVeUGB9ukoR/xjUXK++lRw5ffmroACIhnjvGrJXL/CyQYoEZdAXMdaPEx7wZHfmEUYL7ohbSh4
	KmZj+EGGLWZx2eCTJ1fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBGHf-0008BA-2d; Fri, 20 Sep 2019 10:37:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBGHX-0008AA-AJ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 10:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OqnJbMKZf+jB/1frWLHcbvpcFTP1xDtJjx0l4FcIer0=; b=flicGF8fB5EcjyHS/GqpbQwx6
 gANNgMd5t46ZpYwh6aQHyDhHGInQiibEN9gcoHBE0WvRwl1CsRRqVfgjDWtPVjkHr35ukxm7y2S4J
 zoOgZAH55fyc4+d1utnGUM/1k+5drU1y2S0oCt3V/kFzcd0G/H9SXCrljTv/1u6X0xOrQS1huvBIo
 X43PctZ7uHezIXK0rHZDyQEIXaSgsPtmJKLVQCrpeLBX7StJjfBOukRQSwwimjkxJqmfN4dmsuCEb
 rX1fXdnDiYvy13AC6Vhw/cw/FwFL3vac0B7eiV8tIbEeKBdxMrgZYpwFaaOlJDHiqU/oArEWQ2xQp
 7cb/sNNqg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45958)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iBGH5-0003Me-9G; Fri, 20 Sep 2019 11:36:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iBGH0-0005jR-6j; Fri, 20 Sep 2019 11:36:22 +0100
Date: Fri, 20 Sep 2019 11:36:22 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190920103622.GL25745@shell.armlinux.org.uk>
References: <20190917133942.GR25745@shell.armlinux.org.uk>
 <20190917151707.GV25745@shell.armlinux.org.uk>
 <20190917153027.GW25745@shell.armlinux.org.uk>
 <20190917163427.GA1475935@arch-dsk-01>
 <20190917170419.GX25745@shell.armlinux.org.uk>
 <20190917171913.GY25745@shell.armlinux.org.uk>
 <20190917172658.GB9591@lunn.ch>
 <20190917173728.GZ25745@shell.armlinux.org.uk>
 <20190917181905.GA25745@shell.armlinux.org.uk>
 <20190917183934.GJ20778@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917183934.GJ20778@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_033655_361989_539C7A7E 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Baruch Siach <baruch@tkos.co.il>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 tinywrkb <tinywrkb@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 08:39:34PM +0200, Andrew Lunn wrote:
> > > Well, the _correct_ driver needs to be used for the PHY specific
> > > features to be properly controlled.  Using the generic driver
> > > in this situation will not be guaranteed to work.
> 
> I fully agree about the PHY driver. I'm expect this device is
> violating c22 when it modifies the advertisement register itself. So
> all bets are off for the genphy.
> 
> > Well, this hasn't worked, but not for the obvious reason.  Register 0x14
> > is documented as read/write.  Bits 15:6 are reserved, bit 5 is the
> > smart speed enable, 4:2 configures the attempts, bit 1 sets the link
> > stable condition, bit 0 is reserved.
> > 
> > Writing 0x80c results in the register reading back 0x82c.  Writing
> > 0x800 results in the same.  Writing 0 reads back 0x2c.  Writing 0xffff
> > seems to prevent packets being passed - and at that point I lost
> > control so I couldn't see what the result was.
> > 
> > There is nothing in the data sheet which suggests that there is any
> > gating of this register.  So it looks like we're stuck with smartspeed
> > enabled.
> > 
> > So, I think there's only two remaining ways forward - to revert commit
> > 5502b218e001 to restore the old behaviour, read back the advertisement
> > from the PHY along with the rest of the status, as I've previously
> > stated.  It means that phylib will modify phydev->advertising at
> > random points, just as it modifies phydev->lp_advertising, so locking
> > may become an issue.  The revert approach is probably best until we
> > have something working along those lines.
> 
> We have a couple of other PHYs which support downshift. We should see
> if we can follow what they do. What is i think important is that
> read_status return the correct speed. So we probably cannot use
> genphy_read_status() as is. Maybe we should split genphy_read_status()
> into two, so the register reading bit can be done unconditionally by
> phy drivers for hardware which don't report link down when they
> should?

I think we need to check how the downshift feature works on other PHYs
and whether it is enabled there.

Looking at the Marvell 88e151x PHYs, they have the feature, but do not
enable it by default.  If firmware has enabled the feature, phylib will
incorrectly resolve the link speed based on just the advertisements.

I think the safest way in the case of both PHYs to ascertain the real
link speed is to read the Specific Status register - register 17 in
both cases.  The top two bits indicate the negotiated speed resolution
and bit 13 indicates the duplex.  Bit 11 indicates whether the
resolution is valid.  This register layout seems to apply to both
88e151x and AR8035.

The register also contains the pause mode resolution in terms of
receive or transmit pause enabled, but this is not useful to phylib
as that is not what phylib wants to know.  However, it probably makes
sense for phylib to resolve the pause mode negotiation itself rather
than having that logic in the MAC drivers.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
