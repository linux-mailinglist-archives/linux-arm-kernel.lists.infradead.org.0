Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842B91AEEC6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFhULm22CYPk/tcsGrdmQbAfNKzpgveCOcWruRH8wyY=; b=NUehTbk9kz7c15
	FiY9HThQSQ96Os1nYGHIk1WG22wRgVz7XXeqM4s4OIL4MdzFzDay2gKi8H6KRLdmKoIjUnF84apa2
	0cnxmXfH79uLBJspkIJFNQEQuFZCPHMxwS1vC8hykZiB/UyBsZ0/4kdwo95syfcwnDKD3v1PwZXIX
	JmPDCqsq87+Uvk2FBTPs9uT/1ZEsju3PgAZ6mC2o+kcBXPto3/xj9zXZgSEBkC6OCQ3XBQB6y68lS
	V6hUmeO87IsxSEXVf0HajMdpjRPjQeJ6CK6OXlAakK6p4pzdNMI2ddbW28B0rKQifdudbu70XMSeT
	PGX7eugtcsfp6NZ5/GfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPoco-0003FB-Jz; Sat, 18 Apr 2020 14:39:18 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPocf-00033o-K6
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:39:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1LsCjVacgDNgCyib7rEtoSFJWVTL9FJKR4yzQpOfwYg=; b=UrQgm4vL1ovuJYFTO+d+97W3Qs
 TCvDjd0CNLvezkYbzOVdaG5akr/ykupJjk7WO1yvDFwqYS16vyIEWFeY87wFH3ZtWJHL6Cr1zdiuO
 Y0WiLKT375DuF8uGMnfREUff7WFSnp9EB7x6V+XcdicIyOPEwXy2PcZ+sWZo/hA2l26k=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jPocZ-003TEL-8P; Sat, 18 Apr 2020 16:39:03 +0200
Date: Sat, 18 Apr 2020 16:39:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC net-next PATCH v2 1/2] net/fsl: add ACPI support for mdio bus
Message-ID: <20200418143903.GF804711@lunn.ch>
References: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
 <20200418105432.11233-2-calvin.johnson@oss.nxp.com>
 <20200418114116.GU25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418114116.GU25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_073909_663939_F875A854 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
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
Cc: Varun Sethi <V.Sethi@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>, linux-kernel@vger.kernel.org,
 Calvin Johnson <calvin.johnson@oss.nxp.com>, Marcin Wojtas <mw@semihalf.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > +static int xgmac_mdiobus_register_phy(struct mii_bus *bus,
> > +				      struct fwnode_handle *child, u32 addr)
> > +{
> > +	struct phy_device *phy;
> > +	bool is_c45 = false;
> > +	int rc;
> > +	const char *cp;
> > +	u32 phy_id;
> > +
> > +	fwnode_property_read_string(child, "compatible", &cp);
> > +	if (!strcmp(cp, "ethernet-phy-ieee802.3-c45"))
> > +		is_c45 = true;
> > +
> > +	if (!is_c45 && !xgmac_get_phy_id(child, &phy_id))
> > +		phy = phy_device_create(bus, addr, phy_id, 0, NULL);
> > +	else
> > +		phy = get_phy_device(bus, addr, is_c45);
> > +	if (IS_ERR(phy))
> > +		return PTR_ERR(phy);
> > +
> > +	phy->irq = bus->irq[addr];
> > +
> > +	/* Associate the fwnode with the device structure so it
> > +	 * can be looked up later.
> > +	 */
> > +	phy->mdio.dev.fwnode = child;
> > +
> > +	/* All data is now stored in the phy struct, so register it */
> > +	rc = phy_device_register(phy);
> > +	if (rc) {
> > +		phy_device_free(phy);
> > +		fwnode_handle_put(child);
> > +		return rc;
> > +	}
> > +
> > +	dev_dbg(&bus->dev, "registered phy at address %i\n", addr);
> > +
> > +	return 0;
> 
> You seem to be duplicating the OF implementation in a private driver,
> converting it to fwnode.  This is not how we develop the Linux kernel.
> We fix subsystem problems by fixing the subsystems, not by throwing
> what should be subsystem code into private drivers.

And i think a similar comment was given for v1, but i could be
remembering wrongly.

	    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
