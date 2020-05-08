Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730DA1CB6CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 20:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wym4Z0caMA6ksSwrRRNLpfu4i6EcNiu2BbujbWrgges=; b=OWbqp5tCBn7uKW
	MFxK6bVejWYexdycOeJgQddExcJyHlJowNN5Rp2L8RyJ5abdXt5XQfeuzCZFvxTcau+gNrtQF9GMB
	BqQdbTrC/QNKK+1VN87fReLE8yBJwX1S3P6wXYnLQ2TWI+/isHg01rvk4vegaEmog76/l1TJFS/bs
	GwdHIP+f/9xRIfB7+ejyuvoHhtxPo+LWsJqU5ivijyN3zRBK/kiqQxbaJQbbr8lwpfdJ6p/w1OuqP
	QiQzC4R9RMRCanE1zet7hpFtt0gFcGAsc6u7IQn83VKN00e8PUQD6kRDsaUbYEpgRNznUyM/dRfOQ
	EabqdldeF2w5hw9+pQAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX7V4-0004WZ-1B; Fri, 08 May 2020 18:13:30 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX7Uq-0004VS-Ro
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 18:13:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wWNCGA+EwqVktP3Bvv8WPRuSGI2htUTB8ahmxkxy++o=; b=cnTTDe7IEMZQkOtb+qm05miDls
 qWpgdgwqMbp0QDQSa8AkoBwo0d0VM5xkLtPW4k6zxwQi6z8HB0tr28cuy0ZDKjRHX9EAa0FbYWmHj
 QWynS9sMpHL3874vkA6Ctk6HUGYbaoReKgS6pAqdqplDkHSybpgFsPJDClHsAzkBWUb0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jX7Ub-001P3h-KM; Fri, 08 May 2020 20:13:01 +0200
Date: Fri, 8 May 2020 20:13:01 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
Message-ID: <20200508181301.GF298574@lunn.ch>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
 <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
 <83ab4ca4-9c34-4cdd-4413-3b4cdf96727d@arm.com>
 <20200508160755.GB10296@lsv03152.swis.in-blr01.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508160755.GB10296@lsv03152.swis.in-blr01.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_111316_896097_4727AA2F 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
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

> > It does have a numeric version defined for EISA types. OTOH I suspect that
> > your right. If there were a "PHY\VEN_IDvvvv&ID_DDDD" definition, it may not
> > be ideal to parse it. Instead the normal ACPI model of exactly matching the
> > complete string in the phy driver might be more appropriate.
> 
> IMO, it should be fine to parse the string to extract the phy_id. Is there any
> reason why we cannot do this?

Some background here, about what the PHY core does.

PHYs have two ID registers. This contains vendor, device, and often
revision of the PHY. Only the vendor part is standardised, vendors can
decide how to use the device part, but it is common for the lowest
nibble to be revision. The core will read these ID registers, and then
go through all the PHY drivers registered and ask them if they support
this ID. The drivers provide a table of IDs and masks. The mask is
applied, and then if the ID matches, the driver is used. The mask
allows the revision to be ignored, etc.

There is a very small number of devices where the vendor messed up,
and did not put valid contents in the ID registers. In such cases, we
can read the IDs from device tree. These are then used in exactly the
same way as if they were read from the device.

If you want the ACPI model to be used, an exact match on the string,
you are going to have to modify the core and the drivers. They
currently don't have any string, and have no idea about different
revisions which are out in the wild.

> > Similarly to how I suspect the next patch's use of "compatible" isn't ideal
> > either, because whether a device is c45 or not, should tend to be fixed to a
> > particular vendor/device implementation and not a firmware provided
> > property.

Not exactly true. It is the combination of can the bus master do C45
and can the device do C45. Unfortunately, we have no knowledge of the
bus masters capabilities, if it can do C45. And many MDIO drivers will
do a C22 transaction when asked to perform a C45 transaction. All new
submissions for MDIO drivers i ask for EOPNOTSUPP to be returned if
C45 is not supported. But we cannot rely on that. Too much history.

> 
> I tend to agree with you on this. Even for DT, ideal case, IMO should be:
> 
> 1) mdiobus_scan scans the mdiobus for c22 devices by reading phy id from
> registers 2 and 3
> 2) if not found scan for c45 devices <= looks like this is missing in Linux
> 3) look for phy_id from compatible string.

It is somewhat more complex, in that there are a small number of
devices which will respond to both C22 and C45. Generally, you want to
use C45 if supported. So you would want to do the C45 scan first. But
then the earlier problem comes to play, you have no idea if the bus
master actually correctly supports C45.

Given the issues, we assume all bus masters and PHY devices are C22
unless DT says the bus master and PHY combination is compatible with
C45.

	   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
