Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FC89CA5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OpZHjU7aM81Iesm8ybeN8TznKYv3SHMLiDzaHZx4jMk=; b=DIDvK3T4FxJMQw
	VMnXxTQEReZFUeTuo074gXxMlIgBaRWGoOkUAfIeTrTXmUOrxXzK8+/XGbwwoTXud9mQ0DqPagqZu
	L6x6YjWicVjGQZFn/PT7Eg3Ismxu6/dY0n+9L9GlIBT1PFK1Js6pAygbE/+UQ5LsTh4HF4/YKWKpi
	DK7rQogrUymxrZlIaB9OwlI8yvlvbILFxu/TyvM01hB8QoE3KGptcUiLOm1BzdulPPBkwhg/4hRsB
	Qs2jV8dFzKz5OZZx+ksnc2loTWXbAqwhlAba4Es5Iu0MvSy0cyLrSIOd1VUfKgvFkZaegkGz0Udvg
	jTXrrEbWvfc+rp4lNNyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29Qk-0002uY-5L; Mon, 26 Aug 2019 07:28:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29OZ-0001NL-RQ
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:26:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id p74so14400071wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 00:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=eMztcD5T3f6mdE4zYfhwD64KmaOGDT/GGN6RKYoRptA=;
 b=SxK04tzt9VTk4oLl4TMi54tt1C+lE3qmqtJVTwrYz4s7xxeSx0sCVeoZANY89ZXKWt
 1hEORciFxGmvfT37VS3tqS0EjKrCJcsF4AdMKb50LqHLNc5rpbefxpBJrwoHzJSaDOM4
 9nulyZJw4CWT/BCpZfNIZytitTCiho7QaLotGamvP4NE3qzen30gLD/g+9LeZYqKLq6Y
 0qd2WtlG4WMmalNIYAb24pSbkI9lDezFMcgZz4QSu8DZ81mNH6+ashK3ack36L4W/5Wo
 3RI3PB4euy2zNHX7x+Px8hZz56xD17e1nrUY199s87V6sVsLCn52UfJcxSUbFeJgr6oN
 xsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=eMztcD5T3f6mdE4zYfhwD64KmaOGDT/GGN6RKYoRptA=;
 b=bycZgyyXWc8C3LM4iPjRV2afyCxG4EJM3FgLGDQLboIht7Q+10aph+I/51dkDyVtgy
 IxclBbWYdpcThb0tChRY/rRMtnCTsyf9SN8AfmyJKFCwfgI7Q/JPfcH3ezLTux/2iwk/
 Cesg1IQuxQIL0u2XIrdvmgokNfB2UMXCm8lnw10nkVGos6zWeG1zGr45C2Y8mi5gG6x3
 Q5OUROV230OLb99ssPj9RBDs+uNjbsVd4zQ1k6jHkQjU2e7rEG+9UFiN97CvZmtEYzhz
 oWibQVH4L41iGQqGibUSNGvCWjYsV0AwnaeTmwrEXjwlrcJlGpemgsYMcIGKNF/x12N/
 cJpw==
X-Gm-Message-State: APjAAAV0jebYZl2RyB5soiSyTQN0JAtGTgEA2+tc5s8dkkR08Z8uosFm
 5c9tg2UTON3wR+WO/+GnboV2qw==
X-Google-Smtp-Source: APXvYqxjv84TSy0MwgeJAa+e+vhl7LhblxZmbqjR07kjZZnQefi++a6lFhbIRLUhnItrU9SlqvwTtA==
X-Received: by 2002:a1c:f916:: with SMTP id x22mr19797372wmh.156.1566804390416; 
 Mon, 26 Aug 2019 00:26:30 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a6sm9720095wmj.15.2019.08.26.00.26.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 00:26:29 -0700 (PDT)
Subject: Re: [PATCH v2 5/5] arm64: dts: meson-sm1-sei610: enable DVFS
To: khilman@baylibre.com, jbrunet@baylibre.com
References: <20190826072539.27725-1-narmstrong@baylibre.com>
 <20190826072539.27725-6-narmstrong@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <16322ca1-d66d-ccab-adf1-eddc51746305@baylibre.com>
Date: Mon, 26 Aug 2019 09:26:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826072539.27725-6-narmstrong@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_002631_987285_DF44195A 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/08/2019 09:25, Neil Armstrong wrote:
> This enables DVFS for the Amlogic SM1 based SEI610 board by:
> - Adding the SM1 SoC OPPs taken from the vendor tree
> - Selecting the SM1 Clock controller instead of the G12A one
> - Adding the CPU rail regulator, PWM and OPPs for each CPU nodes.
> 
> Each power supply can achieve 0.69V to 1.05V using a single PWM
> output clocked at 666KHz with an inverse duty-cycle.
> 
> DVFS has been tested by running the arm64 cpuburn at [1] and cycling
> between all the possible cpufreq translations of the cpu cluster and
> checking the final frequency using the clock-measurer, script at [2].
> 
> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
> [2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Sorry forgot:
Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>

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
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
