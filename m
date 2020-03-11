Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238A21812F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bf5pxeY4T1rm0s0Ws7LLXPosiRIVLUI9+FZPC1KxFHo=; b=aTtl+LNlttfkYR
	i1cCyGHrUA+MpTHt6mwTIh9qTyTigbCXtXVnFBd10NofnxccFz7i2SIRHqnl3M0SVujqh4vC7Mph4
	P7F87AEzcq3mm2C43XM3Ol3WcMT9CoYCtCxoi5N3b4l+vXGZNgMkChDRrlL1ZWTm4ZvNHt9mr57Jk
	F2m+j2Bdgwy6IgWJkgb1mjAcInUV7x3hIXGhuMFXGhT7xnayD5DJF7Fb9Xsxj0ezK/w87E5MXyWPD
	uEh7eB1oFdQDH/cJ3ouQoJeSg6qOFT6lsUVGEoO1NFGz3zsbAd48zQQla5nFhfAlqfJn3nO+rydjy
	LC5hJh8oGA93PGL+CSMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwli-0001pt-4Y; Wed, 11 Mar 2020 08:31:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwlY-0001pa-5A
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:31:01 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C91AC20848;
 Wed, 11 Mar 2020 08:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583915459;
 bh=rIWT9c23MTBVlaTh1Eb6lpf59lA1osIAXiNlIrkeg/U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PmrV3SBmAO/5xRR+ybHP68yc0R7xxRl/oaiqY1r4hJ8wa9wRJUgPn1CQKEA9GHKVi
 UA9LjjCVNtrwB+IJCS7PWZOgeeI5Br2yGlnux0CRVoPfmpPJkdPRvYXPkXeCwcZI1s
 /cxWTtSI/ddBabdOgeSrp1Hzg7Vwmg6IJtKTd9Fk=
Date: Wed, 11 Mar 2020 16:30:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 1/3] ARM: dts: imx: add nvmem property for cpu0
Message-ID: <20200311083052.GD29269@dragon>
References: <1583201690-16068-1-git-send-email-peng.fan@nxp.com>
 <1583201690-16068-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583201690-16068-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013100_247285_BAA37497 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Anson.Huang@nxp.com, linux-pm@vger.kernel.org,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 10:14:48AM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add nvmem related property for cpu0, then nvmem API could be used
> to read cpu speed grading to avoid directly read OCOTP registers
> mapped which could not handle defer probe.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm/boot/dts/imx6dl.dtsi  | 2 ++
>  arch/arm/boot/dts/imx6q.dtsi   | 2 ++
>  arch/arm/boot/dts/imx6qdl.dtsi | 7 +++++++
>  arch/arm/boot/dts/imx6sl.dtsi  | 9 +++++++++
>  arch/arm/boot/dts/imx6sll.dtsi | 6 ++++++
>  arch/arm/boot/dts/imx6sx.dtsi  | 6 ++++++
>  6 files changed, 32 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6dl.dtsi b/arch/arm/boot/dts/imx6dl.dtsi
> index 4b3a128d9260..055f1d875bac 100644
> --- a/arch/arm/boot/dts/imx6dl.dtsi
> +++ b/arch/arm/boot/dts/imx6dl.dtsi
> @@ -44,6 +44,8 @@
>  			arm-supply = <&reg_arm>;
>  			pu-supply = <&reg_pu>;
>  			soc-supply = <&reg_soc>;
> +			nvmem-cells = <&cpu_speed_grade>;
> +			nvmem-cell-names = "speed_grade";
>  		};
>  
>  		cpu@1 {
> diff --git a/arch/arm/boot/dts/imx6q.dtsi b/arch/arm/boot/dts/imx6q.dtsi
> index 0fad13f9d336..d3ba9d4a1290 100644
> --- a/arch/arm/boot/dts/imx6q.dtsi
> +++ b/arch/arm/boot/dts/imx6q.dtsi
> @@ -49,6 +49,8 @@
>  			arm-supply = <&reg_arm>;
>  			pu-supply = <&reg_pu>;
>  			soc-supply = <&reg_soc>;
> +			nvmem-cells = <&cpu_speed_grade>;
> +			nvmem-cell-names = "speed_grade";
>  		};
>  
>  		cpu1: cpu@1 {
> diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
> index 70fb8b56b1d7..982f546b0b89 100644
> --- a/arch/arm/boot/dts/imx6qdl.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl.dtsi
> @@ -1165,6 +1165,13 @@
>  				compatible = "fsl,imx6q-ocotp", "syscon";
>  				reg = <0x021bc000 0x4000>;
>  				clocks = <&clks IMX6QDL_CLK_IIM>;
> +

Please drop such newline.  Do not really think they are necessary.

Shawn

> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				cpu_speed_grade: speed-grade@10 {
> +					reg = <0x10 4>;
> +				};
>  			};
>  
>  			tzasc@21d0000 { /* TZASC1 */
> diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
> index c8ec46fe8302..de943341e4f2 100644
> --- a/arch/arm/boot/dts/imx6sl.dtsi
> +++ b/arch/arm/boot/dts/imx6sl.dtsi
> @@ -74,6 +74,8 @@
>  			arm-supply = <&reg_arm>;
>  			pu-supply = <&reg_pu>;
>  			soc-supply = <&reg_soc>;
> +			nvmem-cells = <&cpu_speed_grade>;
> +			nvmem-cell-names = "speed_grade";
>  		};
>  	};
>  
> @@ -953,6 +955,13 @@
>  				compatible = "fsl,imx6sl-ocotp", "syscon";
>  				reg = <0x021bc000 0x4000>;
>  				clocks = <&clks IMX6SL_CLK_OCOTP>;
> +
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				cpu_speed_grade: speed-grade@10 {
> +					reg = <0x10 4>;
> +				};
>  			};
>  
>  			audmux: audmux@21d8000 {
> diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
> index 797f850492fe..6b7fb3cec9f6 100644
> --- a/arch/arm/boot/dts/imx6sll.dtsi
> +++ b/arch/arm/boot/dts/imx6sll.dtsi
> @@ -72,6 +72,8 @@
>  				 <&clks IMX6SLL_CLK_PLL1_SYS>;
>  			clock-names = "arm", "pll2_pfd2_396m", "step",
>  				      "pll1_sw", "pll1_sys";
> +			nvmem-cells = <&cpu_speed_grade>;
> +			nvmem-cell-names = "speed_grade";
>  		};
>  	};
>  
> @@ -791,6 +793,10 @@
>  				reg = <0x021bc000 0x4000>;
>  				clocks = <&clks IMX6SLL_CLK_OCOTP>;
>  
> +				cpu_speed_grade: speed-grade@10 {
> +					reg = <0x10 4>;
> +				};
> +
>  				tempmon_calib: calib@38 {
>  					reg = <0x38 4>;
>  				};
> diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
> index e47d346a3543..63aa19d81b42 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -87,6 +87,8 @@
>  				      "pll1_sw", "pll1_sys";
>  			arm-supply = <&reg_arm>;
>  			soc-supply = <&reg_soc>;
> +			nvmem-cells = <&cpu_speed_grade>;
> +			nvmem-cell-names = "speed_grade";
>  		};
>  	};
>  
> @@ -1058,6 +1060,10 @@
>  				reg = <0x021bc000 0x4000>;
>  				clocks = <&clks IMX6SX_CLK_OCOTP>;
>  
> +				cpu_speed_grade: speed-grade@10 {
> +					reg = <0x10 4>;
> +				};
> +
>  				tempmon_calib: calib@38 {
>  					reg = <0x38 4>;
>  				};
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
