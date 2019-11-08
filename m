Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0953F4E31
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhLyI9iTMY+ooVXvsC5vyOxoHksUHwuvXtLL4Q/C0vU=; b=ctfjjw5IhKR/X1
	bhIYzoWCEKANlOo68cB3m05arKIcti5T3bklBTGFdiaWQomMGPq4aL+jAoNEtnpL9PsweaV4eY7mj
	F+kVh+BM2fXqqiV5aORJLYFQkX16ZqPaTavJ50UXD+Fsd827TnfzDJ9zxWmu5pW8AjUuJym6COs1I
	31u/Wtu1grxhK8axGZpwErS7aMFJMHSJlY1SR0/FNbecxQfIrB4arDUpXAZKOpRS5uiVX3yeIzdY1
	6vlW6AmNTKA2E7R76mym4pQ8FzDFo9EHFmLJ25kGygkaTy1nUYD9cpGGSBCktDGLM6vUOAIgQevrc
	LMsZu7pSxXRBA7Dm0AOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5LU-0002eQ-3K; Fri, 08 Nov 2019 14:34:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5LK-0002dp-67; Fri, 08 Nov 2019 14:34:31 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iT5Kx-0001br-PV; Fri, 08 Nov 2019 15:34:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v1 2/7] arm64: dts: Use IRQ flags for legacy PCI IRQ
 interrupts
Date: Fri, 08 Nov 2019 15:34:06 +0100
Message-ID: <4293211.PqsBVBjssI@phil>
In-Reply-To: <20191104163834.8932-3-andrew.murray@arm.com>
References: <20191104163834.8932-1-andrew.murray@arm.com>
 <20191104163834.8932-3-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_063430_380108_FA5F26DE 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Liviu Dudau <liviu.dudau@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, Wei Xu <xuwei5@hisilicon.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Tsahee Zidenberg <tsahee@annapurnalabs.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>, linux-arm-msm@vger.kernel.org,
 Robert Richter <rrichter@cavium.com>, Rob Herring <robh+dt@kernel.org>,
 Jayachandran C <jnair@caviumnetworks.com>,
 linux-arm-kernel@lists.infradead.org,
 Brijesh Singh <brijeshkumar.singh@amd.com>, Li Yang <leoyang.li@nxp.com>,
 Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 4. November 2019, 17:38:16 CET schrieb Andrew Murray:
> Replace magic numbers used to describe legacy PCI IRQ interrupts
> with #define.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index cede1ad81be2..bb68826bac6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -242,11 +242,11 @@
>  			     <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH 0>,
>  			     <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH 0>;
>  		interrupt-names = "sys", "legacy", "client";
> -		interrupt-map-mask = <0 0 0 7>;
> -		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
> -				<0 0 0 2 &pcie0_intc 1>,
> -				<0 0 0 3 &pcie0_intc 2>,
> -				<0 0 0 4 &pcie0_intc 3>;
> +		interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
> +		interrupt-map = <0 0 0 IRQ_INTA &pcie0_intc 0>,
> +				<0 0 0 IRQ_INTB &pcie0_intc 1>,
> +				<0 0 0 IRQ_INTC &pcie0_intc 2>,
> +				<0 0 0 IRQ_INTD &pcie0_intc 3>;
>  		linux,pci-domain = <0>;
>  		max-link-speed = <1>;
>  		msi-map = <0x0 &its 0x0 0x1000>;

For the Rockchip part
Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
