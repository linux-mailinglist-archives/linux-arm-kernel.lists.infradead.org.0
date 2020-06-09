Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016831F3B8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/Px/2mr9vUatGHwWHRtesDWfPV0QY1npRPhwe3zGu4=; b=i60s98UMPn+m8u
	arN+Ma3aad2P1ptcEQh/YHLCycKt0pJ+EbfgblDMXh5PZNfmGhJ2RYKR/B1db2NxZpXrfGUacmbsl
	G+L8TiOBUlEZugW3ftSksi8dvs4LgRDQhCsAgr38Na416k9fKrKURIm2QvIMxPbcv/dUyPB+n1kYL
	sduZw47kspNn5uiAVF44jD/uIdGaFa9mJJmuBQ6FKE1IJcmiQ+qmDHN/anWaMOnuOV9PZii3QtcB0
	5/JVS0FB2am4cVXJaT7m2to4U+l9e2QVK+IfYjIliAGaSbDExMKdFTOO7WGJrdz5yd2qujrlDHJVY
	98Hvb3CcUfaKV+Ryqodw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jie59-0001wt-Kc; Tue, 09 Jun 2020 13:14:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jie51-0001wD-QU
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:14:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jie4q-0006Ap-DQ; Tue, 09 Jun 2020 15:14:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jie4p-0000V1-1j; Tue, 09 Jun 2020 15:14:03 +0200
Date: Tue, 9 Jun 2020 15:14:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] net: ethernet: mvneta: add support for 2.5G DRSGMII mode
Message-ID: <20200609131402.GL11869@pengutronix.de>
References: <20200608074716.9975-1-s.hauer@pengutronix.de>
 <20200608145737.GG1006885@lunn.ch>
 <20200609125535.GK11869@pengutronix.de>
 <20200609131216.GJ1022955@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609131216.GJ1022955@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:13:06 up 110 days, 20:43, 124 users,  load average: 0.03, 0.14,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_061415_854955_DC00538E 
X-CRM114-Status: GOOD (  18.27  )
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
 linux-kernel@vger.kernel.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Tue, Jun 09, 2020 at 03:12:16PM +0200, Andrew Lunn wrote:
> On Tue, Jun 09, 2020 at 02:55:35PM +0200, Sascha Hauer wrote:
> > On Mon, Jun 08, 2020 at 04:57:37PM +0200, Andrew Lunn wrote:
> > > On Mon, Jun 08, 2020 at 09:47:16AM +0200, Sascha Hauer wrote:
> > > > The Marvell MVNETA Ethernet controller supports a 2.5 Gbps SGMII mode
> > > > called DRSGMII.
> > > > 
> > > > This patch adds a corresponding phy-mode string 'drsgmii' and parses it
> > > > from DT. The MVNETA then configures the SERDES protocol value
> > > > accordingly.
> > > > 
> > > > It was successfully tested on a MV78460 connected to a FPGA.
> > > 
> > > Hi Sascha
> > > 
> > > Is this really overclocked SGMII, or 2500BaseX? How does it differ
> > > from 2500BaseX, which mvneta already supports?
> > 
> > I think it is overclocked SGMII or 2500BaseX depending on the Port MAC
> > Control Register0 PortType setting bit.
> > As said to Russell we have a fixed link so nobody really cares if it's
> > SGMII or 2500BaseX. This boils down the patch to fixing the Serdes
> > configuration setting for 2500BaseX.
> 
> Hi Sascha
> 
> Does 2500BaseX work for your use case? Since this drsmgii mode is not
> well defined, i would prefer to not add it, unless it is really
> needed.

Yes, it does, see updated patch I just sent.

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
