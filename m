Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7FEB5538
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 20:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frsg0OxtumtTAZazEdIZdyCOGK4WN/u1F3JgQBj4MhU=; b=goFgJeUT6ODmu9
	EMNOghKyXFo33DY147OR953ajzlZve6NlJI/d/+MVfAC9pM3AFm7A40SBcPYTPFOCAOcWRmYnAR02
	HLy+f1fHnl4xn8tGVG1jCuvOq2Mo6lwqUVoAG6M3ROLn7EtF7bgI3N0Bq4aKcG/tULXCeGeHZrneQ
	nRCcL6vhCsOhiv/WlqpuO6Ettc0BS4IdIsCM3j61QbMCV8e58+L+wWklL9HCZD2K9IW1HDh/FOeMF
	P1MRd6Lv6TSO9c5o0apx68z0ywQpOtgepU07vHKCA1b8GozzxCf4HjfJp2pYxg3AMqpfIlm1L4tEe
	XMlFGdZ0HDVTD+sW/fuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAI4j-0000P0-UT; Tue, 17 Sep 2019 18:19:42 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAI4W-0000OM-Vm
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 18:19:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eCXNNV9SLez5wvuBaHb0ao/EnouRF1ty87hE3ZUG5bk=; b=w4J8Aj3usTARijjC+Xob01o/A
 sQB0MsBEye7/3zNy8DMarwU2vYZZYcZya/F+9daAvobbUUKAgegtFMU0G320mXzII/JzuJoOXvPF9
 /2qz8G0C5shR2UPI/z3jO0TC9+tMgZVOHDYWT8g7cACioGAdBplxfbrT+vns45jPWlu4Zms7AmDOi
 i8VPET6os2b/WRK9CMvueJ0JU/waIGrnyAfgsHmOrom/yilbfRpQwbCn8DGSIPd8jjzqByH5IQEZ1
 sTq2mTJhrqv+H1yRAWfihFkFJ+4PK/YzNUAYX81X5iWKgEtIpoKpMvUxe/FFGh4NQlOh7RRKLoP2v
 Qg4TXSaDQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40730)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iAI4C-0003Qr-BB; Tue, 17 Sep 2019 19:19:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iAI49-0001Vw-8G; Tue, 17 Sep 2019 19:19:05 +0100
Date: Tue, 17 Sep 2019 19:19:05 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917181905.GA25745@shell.armlinux.org.uk>
References: <20190917125434.GH20778@lunn.ch>
 <20190917133253.GA1210141@arch-dsk-01>
 <20190917133942.GR25745@shell.armlinux.org.uk>
 <20190917151707.GV25745@shell.armlinux.org.uk>
 <20190917153027.GW25745@shell.armlinux.org.uk>
 <20190917163427.GA1475935@arch-dsk-01>
 <20190917170419.GX25745@shell.armlinux.org.uk>
 <20190917171913.GY25745@shell.armlinux.org.uk>
 <20190917172658.GB9591@lunn.ch>
 <20190917173728.GZ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917173728.GZ25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_111929_027123_9755BD1C 
X-CRM114-Status: GOOD (  15.74  )
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

On Tue, Sep 17, 2019 at 06:37:28PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Sep 17, 2019 at 07:26:58PM +0200, Andrew Lunn wrote:
> > > diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> > > index b3893347804d..85cf4a4a5e81 100644
> > > --- a/drivers/net/phy/at803x.c
> > > +++ b/drivers/net/phy/at803x.c
> > 
> > Hi Russell
> > 
> > This won't work. In the kernel logs, you see 
> > 
> > kernel: Generic PHY 2188000.ethernet-1:00: attached PHY driver [Generic PHY]
> > 
> > The generic PHY driver is being used, not the at803x driver.
> 
> Well, the _correct_ driver needs to be used for the PHY specific
> features to be properly controlled.  Using the generic driver
> in this situation will not be guaranteed to work.

Well, this hasn't worked, but not for the obvious reason.  Register 0x14
is documented as read/write.  Bits 15:6 are reserved, bit 5 is the
smart speed enable, 4:2 configures the attempts, bit 1 sets the link
stable condition, bit 0 is reserved.

Writing 0x80c results in the register reading back 0x82c.  Writing
0x800 results in the same.  Writing 0 reads back 0x2c.  Writing 0xffff
seems to prevent packets being passed - and at that point I lost
control so I couldn't see what the result was.

There is nothing in the data sheet which suggests that there is any
gating of this register.  So it looks like we're stuck with smartspeed
enabled.

So, I think there's only two remaining ways forward - to revert commit
5502b218e001 to restore the old behaviour, read back the advertisement
from the PHY along with the rest of the status, as I've previously
stated.  It means that phylib will modify phydev->advertising at
random points, just as it modifies phydev->lp_advertising, so locking
may become an issue.  The revert approach is probably best until we
have something working along those lines.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
