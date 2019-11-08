Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771D3F51B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rd5wEd3dMqZJfgFcKn02swxu49seN/6iHkhtU3vwv7s=; b=qSJDuortrR2vZx
	rbSg0+Ug0s5kfZDtYouRGMA7LFAlB5WVVmny7+diVgsvGVbGbV4fK+JkfFB+JOdpsAdgObxcuFKw9
	m2P2UhyISqYulX3HjmisZ1Jm8hSE8T19vfHL+v21wZJFPapNvF4k8RbjX45vainp5efXWb6bUHwX7
	KNWUOPK5t9LsavoRGy2VXndSvL4uemYP9wE9tNy1hnhHkE1IOraj3ZXDxqYMWpR3cs3H3J0il08Vo
	PEBxo9K5kdzEytwyE1ZgTpx7B0jtq4HkoZD9uTiw86IT7J+qiEJ/uxDOOlS9RE66/ET0rO8egSVLi
	0TIVq5V2zgKFJ0tsxXJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7aa-0003gX-Hd; Fri, 08 Nov 2019 16:58:24 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7aS-0003fm-7z
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:58:17 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 937C380D4;
 Fri,  8 Nov 2019 16:58:51 +0000 (UTC)
Date: Fri, 8 Nov 2019 08:58:12 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v2 02/10] ARM: dts: dra7: add cam clkctrl node
Message-ID: <20191108165812.GG5610@atomide.com>
References: <20191104204853.4355-1-bparrot@ti.com>
 <20191104204853.4355-3-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104204853.4355-3-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_085816_324466_385EA76C 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Benoit Parrot <bparrot@ti.com> [191104 20:49]:
> Add clkctrl nodes for CAM domain.

This too should mention that we need to use custom node naming. Other
than that this looks good to me. Again, I can queue the dts changes once
I have an immutable clock changes branch to use as base from Tero.

And up to Tero to consider if he wants to pick this clock node patch too.

Regards,

Tony

> Signed-off-by: Benoit Parrot <bparrot@ti.com>
> ---
>  arch/arm/boot/dts/dra7xx-clocks.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/dra7xx-clocks.dtsi b/arch/arm/boot/dts/dra7xx-clocks.dtsi
> index d1c2406ec71c..199f8d483f75 100644
> --- a/arch/arm/boot/dts/dra7xx-clocks.dtsi
> +++ b/arch/arm/boot/dts/dra7xx-clocks.dtsi
> @@ -1734,6 +1734,20 @@
>  		};
>  	};
>  
> +	cam_cm: cam-cm@1000 {
> +		compatible = "ti,omap4-cm";
> +		reg = <0x1000 0x100>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x1000 0x100>;
> +
> +		cam_clkctrl: cam-clkctrl@20 {
> +			compatible = "ti,clkctrl";
> +			reg = <0x20 0x2c>;
> +			#clock-cells = <2>;
> +		};
> +	};
> +
>  	dss_cm: dss-cm@1100 {
>  		compatible = "ti,omap4-cm";
>  		reg = <0x1100 0x100>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
