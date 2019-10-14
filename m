Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4D4D6B93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 00:13:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvGHi7y8TAv957MCglvY+8UlFdQ6Dj82VRYTSSU/j5U=; b=Q6eL/54uPqlXKY
	cOXz/vKM/xMlRMVl/jkD8ICY/ysc/bGzah1wOUJJinXrG/Wykhoq4MKXsXPcHmHs6YdH6/P0A1MDj
	Ffww+llcWhalhY9i3BuWGaNBjX4J6sETP21Go8ZUen9RRAT8ycuHsrEEJR3vGp0bHIqvzA8+JRuIj
	SvsJFp3xzqpzAOI8O8a9TELOCxDNoV5UiMGC/HI3ugdcDeahVtcLUCw+4WqxXci1Ocs3VYDSuZy2o
	zBva/Hsz7wLGeGdGoFLGbDZ1XYWotAN47uuJ0S/L/dPpSFpdY5cOLtrUgcb8SA0WtYKq7wT0ZWmUo
	V097p8YZyJ15LuDSnBPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK8a8-000117-Aq; Mon, 14 Oct 2019 22:12:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK8Zw-0000zW-1r; Mon, 14 Oct 2019 22:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bdiOmpZ5RXcC/f/ihPKAhcTaPuRDCg1OJyatxTXbycA=; b=M7x+OyYci8CeJM4I9gxZ/lDOZ
 7JCz/6Qn66QpeEL89nFUfLj/GDC+A4/4zdT0YgwHy2GCKXl7GbT7Qa44ILvPEzFZstTfROg0ff0Pw
 qxUxovho9gxZIB3aK4eE3evWWHHMJUWio2XGDWhWY9pYJZxtw96kDnDRGsEdK1ci7oewwITn+zhpK
 ERGqqNqeZKGF150G62cTrd6grs92JGlQvEJkUXced9mlaaTMUI9Q1QlUwDNdNpKYE5S5FsC3FMCHo
 HmPef99Ty6+75vJ3RTTbL7i/iGMV3pEcdVJ7b2uYehudwPOx+yVSUHyTnDqpM1tppmEC+jA+5IQm+
 nNczPBotA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43726)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iK8Zb-0000Ht-Hz; Mon, 14 Oct 2019 23:12:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iK8ZX-0004mu-Rt; Mon, 14 Oct 2019 23:12:11 +0100
Date: Mon, 14 Oct 2019 23:12:11 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191014221211.GR25745@shell.armlinux.org.uk>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
 <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
 <25cfc92d-f72b-d195-71b1-f5f238c7988d@gmx.net>
 <b9afd836-613a-dc63-f77b-f9a77d33acc4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9afd836-613a-dc63-f77b-f9a77d33acc4@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_151236_094659_C62F2BEE 
X-CRM114-Status: GOOD (  13.84  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Wagner <dwagner@suse.de>, netdev@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 10:20:15PM +0200, Heiner Kallweit wrote:
> On 14.10.2019 21:51, Stefan Wahren wrote:
> > [add more recipients]
> > 
> > Am 14.10.19 um 21:25 schrieb Daniel Wagner:
> >> Moving the phy_prepare_link() up in phy_connect_direct() ensures that
> >> phydev->adjust_link is set when the phy_check_link_status() is called.
> >>
> >> diff --git a/drivers/net/phy/phy_device.c
> >> b/drivers/net/phy/phy_device.c index 9d2bbb13293e..2a61812bcb0d 100644
> >> --- a/drivers/net/phy/phy_device.c +++ b/drivers/net/phy/phy_device.c
> >> @@ -951,11 +951,12 @@ int phy_connect_direct(struct net_device *dev,
> >> struct phy_device *phydev, if (!dev) return -EINVAL;
> >>
> >> +       phy_prepare_link(phydev, handler);
> >> +
> >>         rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
> >>         if (rc)
> 
> If phy_attach_direct() fails we may have to reset phydev->adjust_link to NULL,
> as we do in phy_disconnect(). Apart from that change looks good to me.

Sorry, but it doesn't look good to me.

I think there's a deeper question here - why is the phy state machine
trying to call the link change function during attach?

At this point, the PHY hasn't been "started" so it shouldn't be
doing that.

Note the documentation, specifically phy.rst's "Keeping Close Tabs on
the PAL" section.  Drivers are at liberty to use phy_prepare_link()
_after_ phy_attach(), which means there is a window for
phydev->adjust_link to be NULL.  It should _not_ be called at this
point.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
