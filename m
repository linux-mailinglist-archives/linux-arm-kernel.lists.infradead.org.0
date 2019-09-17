Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117E7B5574
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 20:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTmlQa8wiXotRlu5JsYAYX51cigWS1bit2nKECHbzDE=; b=AJvBi9DHVqrKLb
	Re+Li6ZGQig5gLO8tkoIrJdGHkRhaGzj/Api8aLNxGGdIdm6O/qAuzmF19qBL4PEmaI5BausOMCzN
	6HXwamQBVudxFE30rD4aC7ukU0xseAcslsXem9fokfjxqQE1kAtBTUyXZOR5PiZm4Zh9W+o1baF08
	VBRbsfp66uthdsfdxgZU7wEdQiCYBDXA+U11TwQhwCLhbZ1WFvLr5pb1IRQ5NjOXJENHT38lJJc4+
	SJM5XzNu5eGYcVlBntPA+bR0EwJkHfT1DCBtKUhZZ7EBDS9rIcuTzdvg41P3f1CAGnDMzKaCAW2Cr
	nSBNlJ3ENPY09lL6hJ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAIOS-0006G1-Bs; Tue, 17 Sep 2019 18:40:04 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAIO9-0006Ea-EG
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 18:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=taIBPGYkIVMe8MiFytbX0T9rZMz92fCysG30eRO4viY=; b=QibepfwKOsVPkP14yx0txbt1gn
 KhjMQJVLOUuv3pI9UGICUFKsyVRL3QmuUYKQcP+UEkpfd4wmtl/XFU5fajEskaTBC+ix8Wvi3QCOn
 iKnteiC8KLNymp63/zWS6q1eIwyWQabPp8lFFoDw3NC53fAA3i71/ykme+IW8LTsyl6E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1iAINy-0002yN-5X; Tue, 17 Sep 2019 20:39:34 +0200
Date: Tue, 17 Sep 2019 20:39:34 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917183934.GJ20778@lunn.ch>
References: <20190917133253.GA1210141@arch-dsk-01>
 <20190917133942.GR25745@shell.armlinux.org.uk>
 <20190917151707.GV25745@shell.armlinux.org.uk>
 <20190917153027.GW25745@shell.armlinux.org.uk>
 <20190917163427.GA1475935@arch-dsk-01>
 <20190917170419.GX25745@shell.armlinux.org.uk>
 <20190917171913.GY25745@shell.armlinux.org.uk>
 <20190917172658.GB9591@lunn.ch>
 <20190917173728.GZ25745@shell.armlinux.org.uk>
 <20190917181905.GA25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917181905.GA25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_113945_632660_3432BCEA 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

> > Well, the _correct_ driver needs to be used for the PHY specific
> > features to be properly controlled.  Using the generic driver
> > in this situation will not be guaranteed to work.

I fully agree about the PHY driver. I'm expect this device is
violating c22 when it modifies the advertisement register itself. So
all bets are off for the genphy.

> Well, this hasn't worked, but not for the obvious reason.  Register 0x14
> is documented as read/write.  Bits 15:6 are reserved, bit 5 is the
> smart speed enable, 4:2 configures the attempts, bit 1 sets the link
> stable condition, bit 0 is reserved.
> 
> Writing 0x80c results in the register reading back 0x82c.  Writing
> 0x800 results in the same.  Writing 0 reads back 0x2c.  Writing 0xffff
> seems to prevent packets being passed - and at that point I lost
> control so I couldn't see what the result was.
> 
> There is nothing in the data sheet which suggests that there is any
> gating of this register.  So it looks like we're stuck with smartspeed
> enabled.
> 
> So, I think there's only two remaining ways forward - to revert commit
> 5502b218e001 to restore the old behaviour, read back the advertisement
> from the PHY along with the rest of the status, as I've previously
> stated.  It means that phylib will modify phydev->advertising at
> random points, just as it modifies phydev->lp_advertising, so locking
> may become an issue.  The revert approach is probably best until we
> have something working along those lines.

We have a couple of other PHYs which support downshift. We should see
if we can follow what they do. What is i think important is that
read_status return the correct speed. So we probably cannot use
genphy_read_status() as is. Maybe we should split genphy_read_status()
into two, so the register reading bit can be done unconditionally by
phy drivers for hardware which don't report link down when they
should?

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
