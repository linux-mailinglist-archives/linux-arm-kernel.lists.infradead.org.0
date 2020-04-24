Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FBD1B7107
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 11:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58+fvALFwghiP154SwRq4zkuqZLTeOyxiSI1Ws5+gkQ=; b=LBYiPgzlVXlT6H
	d0O4qfTtbOO4xOkPcQnle8khg8lwXsW45MVWvhXGKUkE7NfBm17cox5XapJhBVRuitLrNvXZt2SjO
	uW4aSNQOJ0IMmfZL5Kj83FLV/fYjz9AUbE+VmM62/I0EuTI2Pz0PQUDe5oqVnlS97srX/c1jVfnTq
	ggzzXeIul8AW3ICH7yVKVYMypIcZ+w6srqhr221WyquhF8EAp8dDUe8bbgGUJTSfBYOsmfgyoXj2l
	E+HskUNBZhmkwlKKzyHkps2yux7tTCHwQwKlPcU6DnjJbqgTIh9+0BggtP3VPQg7LiexX2vny6eFl
	DPxhL9sKYHtoUH/Ch0ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRujK-0001vJ-5E; Fri, 24 Apr 2020 09:34:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRujB-0001ua-DZ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 09:34:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6FBD20736;
 Fri, 24 Apr 2020 09:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587720872;
 bh=Sw8H8k9G1mqrfCV+C7cERqQwqb47p7sRVyuxrdCLxGU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M//pRCL0EJp/Wnw5mUyVlLArY3rFY0Ba+XmihieCWjqsDy6X1mFErbNp+a+sRQWC4
 0YwsJvemoSF8NH/6VMq7398wHFlhIMxoxvJaclaBUQLTEVIcUqnaXRlEVx5fHuSS/w
 TozwshZcbzrrjs99Z/TqTkrtrFfOhZp/BJzd8vQY=
Date: Fri, 24 Apr 2020 11:34:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [net-next PATCH v1 1/2] device property: Introduce
 fwnode_phy_find_device()
Message-ID: <20200424093430.GA376180@kroah.com>
References: <20200424031617.24033-1-calvin.johnson@oss.nxp.com>
 <20200424031617.24033-2-calvin.johnson@oss.nxp.com>
 <b583f6fb-e6fe-3320-41c6-e019a4e10388@gmail.com>
 <20200424092651.GA4501@lsv03152.swis.in-blr01.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424092651.GA4501@lsv03152.swis.in-blr01.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_023433_479369_EA84B130 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, netdev@vger.kernel.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 02:56:51PM +0530, Calvin Johnson wrote:
> On Thu, Apr 23, 2020 at 08:45:03PM -0700, Florian Fainelli wrote:
> > 
> > 
> > On 4/23/2020 8:16 PM, Calvin Johnson wrote:
> > > Define fwnode_phy_find_device() to iterate an mdiobus and find the
> > > phy device of the provided phy fwnode.
> > > 
> > > Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> > 
> > If you forget to update the MAINTAINERS file, or do not place this code
> > under drivers/net/phy/* or drivers/of/of_mdio.c then this is going to
> > completely escape the sight of the PHYLIB/PHYLINK maintainers...
> 
> Did you mean the following change?
> 
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6354,6 +6354,7 @@ F:
> Documentation/devicetree/bindings/net/ethernet-phy.yaml
>  F:     Documentation/devicetree/bindings/net/mdio*
>  F:     Documentation/devicetree/bindings/net/qca,ar803x.yaml
>  F:     Documentation/networking/phy.rst
> +F:     drivers/base/property.c
>  F:     drivers/net/phy/
>  F:     drivers/of/of_mdio.c

I really doubt the phy maintainers want to maintain all of property.c,
right?  Please be kinder...

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
