Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B26601A6B26
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNPV6/o7nGXtz6Q8WakLpBKPjNxL5olhPsoUHLHhzyQ=; b=mpw9WL90cRjDit
	vV+LkCg/q3dI4d0JXZgfhc/cJJQ/fMtgUq2zoz2kDt/I1278k0wnU02k8ofYBEyWBl0oxhohC5GaQ
	gFChYFLnq+7wqIHY8k8ssYZfWS9brISAJZIudM9i9QBMoY+ZNa9ytyVa8bFl4NlTvdDMvHNLCyMwx
	EQJ+hEF0qY2zq6FsAvQtlMc5AZMLelEpfDq5pY0eUk/Ua8zh+RhhtafHc4cxfyBC6mEzVdaARKfSe
	6SiSZ+MTxevjaixVOg+gnIf2u/83PYRV8Z5ISw/5P9P9RzalM6lam4Z/kP+wNkr5t6Vxb9FTMrXI4
	FuqmuVK0YZMWgU8yQ5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2gw-0003QP-CO; Mon, 13 Apr 2020 17:16:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2gn-0003PJ-Oq; Mon, 13 Apr 2020 17:16:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id a81so10695064wmf.5;
 Mon, 13 Apr 2020 10:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K90EHEULDxs2VEjg7AxO3HdR5ULq8xDzhwmC5AQdzoA=;
 b=FIv96XOtDOVL3yxhhBo0iaFIggbSwiDjXFvUGOvQBz2aUnOyvK3vbEfx0wdcIzKHSy
 ODdcqnPdvIQWo8CMDPGDKMrshKr5F7PhcDLYLM+xGaAKT6KpvauxG/596qyyFlXUcs4e
 1+VRzwuh/LIvOnFiuWz5bvCwR1CWV5GqrlXSZCjX0wtvamMiqqhnxcANQBebuy6iOV91
 F+IBXeF8jycMeyuADjCr9ALJkwabS0ZxbApyjdDVLw2I18bvl2sLsNlrKN8drnWOfycF
 IORAHq0JUDpdGVeeC38YCbPptFjrAsmmE6KJKoM7rljgHBO/bGdEhDByYrygHV5JsA/d
 I5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K90EHEULDxs2VEjg7AxO3HdR5ULq8xDzhwmC5AQdzoA=;
 b=A4eNyewLAxhWNLzlUTSifqB3psBNRwvBedL6TEt54+Vy3xHL48tvOKSid4jRYqKUVs
 Phy2li0L2R1IGpnmlXHnqy0CwUzBcvGLDNTUPzzSxmczAFxCEGVFgWxgJkn3cfnyzAUi
 k6SqEwZsUxK5wPRHGWov4pfKVnE+x+4KgOzW+ggGYTnTBv0AgAQsge2TgJezaFZhv+bo
 cBPnq5Q4wDsB746l33s6OKAvnaBOEgWzM8I+ZhrumUJWFDd656uUxuHPogHXqhFE3QTs
 78M2xUPqkGHiVoiW12Butts7DCqMn5YY0C1mlNaYEz5crLe9ofyH/+NbK7dhrNUTQrJF
 4yoA==
X-Gm-Message-State: AGi0PubOUiDHioaoq/WEFr8BH+SNRjVk8DyaVTI0MIdJpByaYOv4Yx4Q
 38L0lNVaFE2Ul/u6xM9+dx4=
X-Google-Smtp-Source: APiQypIJffc6SWC4pzcb/hTyBG9xOkx7TovB6dE5SIrjdJ2tWqJRsfMj0cfEpbsZ5V5k98lzA88szw==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr18984380wmb.71.1586798164385; 
 Mon, 13 Apr 2020 10:16:04 -0700 (PDT)
Received: from linux-gy6r.site ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id q8sm14975550wmg.22.2020.04.13.10.16.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 10:16:03 -0700 (PDT)
Subject: Re: [PATCH v7 3/5] arm64: dts: mt8173: fix unit name warnings
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200210063523.133333-1-hsinyi@chromium.org>
 <20200210063523.133333-4-hsinyi@chromium.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
X-Pep-Version: 2.0
Message-ID: <f4e23893-4b8c-deaa-5d5f-6f16f08cf8f4@gmail.com>
Date: Mon, 13 Apr 2020 19:16:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200210063523.133333-4-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101605_810390_C0F002B7 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/10/20 7:35 AM, Hsin-Yi Wang wrote:
> Fixing several unit name warnings:
> 
> Warning (unit_address_vs_reg): /oscillator@0: node has a unit name, but no reg property
> Warning (unit_address_vs_reg): /oscillator@1: node has a unit name, but no reg property
> Warning (unit_address_vs_reg): /oscillator@2: node has a unit name, but no reg property
> Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/trip-point@0: node has a unit name, but no reg property
> Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/trip-point@1: node has a unit name, but no reg property
> Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/trips/cpu_crit@0: node has a unit name, but no reg property
> Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/cooling-maps/map@0: node has a unit name, but no reg property
> Warning (unit_address_vs_reg): /thermal-zones/cpu_thermal/cooling-maps/map@1: node has a unit name, but no reg property
> Warning (unit_address_vs_reg): /reserved-memory/vpu_dma_mem_region: node has a reg or ranges property, but no unit name
> Warning (simple_bus_reg): /soc/pinctrl@10005000: simple-bus unit address format error, expected "1000b000"
> Warning (simple_bus_reg): /soc/interrupt-controller@10220000: simple-bus unit address format error, expected "10221000"
> Warning (alias_paths): /aliases: aliases property name must include only lowercase and '-'
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 38 ++++++++++++------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> index 790cd64aa447..2b7f566fb407 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> @@ -42,14 +42,14 @@ aliases {
>  		dpi0 = &dpi0;
>  		dsi0 = &dsi0;
>  		dsi1 = &dsi1;
> -		mdp_rdma0 = &mdp_rdma0;
> -		mdp_rdma1 = &mdp_rdma1;
> -		mdp_rsz0 = &mdp_rsz0;
> -		mdp_rsz1 = &mdp_rsz1;
> -		mdp_rsz2 = &mdp_rsz2;
> -		mdp_wdma0 = &mdp_wdma0;
> -		mdp_wrot0 = &mdp_wrot0;
> -		mdp_wrot1 = &mdp_wrot1;
> +		mdp-rdma0 = &mdp_rdma0;
> +		mdp-rdma1 = &mdp_rdma1;
> +		mdp-rsz0 = &mdp_rsz0;
> +		mdp-rsz1 = &mdp_rsz1;
> +		mdp-rsz2 = &mdp_rsz2;
> +		mdp-wdma0 = &mdp_wdma0;
> +		mdp-wrot0 = &mdp_wrot0;
> +		mdp-wrot1 = &mdp_wrot1;

As this needs to be fixed together with patch 5, and patch 5 is not yet
applied I dropped this part of the patch. Please resend this snipped and
patch 5 for.

The rest of it is applied to v5.7-next/dts64

Thanks!



>  		serial0 = &uart0;
>  		serial1 = &uart1;
>  		serial2 = &uart2;
> @@ -246,21 +246,21 @@ psci {
>  		cpu_on	      = <0x84000003>;
>  	};
>  
> -	clk26m: oscillator@0 {
> +	clk26m: oscillator0 {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
>  		clock-frequency = <26000000>;
>  		clock-output-names = "clk26m";
>  	};
>  
> -	clk32k: oscillator@1 {
> +	clk32k: oscillator1 {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
>  		clock-frequency = <32000>;
>  		clock-output-names = "clk32k";
>  	};
>  
> -	cpum_ck: oscillator@2 {
> +	cpum_ck: oscillator2 {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
>  		clock-frequency = <0>;
> @@ -276,19 +276,19 @@ cpu_thermal: cpu_thermal {
>  			sustainable-power = <1500>; /* milliwatts */
>  
>  			trips {
> -				threshold: trip-point@0 {
> +				threshold: trip-point0 {
>  					temperature = <68000>;
>  					hysteresis = <2000>;
>  					type = "passive";
>  				};
>  
> -				target: trip-point@1 {
> +				target: trip-point1 {
>  					temperature = <85000>;
>  					hysteresis = <2000>;
>  					type = "passive";
>  				};
>  
> -				cpu_crit: cpu_crit@0 {
> +				cpu_crit: cpu_crit0 {
>  					temperature = <115000>;
>  					hysteresis = <2000>;
>  					type = "critical";
> @@ -296,13 +296,13 @@ cpu_crit: cpu_crit@0 {
>  			};
>  
>  			cooling-maps {
> -				map@0 {
> +				map0 {
>  					trip = <&target>;
>  					cooling-device = <&cpu0 0 0>,
>  							 <&cpu1 0 0>;
>  					contribution = <3072>;
>  				};
> -				map@1 {
> +				map1 {
>  					trip = <&target>;
>  					cooling-device = <&cpu2 0 0>,
>  							 <&cpu3 0 0>;
> @@ -316,7 +316,7 @@ reserved-memory {
>  		#address-cells = <2>;
>  		#size-cells = <2>;
>  		ranges;
> -		vpu_dma_reserved: vpu_dma_mem_region {
> +		vpu_dma_reserved: vpu_dma_mem_region@b7000000 {
>  			compatible = "shared-dma-pool";
>  			reg = <0 0xb7000000 0 0x500000>;
>  			alignment = <0x1000>;
> @@ -368,7 +368,7 @@ syscfg_pctl_a: syscfg_pctl_a@10005000 {
>  			reg = <0 0x10005000 0 0x1000>;
>  		};
>  
> -		pio: pinctrl@10005000 {
> +		pio: pinctrl@1000b000 {
>  			compatible = "mediatek,mt8173-pinctrl";
>  			reg = <0 0x1000b000 0 0x1000>;
>  			mediatek,pctl-regmap = <&syscfg_pctl_a>;
> @@ -575,7 +575,7 @@ mipi_tx1: mipi-dphy@10216000 {
>  			status = "disabled";
>  		};
>  
> -		gic: interrupt-controller@10220000 {
> +		gic: interrupt-controller@10221000 {
>  			compatible = "arm,gic-400";
>  			#interrupt-cells = <3>;
>  			interrupt-parent = <&gic>;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
