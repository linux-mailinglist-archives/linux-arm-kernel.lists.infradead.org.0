Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CF21BD98C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3akiZxbZCjc2R9f3YJrH+BiKI4fkDCsthUk5tRvnDA=; b=sVORgaYMKSWhRW
	L6uCxRoAkG688FesVkv6enPqZ9unp9dSj+MZnekE/hkguDEv1c1Hrqhe1dybs+SR0+kRbvm8PPJsu
	b3/O5rC4pziL+7GRPYThoQQsymtk8A0zoc+uS3li22tx3kz2rBLCtL+Cz0EvxaBN39OPhbsDCn7rC
	zzRZcLJBiv4pso5BnJzPi9ayDSRAdBK+k+UHAGcvoYdNpwSPmgYXCz3E7sz7tVstGeC9SVSG8+5am
	j1rDj2LeyvNq80Vq6ZT4oKckL1B4NPLV+cm0JJPEDYMIaqeuwks1bpPfLhSl9dROGpndcb5kh5jdO
	JpB+WlIfnq86VVksHAGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjva-0003vT-0u; Wed, 29 Apr 2020 10:26:54 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjv9-0003o4-5X
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:26:28 +0000
Received: by mail-ot1-f65.google.com with SMTP id m13so1232309otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 03:26:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mvIHWhU04g3v6LjKSsky5pEk63GBz533E/sobmoo7Wc=;
 b=B43mNTPvn05b7zC3wVLBAWVD8tooebpq02I7cLhICFsTdeLGf1wmj2M0sInByuuHa+
 RcbrsPuGi7FvWD4chdRf08r4PGSsxvXo7pIM4UImuK1v5yocGuFC9klQ2gqdhq815muP
 PGXpeRRI1iqM0tGFTIzamgYFA5sLDhZNVYOXrtapT5PFo08eUx0tRPwE9nUl8tNIwmbY
 3aXgCVNSRrof/8CDg9roRyOJpkUPdOmHaQXBHqoCeGpvkS23CqxYklhPaSxex2yZvWcU
 vhYB9yfpYVy965/Gm5t8rIGJWb6u17OIXTRxHtCIWXFBnpJI82LT2tVbpdjjNE1i/Yi9
 TIPw==
X-Gm-Message-State: AGi0PuYwJ3JJSPMqoDv9GM4QbUun+HcUylRL74mJ+YZgF5bboju8lMqU
 FKhBOt923219JsEX+zjGE4kp1IhdZYyUkcWcACU=
X-Google-Smtp-Source: APiQypJnyzo4VqldDo304UGZQtLY+7AXB7jFtaFmqclX/7CuNEy43JujxFtdEqaZN6afWwi2LXcTKDkxwr3nMu1panQ=
X-Received: by 2002:a9d:6ac8:: with SMTP id m8mr26003040otq.262.1588155984780; 
 Wed, 29 Apr 2020 03:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
 <20200427135820.GH25745@shell.armlinux.org.uk>
 <20200427143238.GA26436@lsv03152.swis.in-blr01.nxp.com>
 <20200427144806.GI25745@shell.armlinux.org.uk>
 <20200429053753.GA12533@lsv03152.swis.in-blr01.nxp.com>
In-Reply-To: <20200429053753.GA12533@lsv03152.swis.in-blr01.nxp.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 29 Apr 2020 12:26:12 +0200
Message-ID: <CAJZ5v0g4oaDGGk1Jg5rihaG1kj1BYHpZpwTFrXX4Jo4tettbgg@mail.gmail.com>
Subject: Re: [net-next PATCH v2 0/3] Introduce new APIs to support phylink and
 phy layers
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_032627_227216_CF617AF4 
X-CRM114-Status: GOOD (  26.22  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Len Brown <lenb@kernel.org>, Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 7:38 AM Calvin Johnson
<calvin.johnson@oss.nxp.com> wrote:
>
> On Mon, Apr 27, 2020 at 03:48:07PM +0100, Russell King - ARM Linux admin wrote:
> > On Mon, Apr 27, 2020 at 08:02:38PM +0530, Calvin Johnson wrote:
> > > On Mon, Apr 27, 2020 at 02:58:20PM +0100, Russell King - ARM Linux admin wrote:
> > > > On Mon, Apr 27, 2020 at 06:54:06PM +0530, Calvin Johnson wrote:
> > > > > Following functions are defined:
> > > > >   phylink_fwnode_phy_connect()
> > > > >   phylink_device_phy_connect()
> > > > >   fwnode_phy_find_device()
> > > > >   device_phy_find_device()
> > > > >   fwnode_get_phy_node()
> > > > >
> > > > > First two help in connecting phy to phylink instance.
> > > > > Next two help in finding a phy on a mdiobus.
> > > > > Last one helps in getting phy_node from a fwnode.
> > > > >
> > > > > Changes in v2:
> > > > >   move phy code from base/property.c to net/phy/phy_device.c
> > > > >   replace acpi & of code to get phy-handle with fwnode_find_reference
> > > > >   replace of_ and acpi_ code with generic fwnode to get phy-handle.
> > > > >
> > > > > Calvin Johnson (3):
> > > > >   device property: Introduce phy related fwnode functions
> > > > >   net: phy: alphabetically sort header includes
> > > > >   phylink: Introduce phylink_fwnode_phy_connect()
> > > >
> > > > Thanks for this, but there's more work that needs to be done here.  I
> > > > also think that we must have an ack from ACPI people before this can be
> > > > accepted - you are in effect proposing a new way for representing PHYs
> > > > in ACPI.
> > >
> > > Thanks for your review.
> > >
> > > Agree that we need an ack from ACPI people.
> > > However, I don't think it is a completely new way as similar acpi approach to
> > > get phy-handle is already in place.
> > > Please see this:
> > > https://elixir.bootlin.com/linux/v5.7-rc3/source/drivers/net/ethernet/apm/xgene/xgene_enet_hw.c#L832
> >
> > That was added by:
> >
> > commit 8089a96f601bdfe3e1b41d14bb703aafaf1b8f34
> > Author: Iyappan Subramanian <isubramanian@apm.com>
> > Date:   Mon Jul 25 17:12:41 2016 -0700
> >
> >     drivers: net: xgene: Add backward compatibility
> >
> >     This patch adds xgene_enet_check_phy_hanlde() function that checks whether
> >     MDIO driver is probed successfully and sets pdata->mdio_driver to true.
> >     If MDIO driver is not probed, ethernet driver falls back to backward
> >     compatibility mode.
> >
> >     Since enum xgene_enet_cmd is used by MDIO driver, removing this from
> >     ethernet driver.
> >
> >     Signed-off-by: Iyappan Subramanian <isubramanian@apm.com>
> >     Tested-by: Fushen Chen <fchen@apm.com>
> >     Tested-by: Toan Le <toanle@apm.com>
> >     Signed-off-by: David S. Miller <davem@davemloft.net>
> >
> > The commit message says nothing about adding ACPI stuff, and searching
> > the 'net for the posting of this patch seems to suggest that it wasn't
> > obviously copied to any ACPI people:
> >
> >     https://lists.openwall.net/netdev/2016/07/26/11
> >
> > Annoyingly, searching for:
> >
> >     "drivers: net: xgene: Add backward compatibility" site:lore.kernel.org
> >
> > doesn't find it on lore, so can't get the full headers and therefore
> > addresses.
> >
> > So, yes, there's another driver using it, but the ACPI folk probably
> > never got a look-in on that instance.  Even if they had been copied,
> > the patch description is probably sufficiently poor that they wouldn't
> > have read the patch.
> >
> > I'd say there's questions over whether ACPI people will find this an
> > acceptable approach.
> >
> > Given that your patch moves this from one driver to a subsystem thing,
> > it needs to be ratified by ACPI people, because it's effectively
> > becoming a standardised way to represent a PHY in ACPI.
>
> How can we get attention/response from ACPI people?

This is in my queue, but the processing of this has been slow for a
while, sorry about that.

If you have a new version of the series, please submit it, otherwise
ping me in a couple of days if I don't respond to the patches in the
meantime.

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
