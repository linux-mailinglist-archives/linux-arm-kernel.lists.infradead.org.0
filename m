Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F839F51B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtnhyTF2EW02E7B5pFw4nXFF4HaG4SMa7TNbnvymzkE=; b=rESNrvFEGKZlJv
	OTq4T/fai/gSjhEX7LfRCpxChKNEgFhrSR22NDh1LijviLxYuFg+nPXCI87Eh0XFFNpCH1NWlLULL
	4WcckyaKCbHvMaejLE9CIDyicRm3bBmp1OjgEy1wQMJUzFj+vKihUVJwUTGCSUZhBoiWA0O+N0Nxt
	elGPOhz9MxJ2JfCqsZz1NrsO+rdT3ua2Fdiiw/o8+fkekxlTBcTfdfRr7SVBKESzSJh1nqnC5jvpq
	kovfStWqey8EbKkKrewngIsteHibe24WeNDNMuVfmne2YY3JA55i/SSGsdX/yX52yqN7IA3oB5CEZ
	gH9D3f2erM108k7mIlFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7YX-0003JU-Lz; Fri, 08 Nov 2019 16:56:17 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7YO-0003IF-Rw
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:56:10 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 0355D80D4;
 Fri,  8 Nov 2019 16:56:33 +0000 (UTC)
Date: Fri, 8 Nov 2019 08:55:54 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v2 3/5] ARM: dts: dra7: add vpe clkctrl node
Message-ID: <20191108165554.GF5610@atomide.com>
References: <20191104203841.3628-1-bparrot@ti.com>
 <20191104203841.3628-4-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104203841.3628-4-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_085608_940220_DA5E0F81 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Benoit Parrot <bparrot@ti.com> [191104 20:39]:
> Add clkctrl nodes for VPE module.

Can you please add a comment describing that we currently need to
use custom node names here instead of the standard naming?

I can queue this and other dts change once I have an immutable clock
changes branch from Tero.

Or if Tero wants to also pick up the clock node dtsi patch I can ack it,
up to Tero.

Regards,

Tony


> Signed-off-by: Benoit Parrot <bparrot@ti.com>
> ---
>  arch/arm/boot/dts/dra7xx-clocks.dtsi | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/dra7xx-clocks.dtsi b/arch/arm/boot/dts/dra7xx-clocks.dtsi
> index 93e1eb83bed9..d1c2406ec71c 100644
> --- a/arch/arm/boot/dts/dra7xx-clocks.dtsi
> +++ b/arch/arm/boot/dts/dra7xx-clocks.dtsi
> @@ -1591,10 +1591,10 @@
>  
>  	rtc_cm: rtc-cm@700 {
>  		compatible = "ti,omap4-cm";
> -		reg = <0x700 0x100>;
> +		reg = <0x700 0x60>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> -		ranges = <0 0x700 0x100>;
> +		ranges = <0 0x700 0x60>;
>  
>  		rtc_clkctrl: rtc-clkctrl@20 {
>  			compatible = "ti,clkctrl";
> @@ -1603,6 +1603,20 @@
>  		};
>  	};
>  
> +	vpe_cm: vpe-cm@760 {
> +		compatible = "ti,omap4-cm";
> +		reg = <0x760 0xc>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x760 0xc>;
> +
> +		vpe_clkctrl: vpe-clkctrl@0 {
> +			compatible = "ti,clkctrl";
> +			reg = <0x0 0xc>;
> +			#clock-cells = <2>;
> +		};
> +	};
> +
>  };
>  
>  &cm_core {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
