Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B249431B0C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 11:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjzkajFt5Z3G8C2T7gDiO4FtsiG6A4iRSoj4Uegy1To=; b=IefVy31VdMugyr
	yRInzae7nG/0aBJBNbt2/VqSIdlwC/LM3jIBbmSBxkrC8pZ9SKNjY/4yDXZ9HlWfPgPPHXojv2s5M
	nfAjsGyHSjx+4BFHrZLsn6/HZn16+Rd3tYfjzlpwKPhqBDfe6djq/V5YyuTpEklEZTkwUYAGpRadG
	mMzQu5MjKlVfOz12pCLiY9lHtAljvR/c12z49ex3VtePhLvqdIAKuCJ1E0zY9z3bbiXYNTP/WhsOo
	cfpClxigHBZHwjkTEY8/6uRwjoss22It3+xWVU8ilLZ+2LF2xbI+ITDH39NOJ7guGK3w5nZbCx1ti
	0NbLb5BM1kF+W1HYEKXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX0fd-0003wv-Ra; Sat, 01 Jun 2019 09:51:25 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX0fX-0003wF-CX
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 09:51:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2so7698828pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 02:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RNxGbxuQjJnKHmflH8io0Yh7K3STajOAFY5UlUeImlE=;
 b=ftzq3jR2++4o8NJW8hDTNe4IEPPtpBxc6+CvixxSQYqrrMYyMK0FzKvHhVlVMpyjLp
 tsuJMJbjfLULDaK8sjJNLkWrG9vMaaoGRnWlq0I6CSgjjB8uz8CX938f5shEc+LbxgsV
 aI3kxJoTtsRnwz5Q1H9OZv8R6MOdfFvNsQ5gewgkPYS1+z7b/vNHrpeLVukE/dRo6gMn
 54ps7O57q9L+8NcpZxWwMTIDedNIrIEmZ2qwSNkT8qyXqDxN3Z3dHi46EyyQC570ti1y
 SOt7Ls7zsxDaxnTuxtrW4XT7TWqp284BP8+qP/5qZDEAqOV3Wav7gzaRZSro76A9VIWZ
 V5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RNxGbxuQjJnKHmflH8io0Yh7K3STajOAFY5UlUeImlE=;
 b=eb025OH14KFExFdbF5PxItLW/e0k6Jp3WSFcCnhiW7pbCMXMQi0tkfv6fnPNeZTSiY
 6T+E3jTCwL7bhVxLsC126yyf3N+15nzL5ARTCznQxV1L104IWYwI0UDLlzt+6zzep57x
 v3h/V/APLkZdDFmEE5LqNfpleHabNC9mJky/NDC6A6tNdwtBxPMiGyHMnQwMNKmejujF
 cZqIRevMRtWCidljTWAPj2I0PpcDP0cSZvnoT4gAeb9fNRZproU0AZNXogdVqJ8iNIbW
 D/OnpicvxR5G7ydo7/sJ6QrtzAH9yP1KXgD+EPDBqzxpHvjCQ7gtvLrJ/UKiYFcq41Oe
 VZsg==
X-Gm-Message-State: APjAAAXnD8V9arC2i6JpuNdckA5J8FrnXEkedlxgyweFpWCdz1tQAX9p
 yne4B4bpwEVe66Fxp5/+XS1b
X-Google-Smtp-Source: APXvYqx465ZqZSGI5f9aNCQ1QW6+B2C0NyP5YwUfaCtwz4wNoXssIWR/WyKtFDiUgKvIIdWIaw3JMw==
X-Received: by 2002:a62:1993:: with SMTP id 141mr15320990pfz.97.1559382677973; 
 Sat, 01 Jun 2019 02:51:17 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:73c0:f79b:51a5:964b:dc02:28ec])
 by smtp.gmail.com with ESMTPSA id u14sm9611863pfc.31.2019.06.01.02.51.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 01 Jun 2019 02:51:16 -0700 (PDT)
Date: Sat, 1 Jun 2019 15:21:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing configuration pwr
 amd rst for PCIe
Message-ID: <20190601095106.GA2213@Mani-XPS-13-9360>
References: <20190531201913.1122-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531201913.1122-1-linux.amoon@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_025119_434886_BCDB64C1 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, May 31, 2019 at 08:19:13PM +0000, Anand Moon wrote:
> This patch add missing PCIe gpio pin (#PCIE_PWR) for vcc3v3_pcie power
> regulator node also add missing reset pinctrl (#PCIE_PERST_L) for PCIe node.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> using schematics: thanks for suggested by Manivannan
> [1] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf
> 
> Changes from prevoius patch:
> [2] https://patchwork.kernel.org/patch/10968695/
> 
> Fix the suject and commit message and corrected the PWR and PERST configuration
> as per shematics and dts nodes.
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts    | 7 +++++++
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts  | 7 +++++++
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 3 +--
>  3 files changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> index 6b059bd7a04f..94e2a59bc1c7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
> @@ -89,6 +89,8 @@
>  
>  &pcie0 {
>  	ep-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;

Looks like ep-gpio is wrong here :/ I probably referred old schematics
at that time. Correct pin mapping is,

ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;

And this should be fixed in a separate patch with "Fixes" tag!

>  };
>  
>  &pinctrl {
> @@ -104,6 +106,11 @@
>  			rockchip,pins =
>  				<1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
>  			};
> +
> +		pcie_perst_l: pcie-perst-l {
> +			rockchip,pins =
> +				<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
>  	};
>  
>  	usb2 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> index 12285c51cceb..665fe09c7c74 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> @@ -64,6 +64,8 @@
>  
>  &pcie0 {
>  	ep-gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
>  };
>  
>  &pinctrl {
> @@ -104,6 +106,11 @@
>  			rockchip,pins =
>  				<2 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
>  			};
> +
> +		pcie_perst_l: pcie-perst-l {
> +			rockchip,pins =
> +				<2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
>  	};
>  
>  	usb2 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index c7d48d41e184..3df0cd67b4b2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -55,6 +55,7 @@
>  
>  	vcc3v3_pcie: vcc3v3-pcie-regulator {
>  		compatible = "regulator-fixed";
> +		gpio = <&gpio2 RK_PA5 GPIO_ACTIVE_HIGH>;

Actually the PWR pin mapping is defined in a separate node for both Rock960
and Ficus in respective dts. So defining it here would be wrong as the PWR
pin mapping is different for both boards.

Thanks,
Mani

>  		enable-active-high;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pcie_drv>;
> @@ -382,8 +383,6 @@
>  
>  &pcie0 {
>  	num-lanes = <4>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_clkreqn_cpm>;
>  	vpcie3v3-supply = <&vcc3v3_pcie>;
>  	status = "okay";
>  };
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
