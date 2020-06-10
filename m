Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47251F4E2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 08:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKCNGFmUFzhvFRNs9KNSDd/SrZf7OloQ5WUF6a+ObQ0=; b=imc7DxEXDzPj44
	D4z+7xKZOr2D4oqp7ygqe+trb4P6hMN0YfX2ujgWeJqtqnYW1WWeBarccTAhgOHFY3BfO4BBzbWaX
	KmfNePcMmARQMYBDpC7t8jCjb6CACuR5guy2ghGxDAZcPqoXPY46RXEnkMcooqEdtVaj54ImriJ/p
	RRhOKAYLLG7SWd7eW8eHagNtrfw7bBhAKXTDUOrHoQPG8fqFLmrrt5qOPU9XwOt4FvCfbJ0E1XYrq
	GriZKtOIeRrAr/GKtzlLlHXsai3AEWnsal4cBo1yLbeoLeYez9ktB5Pm3st9HM8OT2VFvGRDRL/k6
	f/3nQW7gkaWZK+5Muqrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiuBo-0000m6-Rd; Wed, 10 Jun 2020 06:26:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiuBg-0000lB-Ku
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 06:26:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jiuBa-0001kT-Nz; Wed, 10 Jun 2020 08:26:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jiuBa-000441-6b; Wed, 10 Jun 2020 08:26:06 +0200
Date: Wed, 10 Jun 2020 08:26:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Message-ID: <20200610062606.GM11869@pengutronix.de>
References: <20200609131152.22836-1-s.hauer@pengutronix.de>
 <20200609132848.GA1076317@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609132848.GA1076317@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:15:33 up 111 days, 13:46, 104 users,  load average: 0.37, 0.22,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_232612_683913_150C4C01 
X-CRM114-Status: GOOD (  16.93  )
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

+Cc Maxime Chevallier

On Tue, Jun 09, 2020 at 03:28:48PM +0200, Andrew Lunn wrote:
> On Tue, Jun 09, 2020 at 03:11:52PM +0200, Sascha Hauer wrote:
> > The Marvell MVNETA Ethernet controller supports a 2.5Gbps SGMII mode
> > called DRSGMII. Depending on the Port MAC Control Register0 PortType
> > setting this seems to be either an overclocked SGMII mode or 2500BaseX.
> > 
> > This patch adds the necessary Serdes Configuration setting for the
> > 2.5Gbps modes. There is no phy interface mode define for overclocked
> > SGMII, so only 2500BaseX is handled for now.
> > 
> > As phy_interface_mode_is_8023z() returns true for both
> > PHY_INTERFACE_MODE_1000BASEX and PHY_INTERFACE_MODE_2500BASEX we
> > explicitly test for 1000BaseX instead of using
> > phy_interface_mode_is_8023z() to differentiate the different
> > possibilities.
> 
> Hi Sascha
> 
> This seems like it should have a Fixes: tag, and be submitted to the
> net tree. Please see the Networking FAQ.

This might be a candidate for a Fixes: tag:

| commit da58a931f248f423f917c3a0b3c94303aa30a738
| Author: Maxime Chevallier <maxime.chevallier@bootlin.com>
| Date:   Tue Sep 25 15:59:39 2018 +0200
| 
|     net: mvneta: Add support for 2500Mbps SGMII

What do you mean by "submitted to the net tree"? I usually send network
driver related patches to netdev@vger.kernel.org and from there David
applies them. Is there anything more to it I haven't respected?

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
