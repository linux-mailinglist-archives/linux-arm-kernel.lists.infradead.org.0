Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4326217A7ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tryJCSDXeGBmy/Dme8TXPzpQ8HkhYbOT78HkzRqwnXY=; b=ZJjrT4ug7T0OO6
	5mU0p5jDTrzNsqQkZbtPVZnDwEJ/bvtOpHSZ6P9tErFZMkaODAyLFR8nBvHFq+6CUZnewMG04Vfpv
	Pa/WN+Ln75XQoZFMCnjUBpjYudgJ4arhUkNXzZ+WxqfJ/NIN4dYU9tPu3qywBW49ABQqOid8L9QU/
	/NHgUPslLIFEttQBlJm1bhT5Oe0QuNRFSRXhoi1dnNnL/0nIc1wgngp+0h8i1TQTJLn99HeGLItqy
	AWY9e/XwDN2TtrD3chStHt1SAyLzpZ+IcPKlviMOJIqTz6aBdTEBAHpJB3P68rXfrSfsDlLALJhCG
	l2MfUFEdPJFunfjta8/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9reg-000467-48; Thu, 05 Mar 2020 14:39:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rdf-0003N9-Kz
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 14:38:17 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1j9rdY-0001EN-Iq; Thu, 05 Mar 2020 15:38:08 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1j9rdV-000208-Sz; Thu, 05 Mar 2020 15:38:05 +0100
Date: Thu, 5 Mar 2020 15:38:05 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Message-ID: <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305134928.19775-1-philippe.schenker@toradex.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:27:00 up 111 days,  5:45, 138 users,  load average: 0.18, 0.14,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_063815_701715_74433A8E 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Allison Randal <allison@lohutok.net>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philippe,

On Thu, Mar 05, 2020 at 02:49:28PM +0100, Philippe Schenker wrote:
> The MAC of the i.MX6 SoC is compliant with RGMII v1.3. The KSZ9131 PHY
> is like KSZ9031 adhering to RGMII v2.0 specification. This means the
> MAC should provide a delay to the TXC line. Because the i.MX6 MAC does
> not provide this delay this has to be done in the PHY.
> 
> This patch adds by default ~1.6ns delay to the TXC line. This should
> be good for all boards that have the RGMII signals routed with the
> same length.
> 
> The KSZ9131 has relatively high tolerances on skew registers from
> MMD 2.4 to MMD 2.8. Therefore the new DLL-based delay of 2ns is used
> and then as little as possibly subtracted from that so we get more
> accurate delay. This is actually needed because the i.MX6 SoC has
> an asynchron skew on TXC from -100ps to 900ps, to get all RGMII
> values within spec.

This configuration has nothing to do in mach-imx/* It belongs to the
board devicetree. Please see DT binding documentation for needed
properties:
Documentation/devicetree/bindings/net/micrel-ksz90x1.txt

All of this mach-imx fixups are evil and should be removed or disabled by Kconfig
option. Since they will run on all i.MX based boards even if this PHY are
connected to some switch and not connected to the FEC directly.
And.. If driver didn't made this configuration all this changes will be lost on
suspend/resume cycle or on PHY reset.

Regards,
Oleksij

> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> 
> ---
> 
>  arch/arm/mach-imx/mach-imx6q.c | 37 ++++++++++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
> index edd26e0ffeec..8ae5f2fa33e2 100644
> --- a/arch/arm/mach-imx/mach-imx6q.c
> +++ b/arch/arm/mach-imx/mach-imx6q.c
> @@ -61,6 +61,14 @@ static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
>  	phy_write(dev, 0x0e, val);
>  }
>  
> +static int mmd_read_reg(struct phy_device *dev, int device, int reg)
> +{
> +	phy_write(dev, 0x0d, device);
> +	phy_write(dev, 0x0e, reg);
> +	phy_write(dev, 0x0d, (1 << 14) | device);
> +	return phy_read(dev, 0x0e);
> +}
> +
>  static int ksz9031rn_phy_fixup(struct phy_device *dev)
>  {
>  	/*
> @@ -74,6 +82,33 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
>  	return 0;
>  }
>  
> +#define KSZ9131_RXTXDLL_BYPASS	12
> +
> +static int ksz9131rn_phy_fixup(struct phy_device *dev)
> +{
> +	int tmp;
> +
> +	tmp = mmd_read_reg(dev, 2, 0x4c);
> +	/* disable rxdll bypass (enable 2ns skew delay on RXC) */
> +	tmp &= ~(1 << KSZ9131_RXTXDLL_BYPASS);
> +	mmd_write_reg(dev, 2, 0x4c, tmp);
> +
> +	tmp = mmd_read_reg(dev, 2, 0x4d);
> +	/* disable txdll bypass (enable 2ns skew delay on TXC) */
> +	tmp &= ~(1 << KSZ9131_RXTXDLL_BYPASS);
> +	mmd_write_reg(dev, 2, 0x4d, tmp);
> +
> +	/*
> +	 * Subtract ~0.6ns from txdll = ~1.4ns delay.
> +	 * leave RXC path untouched
> +	 */
> +	mmd_write_reg(dev, 2, 4, 0x007d);
> +	mmd_write_reg(dev, 2, 6, 0xdddd);
> +	mmd_write_reg(dev, 2, 8, 0x0007);
> +
> +	return 0;
> +}
> +
>  /*
>   * fixup for PLX PEX8909 bridge to configure GPIO1-7 as output High
>   * as they are used for slots1-7 PERST#
> @@ -167,6 +202,8 @@ static void __init imx6q_enet_phy_init(void)
>  				ksz9021rn_phy_fixup);
>  		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
>  				ksz9031rn_phy_fixup);
> +		phy_register_fixup_for_uid(PHY_ID_KSZ9131, MICREL_PHY_ID_MASK,
> +				ksz9131rn_phy_fixup);
>  		phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffef,
>  				ar8031_phy_fixup);
>  		phy_register_fixup_for_uid(PHY_ID_AR8035, 0xffffffef,
> -- 
> 2.25.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
