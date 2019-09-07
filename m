Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14922AC45E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 06:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6wat+gmdAgeexMCZFxnPvAfeYRFpz80J9w4YsOY1mg=; b=Bb6zkb6CMjTLy7
	oT+dltjEcOXZK2Dg+bHIzXCiN2md3Sbts4cTsBir5YEEOGrug7vpnldTDDyYm4NM3VB5k+lLoc7kp
	JQ0D8F55XcgvIXVDxzdrPsxhiRLkOXC2izb9kovZFMP3HRIDne4nNxlhKYVneguxYDD5B2Xp9vXO9
	2soBeLXQ1RMPKj0VisRFWAd1B3oMl20Jw9+sz4xPkuDmKujQ/OyWiwEAVdV3vBmj/Ccx4TBemqRKq
	wZlgKPzRZEx0n0rqScn2jg+pKHZTCJXk1LZ+uJH7sZtWpMec5ppgEpzpd3CKbsyXY+sjTuc2qbUyd
	XheAe7e0zbhH+hdKWwcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6RwR-0002fS-IW; Sat, 07 Sep 2019 04:03:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Rw9-0002ej-P1
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 04:02:59 +0000
Received: from localhost (unknown [194.251.198.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 177AC2070C;
 Sat,  7 Sep 2019 04:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567828977;
 bh=CjINuml9UxAP0qN7dHMpgYpIBxRwXhCC6jmEFQQUui8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oYC2x5SNwswZNQg1lRXCmqOAZVnPe69GgoapbAVF+CfbbkzbSEuID5wlb8Gg3a13y
 MDnNo9ayhtyIkuYw+IZEOoijpZi6/EiX/pu9pCTWp5Enh/A/tldyLDQOc/JzN0e1Lm
 TuiPPzIGXrwolB2VBNo+ui4UAO43D1fStK6aGhsg=
Date: Sat, 7 Sep 2019 07:02:54 +0300
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 6/9] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on A64
Message-ID: <20190907040254.5ecohywqbekokwfx@flea>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-7-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906184551.17858-7-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_210257_830775_FF1811A8 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 08:45:48PM +0200, Corentin Labbe wrote:
> The Crypto Engine is a hardware cryptographic accelerator that supports
> many algorithms.
> It could be found on most Allwinner SoCs.
>
> This patch enables the Crypto Engine on the Allwinner A64 SoC Device-tree.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 69128a6dfc46..c9e30d462ab1 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -487,6 +487,17 @@
>  			reg = <0x1c14000 0x400>;
>  		};
>
> +		crypto: crypto@1c15000 {
> +			compatible = "allwinner,sun50i-a64-crypto";
> +			reg = <0x01c15000 0x1000>;
> +			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "ce_ns";

You didn't document that property

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
