Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CA890156
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVX6cEvvJdgEQ34f0cAqDsjlPrOFMr/KFO5uk/DGUQo=; b=DflSizQX5cGVQ/
	j2urb13yIVpc7RUmiqcBNSWe8fVd81AFY6D7TjyJWegLpR2oOT3V49HKVYJCuvdNqUCNAJ9DtR7Z8
	Jz0V5nPH7ehWj9aTjz+QvcvFCimuYQ1QnLXLqIe0lYXFBwoR1TGbMictuOCpcq4B/2V4L3pq7x9Gf
	QAh5s8VV1nXktK3mS/HqoLYNhLE6TVFXbVw9At/69HeW49qHMqN047YB9w2trZUin1RCLtWB7FOAn
	DrSeUdVpKWMhOuKC4rJmvs0YCeV8AdUHvwQNW8sM2W0f4PvYcqwBhEEOuD+xvaJqdP2+eaHeaZ0d2
	Gpu52WITSPnYULUvNpEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybHs-0004F6-QY; Fri, 16 Aug 2019 12:24:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hybHa-0004E3-QX; Fri, 16 Aug 2019 12:24:40 +0000
Received: from [88.128.80.55] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hybHM-0000UE-Ke; Fri, 16 Aug 2019 14:24:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2] arm: dts: rockchip: fix vcc_host_5v regulator for usb3
 host
Date: Fri, 16 Aug 2019 14:24:06 +0200
Message-ID: <2932927.UJgUFA1Pmh@phil>
In-Reply-To: <20190815081252.27405-1-kever.yang@rock-chips.com>
References: <20190815081252.27405-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052439_005886_01B5B14C 
X-CRM114-Status: GOOD (  16.28  )
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
 Jonas Karlman <jonas@kwiboo.se>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Tomohiro Mayama <parly-gh@iris.mystia.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kever, TL,

[added TL Lim for clarification]

Am Donnerstag, 15. August 2019, 10:12:52 CEST schrieb Kever Yang:
> According to rock64 schemetic V2 and V3, the VCC_HOST_5V output is
> controlled by USB_20_HOST_DRV, which is the same as VCC_HOST1_5V.

The v1 schematics I have do reference the GPIO0_A0 as controlling this
supply, so the big question would be how to handle the different versions.

Because adding this would probably break v1 boards in this function.

@TL: where v1 boards also sold or were they only used during development?
If this were the case, we could just apply the patch, not caring about
v1 boards, but if v1 boards were also sold to customers there would be
more of a problem.

Thanks
Heiko


> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2:
> - remove enable-active-high property
> 
>  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 7cfd5ca6cc85..62936b432f9a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -34,10 +34,9 @@
>  
>  	vcc_host_5v: vcc-host-5v-regulator {
>  		compatible = "regulator-fixed";
> -		enable-active-high;
> -		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&usb30_host_drv>;
> +		pinctrl-0 = <&usb20_host_drv>;
>  		regulator-name = "vcc_host_5v";
>  		regulator-always-on;
>  		regulator-boot-on;
> @@ -320,12 +319,6 @@
>  			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> -
> -	usb3 {
> -		usb30_host_drv: usb30-host-drv {
> -			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
>  };
>  
>  &sdmmc {
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
