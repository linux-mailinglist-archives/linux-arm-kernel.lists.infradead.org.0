Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC0D4C3C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 00:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPmzhkTYAYfD+KLTWc5Rfd5rifcmjQYColbLND1h32A=; b=YY8nIVJzijxQcP
	JWIXOy2cDF3bBTrNNGhA5fJsqa+Ohff5psDtA08wZAKerzWlaDNllFu1C2QyBW0WEOoXrkfNTtvGZ
	vlu9GdSLYnoPtT/QVAiIsg6oa/JyhXZ8QqyWcsefErMMNwb1gcVIsBRMDEUihHVDisdWVhs15Mrpl
	sQ73yAwxV5qgTQJscAFISayTPWHhBlqcTCBHySsnle+wHQ4NxeqfL0BEMPgQ1vFdZOFaqck7XuSvm
	C2IQMgTNiW8L69aeuUUDAwGT1RmEO6Zfz6rC/RzdcxlOCUeR8ccIeWcHAiAZNoI114ORho0GmhEVh
	wfc/0nYiKGXa68jzH/Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdjDG-0007Up-9z; Wed, 19 Jun 2019 22:37:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdjD4-0007UJ-Af
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 22:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zcjS/s18VUk5NHxgGMeMZs6YK3QGGN5Y/fE+tjcEGRg=; b=JwJefaxTEVttzT/PqzqdqZKWI
 HbRZGtMRQTaaktYIylLLJQqotSFoPEc4vgrV4ZMtN2BwFcr4HQuq4C+QWMcPzxIG2egW1g5accdwD
 X458YE3Lm8w9Rj11wtIwgdPddJ6QYpiaUYRFpN11DC132Y2c6/nWQ4IV8pKRfP1UOVcqpYemr2McV
 F37X0yPuPPhhxGTeMfPL+RBND/If5+Roi3pfmGvDBy9D3lspD8MGAsGg+fVnju689Om9P5JBoXw1u
 cwgIQOnYnHoNQhIEjUElzTDo6Pdpz4VOY213yDK5v3sCognzz8kciDfnjErtUdv8liMzYN8pMSEWi
 TIuD45uuA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:58918)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hdjCq-0003CH-GQ; Wed, 19 Jun 2019 23:37:28 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hdjCp-0001mj-Fw; Wed, 19 Jun 2019 23:37:27 +0100
Date: Wed, 19 Jun 2019 23:37:27 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som: fix AR8035 phy interface mode
Message-ID: <20190619223727.zgfypqxg7bpxtduh@shell.armlinux.org.uk>
References: <E1hdjBO-0007Yt-9M@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1hdjBO-0007Yt-9M@rmk-PC.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_153742_365248_DB478B4F 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 11:35:58PM +0100, Russell King wrote:
> A change to the AT803x driver fixed the handling of the phy interface
> mode, but this breaks all platforms that use "rgmii" as the mode in
> their DT.  Fix the Solidrun platforms.
> 
> Fixes: 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Note that without this, SolidRun Hummingboard and Cubox-i platforms
have no working ethernet with at least 5.1 kernels, which is a
regression.

> ---
>  arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> index 4ccb7afc4b35..6d7f6b9035bc 100644
> --- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
> @@ -53,7 +53,7 @@
>  &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
> -	phy-mode = "rgmii";
> +	phy-mode = "rgmii-id";
>  	phy-reset-duration = <2>;
>  	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
>  	status = "okay";
> -- 
> 2.7.4
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
