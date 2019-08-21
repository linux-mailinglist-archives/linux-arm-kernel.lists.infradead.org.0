Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C65797576
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnzRV4JNVBtGaHtSvbG91HQdBQUb7yPe3hSCFvtgQHU=; b=IVJpGCMMolX6he
	D3VQFPAOVdstOmiwpZOd/QRXGStieMjI+KWbZcvbxpaRKYfdqOkza3dy4tAfOWyGUkC2Az7pSAxHW
	KlXNTy0I9JT6y3LTdpyd0FTYbrUGCYrxdP3QdafiPB5VRYoryhdVvRJysf4QH5auczAhs3tspiv6T
	Y5714tWMB2uIeo0HioukBVzkaA2kX4+cCXFliRdUrlesrsvaxqJ3KVjaucN5ili6lMOHBag2H16BU
	EgBV/XQ5dZ/CG5CkX0f0lkhk4ReYpdf+jozrfM2NiuPKi2XBS1rYdoN3xhUkgOwn0tOMTX0UnR+He
	FvlrHI9Dianu3ohJ467g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MRb-00027j-2d; Wed, 21 Aug 2019 08:58:15 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MQc-00027M-Qo
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:57:16 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id ABD3225B7C7;
 Wed, 21 Aug 2019 18:57:13 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 8FF6F9405AE; Wed, 21 Aug 2019 10:57:11 +0200 (CEST)
Date: Wed, 21 Aug 2019 10:57:11 +0200
From: Simon Horman <horms@verge.net.au>
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7796: sort nodes
Message-ID: <20190821085710.ywva3oz733hxagnc@verge.net.au>
References: <1566219378-23126-1-git-send-email-ykaneko0929@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566219378-23126-1-git-send-email-ykaneko0929@gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_015715_229231_F819C34E 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 09:56:18PM +0900, Yoshihiro Kaneko wrote:
> Sort nodes.
> 
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
> 
> This should not have any run-time effect.
> 
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Sorry, I feel that I have missed this in other review's too,
but, isn't canfd out of order. Its bus address seems to place it
before dmac0. Or do we prefer to keep it grouped with the can nodes?

The above notwithstanding,

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

> ---
> 
> This patch is based on the master branch of Geert Uytterhoeven's renesas-devel
> tree.
> 
>  arch/arm64/boot/dts/renesas/r8a7796.dtsi | 152 +++++++++++++++----------------
>  1 file changed, 76 insertions(+), 76 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a7796.dtsi b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
> index 26df5b8..3dc9d73 100644
> --- a/arch/arm64/boot/dts/renesas/r8a7796.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
> @@ -1833,6 +1833,17 @@
>  				      "ssi.1", "ssi.0";
>  			status = "disabled";
>  
> +			rcar_sound,ctu {
> +				ctu00: ctu-0 { };
> +				ctu01: ctu-1 { };
> +				ctu02: ctu-2 { };
> +				ctu03: ctu-3 { };
> +				ctu10: ctu-4 { };
> +				ctu11: ctu-5 { };
> +				ctu12: ctu-6 { };
> +				ctu13: ctu-7 { };
> +			};
> +
>  			rcar_sound,dvc {
>  				dvc0: dvc-0 {
>  					dmas = <&audma1 0xbc>;
> @@ -1849,17 +1860,6 @@
>  				mix1: mix-1 { };
>  			};
>  
> -			rcar_sound,ctu {
> -				ctu00: ctu-0 { };
> -				ctu01: ctu-1 { };
> -				ctu02: ctu-2 { };
> -				ctu03: ctu-3 { };
> -				ctu10: ctu-4 { };
> -				ctu11: ctu-5 { };
> -				ctu12: ctu-6 { };
> -				ctu13: ctu-7 { };
> -			};
> -
>  			rcar_sound,src {
>  				src0: src-0 {
>  					interrupts = <GIC_SPI 352 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1913,6 +1913,59 @@
>  				};
>  			};
>  
> +			rcar_sound,ssi {
> +				ssi0: ssi-0 {
> +					interrupts = <GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x01>, <&audma1 0x02>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi1: ssi-1 {
> +					interrupts = <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x03>, <&audma1 0x04>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi2: ssi-2 {
> +					interrupts = <GIC_SPI 372 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x05>, <&audma1 0x06>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi3: ssi-3 {
> +					interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x07>, <&audma1 0x08>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi4: ssi-4 {
> +					interrupts = <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x09>, <&audma1 0x0a>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi5: ssi-5 {
> +					interrupts = <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x0b>, <&audma1 0x0c>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi6: ssi-6 {
> +					interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x0d>, <&audma1 0x0e>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi7: ssi-7 {
> +					interrupts = <GIC_SPI 377 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x0f>, <&audma1 0x10>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi8: ssi-8 {
> +					interrupts = <GIC_SPI 378 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x11>, <&audma1 0x12>;
> +					dma-names = "rx", "tx";
> +				};
> +				ssi9: ssi-9 {
> +					interrupts = <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>;
> +					dmas = <&audma0 0x13>, <&audma1 0x14>;
> +					dma-names = "rx", "tx";
> +				};
> +			};
> +
>  			rcar_sound,ssiu {
>  				ssiu00: ssiu-0 {
>  					dmas = <&audma0 0x15>, <&audma1 0x16>;
> @@ -2123,59 +2176,6 @@
>  					dma-names = "rx", "tx";
>  				};
>  			};
> -
> -			rcar_sound,ssi {
> -				ssi0: ssi-0 {
> -					interrupts = <GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x01>, <&audma1 0x02>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi1: ssi-1 {
> -					interrupts = <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x03>, <&audma1 0x04>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi2: ssi-2 {
> -					interrupts = <GIC_SPI 372 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x05>, <&audma1 0x06>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi3: ssi-3 {
> -					interrupts = <GIC_SPI 373 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x07>, <&audma1 0x08>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi4: ssi-4 {
> -					interrupts = <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x09>, <&audma1 0x0a>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi5: ssi-5 {
> -					interrupts = <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x0b>, <&audma1 0x0c>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi6: ssi-6 {
> -					interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x0d>, <&audma1 0x0e>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi7: ssi-7 {
> -					interrupts = <GIC_SPI 377 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x0f>, <&audma1 0x10>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi8: ssi-8 {
> -					interrupts = <GIC_SPI 378 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x11>, <&audma1 0x12>;
> -					dma-names = "rx", "tx";
> -				};
> -				ssi9: ssi-9 {
> -					interrupts = <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>;
> -					dmas = <&audma0 0x13>, <&audma1 0x14>;
> -					dma-names = "rx", "tx";
> -				};
> -			};
>  		};
>  
>  		audma0: dma-controller@ec700000 {
> @@ -2860,6 +2860,18 @@
>  			thermal-sensors = <&tsc 2>;
>  			sustainable-power = <3874>;
>  
> +			cooling-maps {
> +				map0 {
> +					trip = <&target>;
> +					cooling-device = <&a57_0 2 4>;
> +					contribution = <1024>;
> +				};
> +				map1 {
> +					trip = <&target>;
> +					cooling-device = <&a53_0 0 2>;
> +					contribution = <1024>;
> +				};
> +			};
>  			trips {
>  				target: trip-point1 {
>  					temperature = <100000>;
> @@ -2873,18 +2885,6 @@
>  					type = "critical";
>  				};
>  			};
> -			cooling-maps {
> -				map0 {
> -					trip = <&target>;
> -					cooling-device = <&a57_0 2 4>;
> -					contribution = <1024>;
> -				};
> -				map1 {
> -					trip = <&target>;
> -					cooling-device = <&a53_0 0 2>;
> -					contribution = <1024>;
> -				};
> -			};
>  		};
>  	};
>  
> -- 
> 1.9.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
