Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A4B10EE84
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 18:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lx2hk50d39DFOJsX4raJaz+8G7RTYY8lDMKczo4OEyo=; b=F5Ng8WDB2PheuQ
	b8JP9bQpPaGS41RMo86W84uefe15tq7IjRB6x6+w0TjJwMUkLPCF+5DDoaNJ6wdJSkdNg6PQwpzHr
	kQt1z1WhhnI8m/XLvbSw60ILd92CGEQtBWjaeDcT+wFvICLstN9I6o+2P7AQ27O03eHyjVt2rTZv9
	F69+i0yxRRjTg0vQsXuPGtnAVYJe2uwb/vDLE8m1Iv989/g5yVzVii7U/U3PsqSB7bCh997B9L4uB
	VofG0N6S790+hpo6Kjdtuah5TeY45v5fqfR0vQJOf1wv56TMWOuUnPWnRuEB1HM52NQtZtxRl7NmC
	5Mr68i1bbb/cg8KXcA+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibpcc-00065y-Hh; Mon, 02 Dec 2019 17:36:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibpcT-000655-B6; Mon, 02 Dec 2019 17:36:23 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ibpcL-000569-TZ; Mon, 02 Dec 2019 18:36:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix IOMMU second clock name
Date: Mon, 02 Dec 2019 18:36:13 +0100
Message-ID: <2612427.5nXUCueWBK@diego>
In-Reply-To: <20191202170028.26169-1-miquel.raynal@bootlin.com>
References: <20191202170028.26169-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_093621_534125_ED47C93E 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Miquel,

Am Montag, 2. Dezember 2019, 18:00:28 CET schrieb Miquel Raynal:
> By precedence, both the IOMMU driver and the bindings in the doc
> impose two clocks to be filled in Rockchip device trees featuring an
> IOMMU:
> * The AXI clock called 'aclk'.
> * The main peripheral bus clock (PCLK/HCL) called 'iface'.
> 
> Currently, the second clock in px30.dtsi is called 'hclk' and this
> produces the following errors at boot:
> 
>         rk_iommu ff460f00.iommu: Failed to get clk 'iface': -2
>         rk_iommu ff470f00.iommu: Failed to get clk 'iface': -2
> 
> Fix the PX30 device tree by renaming the second misnamed clock. The
> issue has not been reported before probably because the clk_get() call
> is optional for backward DT compatibility reasons.
> 
> Fixes: 7053e06b1422 ("arm64: dts: rockchip: add core dtsi file for PX30 SoCs")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

A similar for that issue is already on its way into mainline for 5.5:
https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git/commit/?h=for-next&id=8e57eed2047b9361deb8c5dc4cc3d4e679c5ce50

Heiko


> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index eb992d60e6ba..1fd12bd09e83 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -831,7 +831,7 @@
>  		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
>  		interrupt-names = "vopb_mmu";
>  		clocks = <&cru ACLK_VOPB>, <&cru HCLK_VOPB>;
> -		clock-names = "aclk", "hclk";
> +		clock-names = "aclk", "iface";
>  		power-domains = <&power PX30_PD_VO>;
>  		#iommu-cells = <0>;
>  		status = "disabled";
> @@ -863,7 +863,7 @@
>  		interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
>  		interrupt-names = "vopl_mmu";
>  		clocks = <&cru ACLK_VOPL>, <&cru HCLK_VOPL>;
> -		clock-names = "aclk", "hclk";
> +		clock-names = "aclk", "iface";
>  		power-domains = <&power PX30_PD_VO>;
>  		#iommu-cells = <0>;
>  		status = "disabled";
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
