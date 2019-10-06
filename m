Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D939CCD66
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 02:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hx+4MfdiRkbc8gi9h9uXxPxfTxGK07uvqvIuQlaKZ7k=; b=q0OoAaCc17iCxs
	CEhKtiXNMU/lnbiaaxoTFxL/1H8v2vaXQaZLboFgC1RmIOcFd9PbD2q31ryyZRkJB6THfk/r519eo
	hD+eLJqsZUWN8o+sXe7DMELvPqpoN03GpeM5sTdjwu4FX6KHRMYMsrnudC5AqOkP3lqb3qeXoQ2C8
	Bi7MJt1/Ls6i1PQk7X+CyUoiUKVCLaPg0xZbbxqQKQUzpzzLltvNse/2qglteGOMxBYN9nRKwPLdc
	eGn40z/DE6WP18oJZwv6ftCb5xYTojsY9/WscO+O3KV3p8cICtlC7a5GmZ5ABjKo4uybXMKc6RIMV
	aBlDwH7JgisaMxr+/QQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGuAk-000267-3s; Sun, 06 Oct 2019 00:13:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGuAZ-00025g-L5
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 00:13:05 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 637D7222C0;
 Sun,  6 Oct 2019 00:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570320782;
 bh=kJuxi48nJa4CAAPVH65osutY5LAiDplP0tGesjL18yw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ilE0BypVLJ2q8odw3kR2vc7TI+bjYK2WhITkMzQ94qAIDanYG5dcddvg3wvzdwn98
 /bs9pqB2H5GNzH0FbsMXSqyYLx4qspBuZY/bp8k0OwuN0kqbhx09CCnBT4FPLBIubZ
 tAa6xlsRUNz+RTlpyER2T52fXpOva1Vr7WYzZuSQ=
Date: Sun, 6 Oct 2019 08:12:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yuantian Tang <andy.tang@nxp.com>
Subject: Re: [PATCH] arm64: dts: lx2160a: add tmu device node
Message-ID: <20191006001249.GB7150@dragon>
References: <20190903033132.17661-1-andy.tang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903033132.17661-1-andy.tang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_171303_735342_EEE6C9FC 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 11:31:32AM +0800, Yuantian Tang wrote:
> Add the TMU (Thermal Monitoring Unit) device node to enable
> TMU feature.
> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
> ---
>  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 108 +++++++++++++++---
>  1 file changed, 92 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 39d497df769e..e70ddd01cd84 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -6,6 +6,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/thermal/thermal.h>
>  
>  /memreserve/ 0x80000000 0x00010000;
>  
> @@ -24,7 +25,7 @@
>  		#size-cells = <0>;
>  
>  		// 8 clusters having 2 Cortex-A72 cores each
> -		cpu@0 {
> +		cpu0: cpu@0 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -38,9 +39,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster0_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@1 {
> +		cpu1: cpu@1 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -54,9 +56,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster0_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@100 {
> +		cpu100: cpu@100 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -70,9 +73,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster1_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@101 {
> +		cpu101: cpu@101 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -86,9 +90,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster1_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@200 {
> +		cpu200: cpu@200 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -102,9 +107,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster2_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@201 {
> +		cpu201: cpu@201 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -118,9 +124,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster2_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@300 {
> +		cpu300: cpu@300 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -134,9 +141,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster3_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@301 {
> +		cpu301: cpu@301 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -150,9 +158,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster3_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@400 {
> +		cpu400: cpu@400 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -166,9 +175,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster4_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@401 {
> +		cpu401: cpu@401 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -182,9 +192,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster4_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@500 {
> +		cpu500: cpu@500 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -198,9 +209,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster5_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@501 {
> +		cpu501: cpu@501 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -214,9 +226,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster5_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@600 {
> +		cpu600: cpu@600 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -230,9 +243,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster6_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@601 {
> +		cpu601: cpu@601 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -246,9 +260,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster6_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@700 {
> +		cpu700: cpu@700 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -262,9 +277,10 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster7_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
> -		cpu@701 {
> +		cpu701: cpu@701 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			enable-method = "psci";
> @@ -278,6 +294,7 @@
>  			i-cache-sets = <192>;
>  			next-level-cache = <&cluster7_l2>;
>  			cpu-idle-states = <&cpu_pw20>;
> +			#cooling-cells = <2>;
>  		};
>  
>  		cluster0_l2: l2-cache0 {
> @@ -422,6 +439,51 @@
>  		clock-output-names = "sysclk";
>  	};
>  
> +	thermal-zones {
> +		core_thermal1: core-thermal1 {
> +			polling-delay-passive = <1000>;
> +			polling-delay = <5000>;
> +			thermal-sensors = <&tmu 0>;
> +
> +			trips {
> +				core_cluster_alert: core-cluster-alert {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				core_cluster_crit: core-cluster-crit {
> +					temperature = <95000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&core_cluster_alert>;
> +					cooling-device =
> +						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu200 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu201 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu300 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu301 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu400 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu401 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu500 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu501 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu600 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu601 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu700 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu701 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		#address-cells = <2>;
> @@ -689,6 +751,20 @@
>  			status = "disabled";
>  		};
>  
> +		tmu: tmu@1f80000 {

Keep the nodes sorted in unit-address.

> +			compatible = "fsl,qoriq-tmu";
> +			reg = <0x0 0x1f80000 0x0 0x10000>;
> +			interrupts = <0 23 0x4>;

IRQ_TYPE_LEVEL_HIGH

> +			fsl,tmu-range = <0x800000E6 0x8001017D>;

Use lowercase for hex values.

Shawn

> +			fsl,tmu-calibration =
> +				/* Calibration data group 1 */
> +				<0x00000000 0x00000035
> +				/* Calibration data group 2 */
> +				0x00010001 0x00000154>;
> +			little-endian;
> +			#thermal-sensor-cells = <1>;
> +		};
> +
>  		uart0: serial@21c0000 {
>  			compatible = "arm,sbsa-uart","arm,pl011";
>  			reg = <0x0 0x21c0000 0x0 0x1000>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
