Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0711C5912
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2Zu2m3AhDc1mBGzWn88g6zLXcRm5xsyzKEUjC/lfWw=; b=q78tGX4cbU6fch
	cFMw7gQF8R9xpG6Axp+oU4YJedS2udk9/vcwmwQVcn0147VFiPP1oStCZsA2p1GCogH6Qm2kPHd6G
	IUbtQseB/SwI0uesV4xyaAYq1JoWEfg4mAHbBtGToenwrbq4hHjYOm+iZfhrDUo7Rebpbi6v4zC58
	cMo8ypZOSP7qDx2T6q8GFDjOsL+1cD/atu+YmbJeHnL2Cv2R1kNaKz3KxOOyy3NazvJMWjPnKpric
	lQRixcfwQkht7ZaHrDeE80nYmKReiK58SDufFhmO1ic5wHcEIlh0wqVgozm4/nf6yGtsv7QliTv9p
	fbZ6+O9BuYbo2WXeeRVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVySE-0004dv-Eh; Tue, 05 May 2020 14:21:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyRw-0004T6-6a
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:21:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vgLgwA2IYB8xZ+i4x2z61nR3kQ321LSxvjJp90lZwhk=; b=emwvWX7QcAOvZyEwWRtlY3u75
 YrX1Uqcns0qRJwr2MAlCIPi+uSNplwaVui1xMGOENdmL8I4P9spu4Wg9JZR987liWr7K4Cq6lnbum
 lZacolR99lTdruHc1EjyNWly0E96wof1BEtJwXJt2x0c/aGPzrmUF0c8Plw+2LUmlnn1tInPcokgV
 wJxC3v7fjOvva8xRJ/NR74yaGtk8quY9LvGwS0tX+jNMfYeHtQDUVkh3/qOhuVg5qDSxg2waIb45O
 JA6aeyCKI/Hm9AAJRA5+2a3cAakP5gMaXnONZgVJIGJMNjORsxoER52ZwVnZHJn2GtWd2zJQ712nw
 9o8G9Wdkg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:36328)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jVyRI-0002rx-5s; Tue, 05 May 2020 15:20:52 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jVyRC-0007Dj-U4; Tue, 05 May 2020 15:20:46 +0100
Date: Tue, 5 May 2020 15:20:46 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
Message-ID: <20200505142046.GI1551@shell.armlinux.org.uk>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <CAHp75VfQ_ueABUcgUUirQ7kK60CR6vMi1gP-UsdDd+UmsSE4Sw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VfQ_ueABUcgUUirQ7kK60CR6vMi1gP-UsdDd+UmsSE4Sw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_072136_421596_2667CB1F 
X-CRM114-Status: GOOD (  10.09  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Calvin Johnson <calvin.johnson@oss.nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 05:15:16PM +0300, Andy Shevchenko wrote:
> On Tue, May 5, 2020 at 4:29 PM Calvin Johnson
> > +               if (sscanf(cp, "ethernet-phy-id%4x.%4x",
> > +                          &upper, &lower) == 2) {
> 
> > +                       *phy_id = ((upper & 0xFFFF) << 16) | (lower & 0xFFFF);
> 
> How upper can be bigger than 0xfff? Same for lower.

I think your comment is incorrect here.  Four hex digits can be larger
than 0xfff.  "1000" interpreted as hex is four hex digits and larger
than 0xfff, for example.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
