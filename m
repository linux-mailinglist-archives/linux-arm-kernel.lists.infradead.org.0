Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144ABCE1D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFWiwYoqSYp5kX/o1oMiUNxeFQfQu+MUDiv20HKuDEc=; b=Mz+RWZxoi2IH4X
	f41xg9kqkwRL2YiZNjhvlb5mzXkV2XtZkpPQDV1zerLR54v95MzyYR5NVeAVhUNLZk/NYp+/iwK//
	1YZWRfhWxu6EECxklgc4sb1AXp6wY/fabbXDbxMQyL7wm50ehf0m8u59GiD9XOap85D1mRSRvD0ou
	q+7w2bZQ6gsrGo7ey/7Q+A5scjIk1jAgneWZRNJNku/EBzEH9U27szv5jkzxe5ZO1s2Ei7kZ1mKvz
	qxUbnX5+nnBiGEfUx/gh/iXimDd+KURYzHLlDhCZjyVBDn/MPL7NhIr10QbID7kWh8n++oZVDQ3a1
	ChVEDlVJ4lMzMneZgUlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSF1-0001Qu-Pn; Mon, 07 Oct 2019 12:35:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSEq-0001QF-Q4
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:35:46 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CD50206C0;
 Mon,  7 Oct 2019 12:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570451744;
 bh=G7bPx9GFN1xcIq71rEDntHAC9rEEeUdtSJm31epRpNc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HHXEvMMPGUIpAl6s1plLNDIIYy0bV2EVRCg4UM5/eMhM19KfB/F+Ev1kAwvho+3Th
 5ATB6FR8DTeQegelhxD7bvB6tD5/ZBLVke2SvxaEEBTusyNPP4PNorJ4BfKS91wixu
 8X2LI5HOR3KRxB9whHwVg/AQWbPIylQGjBa/z/f4=
Date: Mon, 7 Oct 2019 20:35:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Wen He <wen.he_1@nxp.com>
Subject: Re: [v2 2/2] arm64: dts: ls1028a: Update the DT node definition for
 dpclk
Message-ID: <20191007123512.GM7150@dragon>
References: <20190920083419.5092-1-wen.he_1@nxp.com>
 <20190920083419.5092-2-wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920083419.5092-2-wen.he_1@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_053544_861886_9B14FC2B 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linux-devel@linux.nxdi.nxp.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 04:34:19PM +0800, Wen He wrote:
> Update DT node name clock-controller to clock-display,

The node name clock-controller is so good, and I do not understand why
you need to change it.

Shawn

> also change
> the property #clock-cells value to zero.
> 
> This update according the feedback of the Display output interface
> clock driver upstream.
> 
> Link: https://lore.kernel.org/patchwork/patch/1113832/
> Signed-off-by: Wen He <wen.he_1@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 51fa8f57fdac..db1e186352d8 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -79,10 +79,10 @@
>  		clock-output-names = "phy_27m";
>  	};
>  
> -	dpclk: clock-controller@f1f0000 {
> +	dpclk: clock-display@f1f0000 {
>  		compatible = "fsl,ls1028a-plldig";
>  		reg = <0x0 0xf1f0000 0x0 0xffff>;
> -		#clock-cells = <1>;
> +		#clock-cells = <0>;
>  		clocks = <&osc_27m>;
>  	};
>  
> @@ -665,7 +665,7 @@
>  		interrupts = <0 222 IRQ_TYPE_LEVEL_HIGH>,
>  			     <0 223 IRQ_TYPE_LEVEL_HIGH>;
>  		interrupt-names = "DE", "SE";
> -		clocks = <&dpclk 0>, <&clockgen 2 2>, <&clockgen 2 2>,
> +		clocks = <&dpclk>, <&clockgen 2 2>, <&clockgen 2 2>,
>  			 <&clockgen 2 2>;
>  		clock-names = "pxlclk", "mclk", "aclk", "pclk";
>  		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
