Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBED4B3091
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 16:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDGHTLKW4bwTQK7EzoxQAHOgAB5opAhehihBNWPEA9w=; b=d9WjVDTMvB+1Hu
	4PjQAJNRLp8bf5YZvTHFRowMXKMqIzAfXq3a5/RSMDTbBNfdMqdkB+dyxr9DqvpD9Ev7uDEKhtTo+
	D7nkAFAMIgi5TB1Rbkcr7EBwQ/XuVrPAwb89ePH4jiuSeVsidI/A2WHjv7WQcKUscil7l8SNEtTLz
	cGRRoP8iC+PUvreoPvoWRDyfetWJaME7pdQeyFpColsX9lEjuH6FvGtnNCzR1SFGWfA85SRnph/J6
	Ou4+KOqrHaCvBQgQB3mI/3PFGnYic+kx8YfNIu72xf0Gy008ULUcq0Ydqe32W8E6QHPOr/HuE0Sqj
	VZ8vCzEhc9x4lq6lliKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9VkT-0004cb-1J; Sun, 15 Sep 2019 14:43:33 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Vjv-0004br-NG
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 14:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xMf0N4K2EgA3OUVay8T7uJqPe+W0bKJBfCqBZvUVfYk=; b=O4qJeJ59kDtv4wGtvnnVT6JpDi
 Y3WowKRfuE2WOGLv7wp6e0j6GymzHYw9dMik4XLOXSRz41wglcLbJb9vWvFUVjWeshj6a9TyKadcm
 +4xYbG+lBAYY0e3bWcFszP0eZOERrelUw0C0dFIX3q7Jo/bw6WaH6JzkLPUEd32MAXIk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i9Vjo-0004Wx-AG; Sun, 15 Sep 2019 16:42:52 +0200
Date: Sun, 15 Sep 2019 16:42:52 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190915144252.GA17261@lunn.ch>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190915140639.GC25745@shell.armlinux.org.uk>
 <20190915141552.GD25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190915141552.GD25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_074300_111995_E64977B0 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> > OF: fdt: Machine model: SolidRun HummingBoard Solo/DualLite
> > ...
> > # ethtool eth0
> > Settings for eth0:
> >         Supported ports: [ TP MII ]
> >         Supported link modes:   10baseT/Half 10baseT/Full
> >                                 100baseT/Half 100baseT/Full
> >                                 1000baseT/Full
> >         Supported pause frame use: Symmetric
> >         Supports auto-negotiation: Yes
> >         Supported FEC modes: Not reported
> >         Advertised link modes:  10baseT/Half 10baseT/Full
> >                                 100baseT/Half 100baseT/Full
> >                                 1000baseT/Full
> >         Advertised pause frame use: Symmetric
> >         Advertised auto-negotiation: Yes
> >         Advertised FEC modes: Not reported
> >         Link partner advertised link modes:  10baseT/Half 10baseT/Full
> >                                              100baseT/Half 100baseT/Full
> >                                              1000baseT/Full
> >         Link partner advertised pause frame use: Symmetric
> >         Link partner advertised auto-negotiation: Yes
> >         Link partner advertised FEC modes: Not reported
> >         Speed: 1000Mb/s
> >         Duplex: Full
> >         Port: MII
> >         PHYAD: 0
> >         Transceiver: internal
> >         Auto-negotiation: on
> >         Supports Wake-on: d
> >         Wake-on: d
> >         Link detected: yes

> Note that the FEC does *not* support 1000baseT/Half.

Hi Russell

fec_main.c has code to mask it out. And it is not listed in the modes
you have above. So as you say, this all looks to be working.

I'm wondering if there is an older variant of the hardware with
100Mbps magnetics, and the boot loader is setting something in the
PHY? It could be we are now stomping over that?

We need to see output like yours, but on a device which is
experiencing the problem.

	     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
