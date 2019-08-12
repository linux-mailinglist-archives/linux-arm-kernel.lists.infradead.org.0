Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F53C8A001
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXRnM8zHbaEozD7ZH2resY65oJnbuihhih8k0WRAmp0=; b=tnmXbPIHL356J7
	pVAa8g7rQs5LerT0L/AWtc+I7M/1geAxmDDOzIRQXnGALdckjQZZBlkW0qnwIOuf0bZTWBxy19AZa
	f01aVuYcSWyEs9dRdprTkB2mX8HoiLTHrAJhBwIuEWhyi/Fm/mfTcfN0UwNh9RUbim27/pvqgjgBk
	QyLUGq62YJ3D+8WGdU7Kc0s4HRnKUeuBAVdMh6uBb8UQJZMrrGR/1HYJs8Tz5QF0R9VxN+Q1quQuW
	roMTWWxPo8TAKI1EaVhIua5GFZ/MuvuWqGtlAKUf5q5qK/Oip5jD7htWCMfZkQzIFBcpfSGk1qjjO
	FtBjQd+KDVh3yWef0ZLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxAfl-0005qY-GK; Mon, 12 Aug 2019 13:47:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAfY-0005oW-TT
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:47:30 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 980F920665;
 Mon, 12 Aug 2019 13:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565617648;
 bh=lDwE2JFlLkSjIPAZyakVJl0cY+OqVkRfz8MCjA0tf1I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cnhVXF6TBt1O/ZCoOa/JveRDnPwh9D7lHlkbIIhKRRlBBZ6LJIZFHHRn2zRJ1hLS6
 Lk5BVQ81W5nJIl78G82G8wTslaNtl1qc+bH6T0zd654x3pY/41+ZtUnE2jKvSHLLLp
 QS/B3TsU2UHKjheIZlm/wXhSyRwMmP9thb6F00/4=
Date: Mon, 12 Aug 2019 15:47:17 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Hui Song <hui.song_1@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: fix gpio nodes
Message-ID: <20190812134716.GF27041@X250>
References: <20190805065700.7601-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805065700.7601-1-hui.song_1@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_064728_974142_98D3A9B7 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 02:57:00PM +0800, Hui Song wrote:
> From: Song Hui <hui.song_1@nxp.com>
> 
> Update the nodes to include little-endian
> property to be consistent with the hardware.
> 
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

@Leo, looks good?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index aef5b06..7ccbbfc 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -277,33 +277,36 @@
>  		};
>  
>  		gpio1: gpio@2300000 {
> -			compatible = "fsl,qoriq-gpio";
> +			compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
>  			reg = <0x0 0x2300000 0x0 0x10000>;
>  			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
>  			gpio-controller;
>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
> +			little-endian;
>  		};
>  
>  		gpio2: gpio@2310000 {
> -			compatible = "fsl,qoriq-gpio";
> +			compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
>  			reg = <0x0 0x2310000 0x0 0x10000>;
>  			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
>  			gpio-controller;
>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
> +			little-endian;
>  		};
>  
>  		gpio3: gpio@2320000 {
> -			compatible = "fsl,qoriq-gpio";
> +			compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
>  			reg = <0x0 0x2320000 0x0 0x10000>;
>  			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
>  			gpio-controller;
>  			#gpio-cells = <2>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
> +			little-endian;
>  		};
>  
>  		usb0: usb@3100000 {
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
