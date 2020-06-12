Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F921F756F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DttAKOJ9jDGGO8A55+Ftu1J7P8u2lZrRZDlYS/gvHk=; b=sY3kG0e5S7kZ86
	/JIJX6WAPAjpSqMB3LQTzhBtHFfTbjbOyZIuNZwkCpOOZ7nBP8cFMQz4StMkYJGRiJ4OE1Ah82eFN
	wOpS0Lz2BA6XCFeHsbCkQW0d8iJUIFU6VtGMVgwALC/JeY1AzEtLnY2po5fH0WINhsV855hrbfNCd
	JN6+BDEGsxB7UR463f/WvoBjAN/XnLepMJLVmYhwhb9HXFaMYKRwhO/gE15UEJgRGQYbi2e86yb+Z
	4ENoTAmuBs2uU761ty2DnKMzKUEp9xxRJ5FtC710eIo8QotUSLIdZv2dpIQ5E4j5CYO2oh5jZtvzM
	6Q+iUz4SWDd/ZkJvaeCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfLa-0006zK-Q8; Fri, 12 Jun 2020 08:47:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfLM-0006yu-P7
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ppaRPVGqkWM/OTbuguh/PjazU7yUJs4On6rOzMLESpI=; b=ztKNvNvAzydCyExul5EoZgwkb
 C4KGYLiTsxS4f8AZ6muEDgVmGHxD3VdtY/CxbTX2ds/PNXB82y5ZyE+XpElwI9ZiwapI6/XQJC/N+
 LB5PMOw2Z9fcG0fnSgHR9qUcTcuwkVwDDVIiyaASnT17SN0o2rHAhYv6hiCvoYBXr8Q7J7wnTKPyb
 UL7cMwhM6JMj0HK8irvtWveTqtk7hxVrQU8WqmsgQj6QJ6PAO7UITGP3qkFAxvIUfwB0Ky0ZW0gDh
 Rm4Kb6AlGflUyfLxlTS00wuJ9psA+jgjlHR8jtoUdLkex7EQ9Ewk/YgNeVm5ZalpVrs5MRNxygzna
 6XJvOxulQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:52602)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjfLG-0002Pe-EG; Fri, 12 Jun 2020 09:47:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjfLC-00067G-Fq; Fri, 12 Jun 2020 09:47:11 +0100
Date: Fri, 12 Jun 2020 09:47:10 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Message-ID: <20200612084710.GC1551@shell.armlinux.org.uk>
References: <20200612083847.29942-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612083847.29942-1-s.hauer@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_014720_813365_D01708BA 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Jun 12, 2020 at 10:38:47AM +0200, Sascha Hauer wrote:
> The Marvell MVNETA Ethernet controller supports a 2.5Gbps SGMII mode
> called DRSGMII. Depending on the Port MAC Control Register0 PortType
> setting this seems to be either an overclocked SGMII mode or 2500BaseX.
> 
> This patch adds the necessary Serdes Configuration setting for the
> 2.5Gbps modes. There is no phy interface mode define for overclocked
> SGMII, so only 2500BaseX is handled for now.
> 
> As phy_interface_mode_is_8023z() returns true for both
> PHY_INTERFACE_MODE_1000BASEX and PHY_INTERFACE_MODE_2500BASEX we
> explicitly test for 1000BaseX instead of using
> phy_interface_mode_is_8023z() to differentiate the different
> possibilities.
> 
> Fixes: da58a931f248f ("net: mvneta: Add support for 2500Mbps SGMII")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

2500base-X is used today on Armada 388 and Armada 3720 platforms and
works - it is known to interoperate with Marvell PP2.2 hardware, as
well was various SFPs such as the Huawei MA5671A at 2.5Gbps.  The way
it is handled on these platforms is via the COMPHY, requesting that
the serdes is upclocked from 1.25Gbps to 3.125Gbps.

This "DRSGMII" mode is not mentioned in the functional specs for either
the Armada 388 or Armada 3720, the value you poke into the register is
not mentioned either.  As I've already requested, some information on
exactly what this "DRSGMII" is would be very useful, it can't be
"double-rate SGMII" because that would give you 2Gbps instead of 1Gbps.

So, I suspect this breaks the platforms that are known to work.

We need a proper description of what DRSGMII is before we can consider
taking any patches for it.

So, sorry, but NAK.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
