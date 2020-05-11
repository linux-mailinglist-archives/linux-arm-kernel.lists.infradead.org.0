Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BF61CDA80
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4rAPrgupED5PfMJmOjbmKzzO5nLFCupBkRPd5C50K4=; b=F+QHrj5jOEslhc
	jCG7M1VT3O6TPKsd3dy8df9DnV9dvwTUU1yqYqW/mVIWQNj+uxwyq0kurWP/TNPDBBNAdlZdFnog+
	31APh+cBF7uzeX2v0whaQoa00LaAuqzE6zzsvQQcxBvRRiAotIZimGfY3fAgWXvPlZaFqfSnLceRE
	laAt2EAYFpgpPveWCY74Go7vUrZT30kgrDVo7LoauCJv6z/lIu6V0gyKENL5FwSS7AILzbfdrOZe1
	wQxYeU3p8PeomblhzV/GMFZFFk3E+k1L92hikEshKcxWMR+p9bqu4sNVY13kOgF8BXjaFQ5reIiya
	k4uxqHwVpiBl7SCDsrgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7wC-0005nZ-AJ; Mon, 11 May 2020 12:53:40 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7w2-0005lo-0F
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UCjERt+maORMJwlHX05z+ypjOJgAfE49qXX7mxNSNHc=; b=lYPYuNsqZF2PI5lTSomAC3i5Eq
 GaTSHIVKs+8UyVTVrO+sgqPtlyglYPKA7Zc6xhtKlQfsFxEMbHHzt0kq/Sb542KSkL9GxetKcUR61
 z+RdHrnObgpc3s2OYXcus3QY1TGfX/h7TvLPK+0c25p9Bq8ifqnnEgtUuJMGlzBXX4T0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jY7vn-001qt8-R0; Mon, 11 May 2020 14:53:15 +0200
Date: Mon, 11 May 2020 14:53:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
Message-ID: <20200511125315.GB409897@lunn.ch>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
 <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
 <83ab4ca4-9c34-4cdd-4413-3b4cdf96727d@arm.com>
 <20200508160755.GB10296@lsv03152.swis.in-blr01.nxp.com>
 <20200508181301.GF298574@lunn.ch>
 <20200511055231.GA12725@lsv03152.swis.in-blr01.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511055231.GA12725@lsv03152.swis.in-blr01.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_055330_042314_31F33177 
X-CRM114-Status: GOOD (  28.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, May 11, 2020 at 11:22:31AM +0530, Calvin Johnson wrote:
> Thanks Andrew and Jeremy for the detailed discussion!
> 
> On Fri, May 08, 2020 at 08:13:01PM +0200, Andrew Lunn wrote:
> > > > It does have a numeric version defined for EISA types. OTOH I suspect that
> > > > your right. If there were a "PHY\VEN_IDvvvv&ID_DDDD" definition, it may not
> > > > be ideal to parse it. Instead the normal ACPI model of exactly matching the
> > > > complete string in the phy driver might be more appropriate.
> > > 
> > > IMO, it should be fine to parse the string to extract the phy_id. Is there any
> > > reason why we cannot do this?
> > 
> > Some background here, about what the PHY core does.
> > 
> > PHYs have two ID registers. This contains vendor, device, and often
> > revision of the PHY. Only the vendor part is standardised, vendors can
> > decide how to use the device part, but it is common for the lowest
> > nibble to be revision. The core will read these ID registers, and then
> > go through all the PHY drivers registered and ask them if they support
> > this ID. The drivers provide a table of IDs and masks. The mask is
> > applied, and then if the ID matches, the driver is used. The mask
> > allows the revision to be ignored, etc.
> > 
> > There is a very small number of devices where the vendor messed up,
> > and did not put valid contents in the ID registers. In such cases, we
> > can read the IDs from device tree. These are then used in exactly the
> > same way as if they were read from the device.
> > 
> > If you want the ACPI model to be used, an exact match on the string,
> > you are going to have to modify the core and the drivers. They
> > currently don't have any string, and have no idea about different
> > revisions which are out in the wild.
> 
> I don't think ACPI mandates that OS driver use exact string match and not parse
> the string.
> 
> First of all, I would suggest that we use "compatible" property instead of _CID.
> Not sure of a reason why we cannot. This will simplify implementation of fwnode
> APIs.
> 
> Already I've pointed out couple of ASL files in tianocore where they are already
> used.
> one eg:https://github.com/tianocore/edk2-platforms/blob/master/Silicon/Marvell/Armada7k8k/AcpiTables/Armada80x0McBin/Dsdt.asl#L280
> 
> Even if we use _CID, I'm not sure we are prohibited from extracting characters
> (phy_id) from it.
> If we decide to use _CID, then we need to define somewhere and standardize
> exactly how we are going to use it. I'm not sure where we can do this.

Hi Calvin

Whatever is decided needs to be documented as it becomes a defacto
standard. Once this is in the Linux PHY core, that is how it is done
for all boards using ACPI.

Maybe sometime in the future when the ACPI standards committee
definitively defines how this should be done, we can add a second
implementation which is standards conformant.

       Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
