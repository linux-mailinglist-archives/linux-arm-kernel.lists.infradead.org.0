Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6B11BA6DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 16:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=slTuNnv15M0hKu4REAwkkL3P6jcyf3ArZqslVZhZOWw=; b=ksTRz3KEJMRks6
	vW8yJ+Xa7gnsIYxmrmSJywKdl08FGyXS+yaSK7gdtT2Z2PAzW86d7LaxkP5KvVpEIqGtGztkmhJLD
	otHYWieZvF3MC6alzFv7WO29kx/Jie/9spaHGnl+0mV0P/w2C3lj+6Rr2vDA4WFCAY0t0Yh9KmbOI
	gUklGCzfRiP4qySapvZnnj0IzqiG0XnACnIJy2CtUvFKYiSY9c10vLDIXnHj1P/et25Rzes1dedNO
	GK1B+PZh26Px07zOMpyWLeHHfQeT7A5NOZ2CZMc3xl6lIrrwuDmunqny9xBdQ5P0cG/PWK+qpHXVs
	e9pB38NHZ0dnkGsdeiCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT53q-0004hB-3e; Mon, 27 Apr 2020 14:48:42 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT53d-0004fx-Bj
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 14:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YMCdyK8i4NHqmV0CuBigav+at+kNv4arzXM266XsjFA=; b=QhEo1yZ4eckdHv6Ca6QfmGgjk
 j7W2lb6MAghgTs6Kpp00+HFRYb9nEI9mpZhp8dUlBLZWo+JDClktcag0JllPl7cx1PVkISqGH7dlP
 SGWZ6fsZMz/StwDqxR/V2PerM4v1PeDOT9X6h/ECvuY5XFNRlJgtXmPKcPSSWnLRdWY4C1bBcYkLv
 QuOrw9yRpJdfMO3/zKPKI2YVxj4VGQZXxmEqELmNO1//wQf+TWM1URlt+HYddcSQrOknG0XzCnA3R
 VOtD8qSQ5cLzvsvcthEaECVeCk/uEvp0jdRpb9yshQZ0DaSiG6milrTcX/qY3D86v+6mLd1OFGv9V
 axBseXLQw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:44654)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jT53K-0003RG-N2; Mon, 27 Apr 2020 15:48:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jT53H-0006kG-32; Mon, 27 Apr 2020 15:48:07 +0100
Date: Mon, 27 Apr 2020 15:48:07 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v2 0/3] Introduce new APIs to support phylink
 and phy layers
Message-ID: <20200427144806.GI25745@shell.armlinux.org.uk>
References: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
 <20200427135820.GH25745@shell.armlinux.org.uk>
 <20200427143238.GA26436@lsv03152.swis.in-blr01.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427143238.GA26436@lsv03152.swis.in-blr01.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_074829_399061_A471DA1F 
X-CRM114-Status: GOOD (  17.00  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 08:02:38PM +0530, Calvin Johnson wrote:
> On Mon, Apr 27, 2020 at 02:58:20PM +0100, Russell King - ARM Linux admin wrote:
> > On Mon, Apr 27, 2020 at 06:54:06PM +0530, Calvin Johnson wrote:
> > > Following functions are defined:
> > >   phylink_fwnode_phy_connect()
> > >   phylink_device_phy_connect()
> > >   fwnode_phy_find_device()
> > >   device_phy_find_device()
> > >   fwnode_get_phy_node()
> > > 
> > > First two help in connecting phy to phylink instance.
> > > Next two help in finding a phy on a mdiobus.
> > > Last one helps in getting phy_node from a fwnode.
> > > 
> > > Changes in v2:
> > >   move phy code from base/property.c to net/phy/phy_device.c
> > >   replace acpi & of code to get phy-handle with fwnode_find_reference
> > >   replace of_ and acpi_ code with generic fwnode to get phy-handle.
> > > 
> > > Calvin Johnson (3):
> > >   device property: Introduce phy related fwnode functions
> > >   net: phy: alphabetically sort header includes
> > >   phylink: Introduce phylink_fwnode_phy_connect()
> > 
> > Thanks for this, but there's more work that needs to be done here.  I
> > also think that we must have an ack from ACPI people before this can be
> > accepted - you are in effect proposing a new way for representing PHYs
> > in ACPI.
> 
> Thanks for your review.
> 
> Agree that we need an ack from ACPI people.
> However, I don't think it is a completely new way as similar acpi approach to
> get phy-handle is already in place.
> Please see this:
> https://elixir.bootlin.com/linux/v5.7-rc3/source/drivers/net/ethernet/apm/xgene/xgene_enet_hw.c#L832

That was added by:

commit 8089a96f601bdfe3e1b41d14bb703aafaf1b8f34
Author: Iyappan Subramanian <isubramanian@apm.com>
Date:   Mon Jul 25 17:12:41 2016 -0700

    drivers: net: xgene: Add backward compatibility

    This patch adds xgene_enet_check_phy_hanlde() function that checks whether
    MDIO driver is probed successfully and sets pdata->mdio_driver to true.
    If MDIO driver is not probed, ethernet driver falls back to backward
    compatibility mode.

    Since enum xgene_enet_cmd is used by MDIO driver, removing this from
    ethernet driver.

    Signed-off-by: Iyappan Subramanian <isubramanian@apm.com>
    Tested-by: Fushen Chen <fchen@apm.com>
    Tested-by: Toan Le <toanle@apm.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

The commit message says nothing about adding ACPI stuff, and searching
the 'net for the posting of this patch seems to suggest that it wasn't
obviously copied to any ACPI people:

    https://lists.openwall.net/netdev/2016/07/26/11

Annoyingly, searching for:

    "drivers: net: xgene: Add backward compatibility" site:lore.kernel.org

doesn't find it on lore, so can't get the full headers and therefore
addresses.

So, yes, there's another driver using it, but the ACPI folk probably
never got a look-in on that instance.  Even if they had been copied,
the patch description is probably sufficiently poor that they wouldn't
have read the patch.

I'd say there's questions over whether ACPI people will find this an
acceptable approach.

Given that your patch moves this from one driver to a subsystem thing,
it needs to be ratified by ACPI people, because it's effectively
becoming a standardised way to represent a PHY in ACPI.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
