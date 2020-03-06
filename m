Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C09917BF33
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 14:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeVF0d1o+uqdmPDpz5djescgnOEirR+ftkPaNmlZ1yM=; b=FgcIf5NvGkixyC
	P37p6sb37p7ZDNPBOkRCch1Vkx6IF1OuZ2sF4i1L+VrPSXlldjqKiOCw45QjgXoCc5hQCbflTtE4N
	tDB4k4yrNFuM0+mLY//RDH+KOdEGj4pbKw8tWTvSbPTuWtp8j5lA7UG/OtzMZiqo2lZ4iVMk0F/Bc
	IS6QL1F4lY8FOEP50lwU/EnaRZqGBRu5EZl/NX2mbK1EzkIa0sMPWOSuIAUjji/AUcNu7qEnewuhd
	BIRkJNLpJc/9UnJsqLao/i9re5LTNHpM5q+3fEx0CVj5Q8uT/edAYjnYny52mjZjyKytjBauCPOvz
	0/vjDICnR3fHxNpT8DiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jADCK-00033w-3x; Fri, 06 Mar 2020 13:39:28 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jADC1-0002xi-ST
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 13:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SMdbthzv3TX7S1U2DSWTkquAEKDYnwquXKKkz97UBdo=; b=mVevxdRoYevK+SpcVyNNWfMuUt
 c/62GzTNWFUryEFoFm1VRfCjAZeAz86XA44dOrcJ5d4Gsdvo6NZSGvmMQVMa3NxHCg415gFTS5QdN
 5+bK1tJ2mwZm+W300PDhoQm4TI95F+rx+yKfcYBq8SH5mV7c5IpflwvPMSc6eI8Ic9So=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jADBg-00051y-7e; Fri, 06 Mar 2020 14:38:48 +0100
Date: Fri, 6 Mar 2020 14:38:48 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Message-ID: <20200306133848.GB18310@lunn.ch>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
 <20200305165145.GA25183@lunn.ch>
 <7191ffe6-642a-477c-ec37-e37dc9be4bf8@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7191ffe6-642a-477c-ec37-e37dc9be4bf8@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_053909_959357_3570251E 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > It probably does not even need that. Just
> > 
> > phy-mode = <rgmii-txid>
> 
> Looks to me like this isn't supported by the Micrel PHY driver or am
> I missing something?

Ah, you are correct. It just has:

        if (of_node) {
                ksz9021_load_values_from_of(phydev, of_node,
                                    MII_KSZPHY_CLK_CONTROL_PAD_SKEW,
                                    "txen-skew-ps", "txc-skew-ps",
                                    "rxdv-skew-ps", "rxc-skew-ps");
                ksz9021_load_values_from_of(phydev, of_node,
                                    MII_KSZPHY_RX_DATA_PAD_SKEW,
                                    "rxd0-skew-ps", "rxd1-skew-ps",
                                    "rxd2-skew-ps", "rxd3-skew-ps");
                ksz9021_load_values_from_of(phydev, of_node,
                                    MII_KSZPHY_TX_DATA_PAD_SKEW,
                                    "txd0-skew-ps", "txd1-skew-ps",
                                    "txd2-skew-ps", "txd3-skew-ps");
        }

and no support for phydev->interface.

At minimum, you should use these DT properties, not a platform fixup.

If you want to, you can add support for rgmii-id, etc. There are five
modes you need to support:

        PHY_INTERFACE_MODE_NA,
        PHY_INTERFACE_MODE_RGMII,
        PHY_INTERFACE_MODE_RGMII_ID,
        PHY_INTERFACE_MODE_RGMII_RXID,
        PHY_INTERFACE_MODE_RGMII_TXID,

NA means "don't touch". Leave the RGMII delays alone, as configured by
hardware default, strapping, bootloader, etc.

	 Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
