Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9DE9A16B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfdNME7NYkM/KduZ4REdi1Yz6rrT5dtJIoDTcJniMuY=; b=Z0je2EQ/sZTAp2
	lGiLsi/VJx/SDVuT/6Lg8G5AJRLcmEhq1UTty4khTNmysA+QTt9uM79EvqtsGVq+wOv6s0VKqppwe
	dS2x4YEQVYWb+Y4cJpgT3SNX4gX0ITj8eRztZVoFPzTcpSwSpVKrBVehh82TnJO07+6gg/VYWhXeA
	tQS8pzZg/xPhy2u8ET4wHiatbdo1071aqCYazabl3oFn5wBONCOgRI17qBI2LL3IMxxofx8SO/0Ov
	9PE1qEmFplqhCCg/ikQvnhzWqTFkTxMe/i0f8lXM5K3xUqCcnfF5CaqvYSm1zGmWhInYtqeRuy53l
	aSAGVOeoOFCVJP8ISVcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0u1X-0003EY-Il; Thu, 22 Aug 2019 20:49:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0u1E-00036D-M6
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:49:18 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so4125958pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 13:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=2uDwt6fAK/N9T+CbpSjs6dbH6+5DHIx26WADObuQDzE=;
 b=R0spZTUo/T0PRsg5PI/1uZhfzyWB6wBUIigLkZClyUv1LN/+HmLF6mXGmpeZoYbPDO
 XNasGh5DGwolbDlvS5kfpQ4rGzc+rMW1e1i8ubtXhfsx1cd9d7FOwyyFSanH+176YY/3
 3AqtYnd1U8YtD9/Q77R7ag/EXSbHTPmg1AZVt79+kkMCUow4aP8ZC3Ymx9PhVSREBScc
 usC+F/Y9Zc4Y5/O6p6q1XR9pNkoRwuQI3BvjmLvqXF5dKRCqjWMFD3UjKCHCSzcg5yLG
 wHNGIIQSHVAUjPIgFEoBl4uB79kIo0dOnHBi+UzTa4wJWRF9y1FyKdqP1qvZ/Fx/rMLv
 Pi3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=2uDwt6fAK/N9T+CbpSjs6dbH6+5DHIx26WADObuQDzE=;
 b=EKOPd/+4pI9W3DI9sS32Hd9x0/qFdl416SxzdfILyxMJhSxKcJ63DLERYFXSFL8nAo
 Dvf7nk8GyKBmSPLwRZCY8Iy1ovg6s8xcfn14JZRtEO07/lCvtlnkSNWxGMOd5+7Xhnab
 mE0KoVCe2u/HuGw9kvw41k1TmL1XO/xoEICJLwkqoDRTC1mbABmaTG+jGO1QS97NVxQk
 vEwU/ax0+UUEpm3kQdevTaro+UyiQEpIRuVUCJ7rfoWOdkF3KBFG2AZoz5+lxoLLwU9c
 qDhI1G+qMh2B8I3CLkMGfFU7iOGrsShDiNwkf+r1APTr95VIEe0hIigGJXhKRSw8BrFW
 5hjA==
X-Gm-Message-State: APjAAAX48Y9ZDJYbDOfXBqhxJEc8Mi5v4/J5cFaaP2MIMkZ6BrpU9MhK
 FzgoACL56Twk96/do2QR29it3Q==
X-Google-Smtp-Source: APXvYqy+5buHmhq/g7FHVDCldUueTHQk+4S3qVKCiO2juY7sd2p4Bok8Takfe/T/2C2LT7NNhSTX7A==
X-Received: by 2002:a17:902:aa03:: with SMTP id
 be3mr793758plb.240.1566506955574; 
 Thu, 22 Aug 2019 13:49:15 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
 by smtp.gmail.com with ESMTPSA id 65sm317927pff.148.2019.08.22.13.49.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 13:49:15 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com
Subject: Re: [PATCH 6/6] arm64: dts: meson-sm1-sei610: enable DVFS
In-Reply-To: <20190822142455.12506-7-narmstrong@baylibre.com>
References: <20190822142455.12506-1-narmstrong@baylibre.com>
 <20190822142455.12506-7-narmstrong@baylibre.com>
Date: Thu, 22 Aug 2019 13:49:14 -0700
Message-ID: <7hpnkx2aet.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_134916_767127_7193371B 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> This enables DVFS for the Amlogic SM1 based SEI610 board by:
> - Adding the SM1 SoC OPPs taken from the vendor tree
> - Selecting the SM1 Clock controller instead of the G12A one
> - Adding the CPU rail regulator, PWM and OPPs for each CPU nodes.
>
> Each power supply can achieve 0.69V to 1.05V using a single PWM
> output clocked at 666KHz with an inverse duty-cycle.
>
> DVFS has been tested by running the arm64 cpuburn at [1] and cycling
> between all the possible cpufreq translations of each cluster and
> checking the final frequency using the clock-measurer, script at [2].
>
> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> [2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>

Tested on meson-sm1-sei610 board using the userspace govenor to manually
walk through the available frequencies.

I'll queue this up when there's a stable clock tag I can use for patch
5/6.

Kevin

> ---
>  .../boot/dts/amlogic/meson-sm1-sei610.dts     | 59 ++++++++++++++--
>  arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    | 69 +++++++++++++++++++
>  2 files changed, 124 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> index 36ac2e4b970d..69966e2e0611 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> @@ -19,10 +19,6 @@
>  		ethernet0 = &ethmac;
>  	};
>  
> -	chosen {
> -		stdout-path = "serial0:115200n8";
> -	};
> -
>  	emmc_pwrseq: emmc-pwrseq {
>  		compatible = "mmc-pwrseq-emmc";
>  		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
> @@ -136,6 +132,25 @@
>  		regulator-always-on;
>  	};
>  
> +	vddcpu: regulator-vddcpu {
> +		/*
> +		 * SY8120B1ABC DC/DC Regulator.
> +		 */
> +		compatible = "pwm-regulator";
> +
> +		regulator-name = "VDDCPU";
> +		regulator-min-microvolt = <690000>;
> +		regulator-max-microvolt = <1050000>;
> +
> +		vin-supply = <&dc_in>;
> +
> +		pwms = <&pwm_AO_cd 1 1500 0>;
> +		pwm-dutycycle-range = <100 0>;
> +
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
>  	vddio_ao1v8: regulator-vddio_ao1v8 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "VDDIO_AO1V8";
> @@ -182,6 +197,34 @@
>  	hdmi-phandle = <&hdmi_tx>;
>  };
>  
> +&cpu0 {
> +	cpu-supply = <&vddcpu>;
> +	operating-points-v2 = <&cpu_opp_table>;
> +	clocks = <&clkc CLKID_CPU_CLK>;
> +	clock-latency = <50000>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vddcpu>;
> +	operating-points-v2 = <&cpu_opp_table>;
> +	clocks = <&clkc CLKID_CPU1_CLK>;
> +	clock-latency = <50000>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vddcpu>;
> +	operating-points-v2 = <&cpu_opp_table>;
> +	clocks = <&clkc CLKID_CPU2_CLK>;
> +	clock-latency = <50000>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vddcpu>;
> +	operating-points-v2 = <&cpu_opp_table>;
> +	clocks = <&clkc CLKID_CPU3_CLK>;
> +	clock-latency = <50000>;
> +};
> +
>  &ethmac {
>  	status = "okay";
>  	phy-handle = <&internal_ephy>;
> @@ -220,6 +263,14 @@
>  	clock-names = "clkin0";
>  };
>  
> +&pwm_AO_cd {
> +	pinctrl-0 = <&pwm_ao_d_e_pins>;
> +	pinctrl-names = "default";
> +	clocks = <&xtal>;
> +	clock-names = "clkin1";
> +	status = "okay";
> +};
> +
>  &pwm_ef {
>  	status = "okay";
>  	pinctrl-0 = <&pwm_e_pins>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> index 37064d7f66c1..2b61406b0610 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
> @@ -50,6 +50,71 @@
>  			compatible = "cache";
>  		};
>  	};
> +
> +	cpu_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-100000000 {
> +			opp-hz = /bits/ 64 <100000000>;
> +			opp-microvolt = <730000>;
> +		};
> +
> +		opp-250000000 {
> +			opp-hz = /bits/ 64 <250000000>;
> +			opp-microvolt = <730000>;
> +		};
> +
> +		opp-500000000 {
> +			opp-hz = /bits/ 64 <500000000>;
> +			opp-microvolt = <730000>;
> +		};
> +
> +		opp-667000000 {
> +			opp-hz = /bits/ 64 <666666666>;
> +			opp-microvolt = <750000>;
> +		};
> +
> +		opp-1000000000 {
> +			opp-hz = /bits/ 64 <1000000000>;
> +			opp-microvolt = <770000>;
> +		};
> +
> +		opp-1200000000 {
> +			opp-hz = /bits/ 64 <1200000000>;
> +			opp-microvolt = <780000>;
> +		};
> +
> +		opp-1404000000 {
> +			opp-hz = /bits/ 64 <1404000000>;
> +			opp-microvolt = <790000>;
> +		};
> +
> +		opp-1512000000 {
> +			opp-hz = /bits/ 64 <1500000000>;
> +			opp-microvolt = <800000>;
> +		};
> +
> +		opp-1608000000 {
> +			opp-hz = /bits/ 64 <1608000000>;
> +			opp-microvolt = <810000>;
> +		};
> +
> +		opp-1704000000 {
> +			opp-hz = /bits/ 64 <1704000000>;
> +			opp-microvolt = <850000>;
> +		};
> +
> +		opp-1800000000 {
> +			opp-hz = /bits/ 64 <1800000000>;
> +			opp-microvolt = <900000>;
> +		};
> +
> +		opp-1908000000 {
> +			opp-hz = /bits/ 64 <1908000000>;
> +			opp-microvolt = <950000>;
> +		};
> +	};
>  };
>  
>  &cecb_AO {
> @@ -60,6 +125,10 @@
>  	compatible = "amlogic,meson-sm1-clk-measure";
>  };
>  
> +&clkc {
> +	compatible = "amlogic,sm1-clkc";
> +};
> +
>  &ethmac {
>  	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
>  };
> -- 
> 2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
