Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E2F1F3A72
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSxTVTvnScYBp4T+nLHG+yuIKB6FQmEDAtTGq7xQ/wQ=; b=TXA+bfDhnStsXw
	y61JXrWNyydnuvbmBK5tYbEPSWprzOZ8CrCop72N/RuahII11stiFw6TDeyO44HjoeFBaWiBVh7yu
	uPl2/AqnELNWGzTIZI63monAf2GrWAhbZI/FdcwMOL7J1CfOlmeJ6Bo7V1FPyM/oCrxwUfrXDcJ2W
	nUG+cxq2ZOBxAXDXY9+Z16dfCBWHkK8q180SUzfgFL4+JB+QJQiDtdzwm6rtvD4B0+KGIxAro5Haj
	3Z18Bh78rLOqIIlFOL6mxjcAlThsaSXmgPwJznWwhEvK+v5h3tlam6IzDKUwXimkZrU14HAzUVxQX
	h65x7FP5HOFOPe8BF1Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jid6a-0005PH-3z; Tue, 09 Jun 2020 12:11:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jid6S-0005Om-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:11:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jid6K-0007sT-3d; Tue, 09 Jun 2020 14:11:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jid6J-0005En-9w; Tue, 09 Jun 2020 14:11:31 +0200
Date: Tue, 9 Jun 2020 14:11:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] net: ethernet: mvneta: add support for 2.5G DRSGMII mode
Message-ID: <20200609121131.GJ11869@pengutronix.de>
References: <20200608074716.9975-1-s.hauer@pengutronix.de>
 <20200608160801.GO1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608160801.GO1551@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:53:29 up 110 days, 15:23, 126 users,  load average: 0.02, 0.10,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_051140_669472_7A3E37F8 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 05:08:01PM +0100, Russell King - ARM Linux admin wrote:
> On Mon, Jun 08, 2020 at 09:47:16AM +0200, Sascha Hauer wrote:
> > The Marvell MVNETA Ethernet controller supports a 2.5 Gbps SGMII mode
> > called DRSGMII.
> > 
> > This patch adds a corresponding phy-mode string 'drsgmii' and parses it
> > from DT. The MVNETA then configures the SERDES protocol value
> > accordingly.
> > 
> > It was successfully tested on a MV78460 connected to a FPGA.
> 
> Digging around, this is Armada XP?  Which SoCs is this mode supported?
> There's no mention of DRSGMII in the A38x nor A37xx documentation which
> are later than Armada XP.

It's an Armada XP MV78460 in my case. I have no idea what other SoCs
this mode is supported on.

> 
> What exactly is "drsgmii"?  It can't be "double-rate" SGMII because that
> would give you 2Gbps max instead of the 1Gbps, but this gives 2.5Gbps,
> so I'm really not sure using "drsgmii" is a good idea.  It may be what
> Marvell call it, but we really need to know if there's some vendor
> neutral way to refer to it.

The abbreviation really is for "Double Rated SGMII". It seems it has 2.5
times the clock rate than ordinary SGMII. Another term I found is HSGMII
(High serial gigabit media-independent interface) which also has
2.5Gbps.

Anyway, I just learned from the paragraph you added to
Documentation/networking/phy.rst that 1000BASEX differs from SGMII in
the format of the control word. As we have a fixed link to a FPGA the
control word seems to be unused, at least the Port MAC Control Register0
PortType setting bit doesn't change anything. So I can equally well use
the existing 2500BASEX mode.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
