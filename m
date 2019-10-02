Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D395C492D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 10:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w078iRP9BXyAkS5jLxT6UjHowigQYzvs6+Ai9z7YCIg=; b=oX4ULpPV02UzkP
	lIGoxwGuwh7zFgboBnAE8Dp5rQt5FjEtLJvVFf8Icc3sCzgBHIybAyRjwTQRpFtuRpUDR+MpGNvEg
	0QhoDeFaBsHu/7cSB0dEFiluoLihF+QM468QdBYJz991qOWGBIot0Oy0mPDM4XsyPnnunVfKDk+AR
	We7oBY9wPURkqCv295rXaG9AQR795AdqBLuz92SMDo8U+kglcQLOHXF78dv6MFqyFeETEjwptZcUw
	/b0fM/crje+dWKR4mgHO4G2n2XFPeG9/H058xX5sQ7IYMeRt9ZTeXlqf0+ejeY7wIGYvx/F/Ogr0i
	J9dkmJJnd/MT2YIE+5Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFZgf-0000P6-4M; Wed, 02 Oct 2019 08:08:41 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZgX-0000O1-OT
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 08:08:35 +0000
Received: from plaes.org (localhost [127.0.0.1])
 by plaes.org (Postfix) with ESMTPSA id ECE53403D6;
 Wed,  2 Oct 2019 08:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1570003709; bh=r7FM+ChyBVkd7WScYrRkPVi3YYirvvd/P+0kYWXf3zc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oAgy6LI7VH5imQ5NWv+1B9z1JsIT4BpA66mpgfglyXxY030499lSUVR3wRdUOKGze
 3VXmnDPv3yXb7uvEkS7H3AZ8hoKC2vxS9KAdLo/DY+ZI/9pZIPMbW42IPmxP+W38gq
 YJ3I+f9rJ2k1NkgPvxksz5dbTzXEq1PpOHF7Tb2kqzA2NcZ7Is/v6kvku4FDcypDgj
 z9SD3W320tPP6KuUJl2N0Ops9mwp/SpWBQxi1xojJMDQIcYmLEM9yNbcpWRNSRt2iu
 XCHV0r/EYZfVnXbgwWge+ucQmKlhe0I1aSin6ngB1rUsh7uQKQvLZCM7LuWz38w/6O
 YY3jwmY1fUb8A==
Date: Wed, 2 Oct 2019 08:08:27 +0000
From: Priit Laes <plaes@plaes.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2 04/11] ARM: dts: sun8i: R40: add crypto
 engine node
Message-ID: <20191002080827.GB6347@plaes.org>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
 <20191001184141.27956-5-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001184141.27956-5-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_010833_935678_EB1DD5AD 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk, mripard@kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 08:41:34PM +0200, Corentin Labbe wrote:
> The Crypto Engine is a hardware cryptographic offloader that supports
> many algorithms.
> It could be found on most Allwinner SoCs.
> 
> This patch enables the Crypto Engine on the Allwinner R40 SoC Device-tree.
> 
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  arch/arm/boot/dts/sun8i-r40.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index bde068111b85..1fc3297a55ec 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -266,6 +266,16 @@
>  			#phy-cells = <1>;
>  		};
>  
> +		crypto: crypto-engine@1c15000 {

All the other .dtsi files have `crypto: crypto@...` instead of crypto-engine.

> +			compatible = "allwinner,sun8i-r40-crypto";
> +			reg = <0x01c15000 0x1000>;
> +			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
> +			clock-names = "bus", "mod";
> +			resets = <&ccu RST_BUS_CE>;
> +			reset-names = "bus";
> +		};
> +
>  		ehci1: usb@1c19000 {
>  			compatible = "allwinner,sun8i-r40-ehci", "generic-ehci";
>  			reg = <0x01c19000 0x100>;
> -- 
> 2.21.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/20191001184141.27956-5-clabbe.montjoie%40gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
