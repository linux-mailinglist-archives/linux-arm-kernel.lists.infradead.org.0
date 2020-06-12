Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D6B1F7694
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gtn5AJPy+UqzWczDy0yOigu5bRUb6Q0MQN/r3OUexH4=; b=rO462tmmLwcQAQ
	egx7m2RHEJQRn96Qxn+5k5yV0ijC6svs9w0WEqQLsAPz87O8s5EuRQBuJqyjGdXg1cV40e1y3Ce2P
	XdMaOiwLgV6MfzGHl0hJyu/psdHriKm80McBUwnwUvIoPH0ybcd63jCT2Q4w/Q7Gd7XhWizXCOZyC
	GODJ7DCLPgCoREexD5lJzds/iVy2TIE18+Xwaqne2WuQJuUx9Cot/y/3YE0OU7DIyyCqBhoaxAXmT
	VoLcCgiVIxeKGk7q1kHK9+sGgHTui45fTuAry5ESazx4KqH7zafRAEK7VK8nhXpdcXOfQhVFtQTZ7
	tdYftUpkIkzYLQi9ImBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgiv-0002DC-9F; Fri, 12 Jun 2020 10:15:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgin-0002CS-Or
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:15:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jjgig-0004Gh-PK; Fri, 12 Jun 2020 12:15:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jjgig-0002A5-5L; Fri, 12 Jun 2020 12:15:30 +0200
Date: Fri, 12 Jun 2020 12:15:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Message-ID: <20200612101530.GR11869@pengutronix.de>
References: <20200612083847.29942-1-s.hauer@pengutronix.de>
 <20200612084710.GC1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612084710.GC1551@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:39:20 up 113 days, 17:09, 127 users,  load average: 0.05, 0.10,
 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_031537_808077_82B920E9 
X-CRM114-Status: GOOD (  21.79  )
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
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 09:47:10AM +0100, Russell King - ARM Linux admin wrote:
> On Fri, Jun 12, 2020 at 10:38:47AM +0200, Sascha Hauer wrote:
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
> > 
> > Fixes: da58a931f248f ("net: mvneta: Add support for 2500Mbps SGMII")
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> 2500base-X is used today on Armada 388 and Armada 3720 platforms and
> works - it is known to interoperate with Marvell PP2.2 hardware, as
> well was various SFPs such as the Huawei MA5671A at 2.5Gbps.  The way
> it is handled on these platforms is via the COMPHY, requesting that
> the serdes is upclocked from 1.25Gbps to 3.125Gbps.

Unfortunately the functional specs I have available for the Armada 38x
completely lack the ethernet registers, So I can't tell what has to be
done there. What about the other values that are poked into
MVNETA_SERDES_CFG? Are these documented in the Armada 388 functional
spec or are they just ignored by this hardware? I'm talking about
mvneta_port_power_up():

        if (phy_mode == PHY_INTERFACE_MODE_QSGMII)
                mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_QSGMII_SERDES_PROTO);
        else if (phy_mode == PHY_INTERFACE_MODE_SGMII ||
                 phy_mode == PHY_INTERFACE_MODE_1000BASEX)
                mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_SGMII_SERDES_PROTO);
        else if (!phy_interface_mode_is_rgmii(phy_mode))
                return -EINVAL;

In the Armada 38x functional specs we have this to configure the SGMII
mode:

PIN_PHY_GEN Setting:

SGMII SGMII (1.25 Gbps) 0x6
  HS-SGMII (3.125 Gbps) 0x8

The Armada XP doesn't have Comphy, so I guess what is being done in
mvneta_port_power_up() is just the old way for configuring the Serdes
lanes for different bitrates. Also they seem to have renamed DRSGMII
to HS-SGMII.

> 
> This "DRSGMII" mode is not mentioned in the functional specs for either
> the Armada 388 or Armada 3720, the value you poke into the register is
> not mentioned either.  As I've already requested, some information on
> exactly what this "DRSGMII" is would be very useful, it can't be
> "double-rate SGMII" because that would give you 2Gbps instead of 1Gbps.

As said, despite the fact that two times 1Gbps is not 2.5Gbps DRSGMII
still stands for "Double Rated-SGMII", as found in the MV78260 Hardware
specifications. Another place in the same document talks about "DRSGMII
(SGMII at 2.5Gbps)". Otherwise documentation is sparse, to my
information it is really only a higher bitrate.

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
