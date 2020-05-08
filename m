Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421B61CB8F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 22:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaWguuABA9P/r/Yhy21EFyg1+teBN/S914o2GTsrGOQ=; b=YzKa9UrrDMm4QU
	QoaEsgpK79oyl8+XvH6/Oc1Za924iCLgZAo+BtJY44N13ep3Lky75qhSmWQcdZnGrtvAe2Sckxs4f
	Uaasn/cN3WuDdXZ9BSJDre+oh4BYqQmq1fYc87xPMphNjY7HnvfHBgBhpbjtDaiJ3KJpCpAh4FAZ3
	bGJr+7fsn8XgAABU1C6LX4NIr1SsAE0k8U+QYo4kV44zCG6mIMh+CWRtgYyfPUp9IRAzgWFqfzCBz
	XAWk5OMy2Td3FyjGbtUKYh4P1doPApadg1+CsP7yqCflqZxJXrQWoP5lf8BF+lsBbg6HqP1iWDSe2
	mqYHrrupJL9juoC3/ILA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX9b2-0005oI-E9; Fri, 08 May 2020 20:27:48 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX9au-0005nK-4U
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 20:27:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=99PO3vaZTM46qvS0LR8bXv5m1BEVlIFvFmNNPuHSrcU=; b=W5D2scAPXtxzyvIYaVnSFKVXeL
 ZqkHeN4Ll77OUV9rI72SL8SPBFaWhVarfaXMhS/ggsB1zhom6zD9coCA0B5vJ6qy2LhJH2ZHGvFAV
 h0NldpoKACJnE+1za8zyt18VTFJZO3SPLta76FPexc3DJhgMMy2idyfNfkFugBkt8QKE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jX9ac-001Pvw-Kd; Fri, 08 May 2020 22:27:22 +0200
Date: Fri, 8 May 2020 22:27:22 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
Message-ID: <20200508202722.GI298574@lunn.ch>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
 <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
 <83ab4ca4-9c34-4cdd-4413-3b4cdf96727d@arm.com>
 <20200508160755.GB10296@lsv03152.swis.in-blr01.nxp.com>
 <20200508181301.GF298574@lunn.ch>
 <1e33605e-42fd-baf8-7584-e8fcd5ca6fd3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e33605e-42fd-baf8-7584-e8fcd5ca6fd3@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_132740_176389_48D5A529 
X-CRM114-Status: GOOD (  21.84  )
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
 Calvin Johnson <calvin.johnson@oss.nxp.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > There is a very small number of devices where the vendor messed up,
> > and did not put valid contents in the ID registers. In such cases, we
> > can read the IDs from device tree. These are then used in exactly the
> > same way as if they were read from the device.
> > 
> 
> Is that the case here?

Sorry, I don't understand the question?

> Also, how much of this was caused by uboot being deficient

None. It is a silicon issue. The PHY chip simply has the wrong or no
ID value in the registers.

> > Not exactly true. It is the combination of can the bus master do C45
> > and can the device do C45. Unfortunately, we have no knowledge of the
> > bus masters capabilities, if it can do C45. And many MDIO drivers will
> > do a C22 transaction when asked to perform a C45 transaction. All new
> > submissions for MDIO drivers i ask for EOPNOTSUPP to be returned if
> > C45 is not supported. But we cannot rely on that. Too much history >
> > > 
> > > I tend to agree with you on this. Even for DT, ideal case, IMO should be:
> > > 
> > > 1) mdiobus_scan scans the mdiobus for c22 devices by reading phy id from
> > > registers 2 and 3
> > > 2) if not found scan for c45 devices <= looks like this is missing in Linux
> > > 3) look for phy_id from compatible string.
> > 
> > It is somewhat more complex, in that there are a small number of
> > devices which will respond to both C22 and C45. Generally, you want to
> > use C45 if supported. So you would want to do the C45 scan first. But
> > then the earlier problem comes to play, you have no idea if the bus
> > master actually correctly supports C45.
> 
> But this shouldn't this be implied by the mdio vendor/model?

Nope. Many MDIO bus masters don't even appear in DT, because they are
embedded into the MAC driver. The MAC driver just instantiates an MDIO
device, maybe passing a pointer where to find the PHY properties in
DT. If the MDIO bus master is in its own address range, then it
probably does exist in device tree, and has a compatible string. But
that just gets the driver loaded, it says nothing about what it is
capable of, C22 and or C45. And there are cases where the MDIO bus is
embedded inside an Ethernet switch, which is hanging off another MDIO
bus, etc.

> How much of this can be simplified for ACPI buy ignoring the legacy and
> putting some guides around the ACPI/platform requirements?

You can probably ignore the phy-idXXXX.YYYY compatible, since that is
working around silicon issues, and put in place some guidelines that
the PHY silicon needs to conform to the basics of C22 and C45 in terms
of ID registers.

C45 you are going to need. ACPI tends to be more high end devices,
which in general have higher speed network interfaces. Multi-Gige PHYs
tend to be C45. But there is also interest in using ACPI on 1G PHYs
where the majority is C22.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
