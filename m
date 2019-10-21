Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF91FDE659
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GDD8ac85jvKV19k7FlXx9czvU616YlQOTVU+Mjp9xe4=; b=ZlQ1Q/zCrPWjyPO9XSmKu/B5n1
	8ulOvmPx3ZNA4Y/5G35KgPbHBW/7ss8EZ8iIVCexPnQ+2AGvpyrHJNXEpcVgV51MRr2su+q5Lnq/h
	DDJH4WOIjkKAPmGPAxvHzN4y1D1wXyoJyWYmHDtdCKv6NN8cqiToZpaQglP85upvXbI2kRtqsY+rL
	yQk+aH8E4S+vEuir0N1Y0mE0H8aCfdXzCWLSO90nAABfqtXlrwAgb08psjsvpUaQe6PUokdOCClPR
	JIZIRwrBo1HP+vyDi+Yl1LAZ/GcGTvLOzTs8saOZfMDNYqjPoI68g/2bRCMDnOBfmRXYTloFhiN/P
	m6vC/hYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMT4K-0004Em-KM; Mon, 21 Oct 2019 08:29:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMT4A-0004DY-TS
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 08:29:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id p7so12215946wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 01:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=coXvyfIqdHK/We6V/H3RTuVXLMy1eJQlx9ttStPuOrw=;
 b=VVzpKYIJGVij00KCpp98F515pIzOj1ZpKqRxowfpIm9Xo+lf/GSiaXB1EnPxrjhvQh
 XsSeMjH+mBOf2yyKHtEaICvmvKp/spv4NRKNE0K2THD+/rybdlpS6TUnv2lHrRFzWJEi
 GhbXWLGED34qPHRJVz2s3H/EQJrC1KTqQB/+MIXO3Gd6Fn+cqe4BKiskkA0CivlYyWCJ
 UEcuR9s4D+R3ockdP+HkE8xgAXeXvePDfoRQX/KMiFIZJSWyPra/Kmvr68Tu8f4epsxo
 FGDR98FDPWYL1v9UXvZQ83AeKoBGMRhbLLTe9kJEbSdBpmU3aRynYe07942NtkV1fUec
 /ioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=coXvyfIqdHK/We6V/H3RTuVXLMy1eJQlx9ttStPuOrw=;
 b=nQRuFIy1HC2RsZtpsHPenO0MWC+1t6qeH8PKkJH5Fn50MTHjyvXD18BKS0afPnwCJG
 B2Xk2iEWvyYlHqwhJsBX4DfZVoEptAa1Aa+dHIagMT/RC0Z2PdayJyxE17hcPFLDeIy6
 s3Qb/KkyQO2yLwvyotGREh4XxSy+51q0lyDgzTfLVnVAHvfDryJYtxbSXnjDTiwD4EyZ
 bu7zDx171uxbeqXkqbYixZIzwGGS0LDEYDVOpuybyNZ3BRIFGmkmdYocTpLQIcqzz/lh
 vQb6JdJev9uE2CtmnaRKTo8YirsGjRFsYsXikeBUWgOgn6L0XHWsMe8wVdLCaWbjn0W1
 X7cA==
X-Gm-Message-State: APjAAAWmxWAVk7SUTDsG196oIa0LhKvleYqZjt0KMZtn5eLWd2ZjwDSA
 mPYTwonMP+O4rDq8f1q0nBikQPifiQ2EYA==
X-Google-Smtp-Source: APXvYqzjBSLPJrXO23eiYpzCuLxigE0b3+VXjylLTHBwDcAKbyN+SwtxhwmKn1UZfN3HphuHnR0dBQ==
X-Received: by 2002:a7b:caea:: with SMTP id t10mr19002070wml.38.1571646563828; 
 Mon, 21 Oct 2019 01:29:23 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a71sm13415679wme.11.2019.10.21.01.29.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 01:29:23 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson: khadas-vim3: move audio nodes to
 common dtsi
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1571416185-6449-1-git-send-email-christianshewitt@gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <94b2292f-3399-ab63-9b5b-1b37da93be1a@baylibre.com>
Date: Mon, 21 Oct 2019 10:29:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571416185-6449-1-git-send-email-christianshewitt@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_012926_958017_2F7CA4D1 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 18:29, Christian Hewitt wrote:
> Move VIM3 audio nodes to meson-khadas-vim3.dtsi to enable audio for all
> boards in the VIM3 family including VIM3L.
> 
> This change depends on [1] being merged/applied first.
> 
> [1] https://patchwork.kernel.org/patch/11198535/
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  .../boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi   | 89 ----------------------
>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi | 88 +++++++++++++++++++++
>  2 files changed, 88 insertions(+), 89 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> index 69019d0..190e934 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> @@ -5,8 +5,6 @@
>   * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
>   */
>  
> -#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> -
>  / {
>  	vddcpu_a: regulator-vddcpu-a {
>  		/*
> @@ -45,69 +43,6 @@
>  		regulator-boot-on;
>  		regulator-always-on;
>  	};
> -
> -	sound {
> -		compatible = "amlogic,axg-sound-card";
> -		model = "G12A-KHADAS-VIM3";
> -		audio-aux-devs = <&tdmout_b>;
> -		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
> -				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
> -				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
> -				"TDM_B Playback", "TDMOUT_B OUT";
> -
> -		assigned-clocks = <&clkc CLKID_MPLL2>,
> -				  <&clkc CLKID_MPLL0>,
> -				  <&clkc CLKID_MPLL1>;
> -		assigned-clock-parents = <0>, <0>, <0>;
> -		assigned-clock-rates = <294912000>,
> -				       <270950400>,
> -				       <393216000>;
> -		status = "okay";
> -
> -		dai-link-0 {
> -			sound-dai = <&frddr_a>;
> -		};
> -
> -		dai-link-1 {
> -			sound-dai = <&frddr_b>;
> -		};
> -
> -		dai-link-2 {
> -			sound-dai = <&frddr_c>;
> -		};
> -
> -		/* 8ch hdmi interface */
> -		dai-link-3 {
> -			sound-dai = <&tdmif_b>;
> -			dai-format = "i2s";
> -			dai-tdm-slot-tx-mask-0 = <1 1>;
> -			dai-tdm-slot-tx-mask-1 = <1 1>;
> -			dai-tdm-slot-tx-mask-2 = <1 1>;
> -			dai-tdm-slot-tx-mask-3 = <1 1>;
> -			mclk-fs = <256>;
> -
> -			codec {
> -				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
> -			};
> -		};
> -
> -		/* hdmi glue */
> -		dai-link-4 {
> -			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
> -
> -			codec {
> -				sound-dai = <&hdmi_tx>;
> -			};
> -		};
> -	};
> -};
> -
> -&arb {
> -	status = "okay";
> -};
> -
> -&clkc_audio {
> -	status = "okay";
>  };
>  
>  &cpu0 {
> @@ -152,18 +87,6 @@
>  	clock-latency = <50000>;
>  };
>  
> -&frddr_a {
> -        status = "okay";
> -};
> -
> -&frddr_b {
> -	status = "okay";
> -};
> -
> -&frddr_c {
> -	status = "okay";
> -};
> -
>  &pwm_ab {
>  	pinctrl-0 = <&pwm_a_e_pins>;
>  	pinctrl-names = "default";
> @@ -179,15 +102,3 @@
>  	clock-names = "clkin1";
>  	status = "okay";
>  };
> -
> -&tdmif_b {
> -	status = "okay";
> -};
> -
> -&tdmout_b {
> -	status = "okay";
> -};
> -
> -&tohdmitx {
> -	status = "okay";
> -};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> index 90815fa..3f5c373 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> @@ -7,6 +7,7 @@
>  
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/gpio/meson-g12a-gpio.h>
> +#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>  
>  / {
>  	model = "Khadas VIM3";
> @@ -76,6 +77,61 @@
>  		clock-names = "ext_clock";
>  	};
>  
> +	sound {
> +		compatible = "amlogic,axg-sound-card";
> +		model = "G12A-KHADAS-VIM3";
> +		audio-aux-devs = <&tdmout_b>;
> +		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
> +				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
> +				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
> +				"TDM_B Playback", "TDMOUT_B OUT";
> +
> +		assigned-clocks = <&clkc CLKID_MPLL2>,
> +				  <&clkc CLKID_MPLL0>,
> +				  <&clkc CLKID_MPLL1>;
> +		assigned-clock-parents = <0>, <0>, <0>;
> +		assigned-clock-rates = <294912000>,
> +				       <270950400>,
> +				       <393216000>;
> +		status = "okay";
> +
> +		dai-link-0 {
> +			sound-dai = <&frddr_a>;
> +		};
> +
> +		dai-link-1 {
> +			sound-dai = <&frddr_b>;
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&frddr_c>;
> +		};
> +
> +		/* 8ch hdmi interface */
> +		dai-link-3 {
> +			sound-dai = <&tdmif_b>;
> +			dai-format = "i2s";
> +			dai-tdm-slot-tx-mask-0 = <1 1>;
> +			dai-tdm-slot-tx-mask-1 = <1 1>;
> +			dai-tdm-slot-tx-mask-2 = <1 1>;
> +			dai-tdm-slot-tx-mask-3 = <1 1>;
> +			mclk-fs = <256>;
> +
> +			codec {
> +				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
> +			};
> +		};
> +
> +		/* hdmi glue */
> +		dai-link-4 {
> +			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
> +
> +			codec {
> +				sound-dai = <&hdmi_tx>;
> +			};
> +		};
> +	};
> +
>  	dc_in: regulator-dc_in {
>  		compatible = "regulator-fixed";
>  		regulator-name = "DC_IN";
> @@ -171,6 +227,14 @@
>  	};
>  };
>  
> +&arb {
> +	status = "okay";
> +};
> +
> +&clkc_audio {
> +	status = "okay";
> +};
> +
>  &cec_AO {
>  	pinctrl-0 = <&cec_ao_a_h_pins>;
>  	pinctrl-names = "default";
> @@ -206,6 +270,18 @@
>          amlogic,tx-delay-ns = <2>;
>  };
>  
> +&frddr_a {
> +	status = "okay";
> +};
> +
> +&frddr_b {
> +	status = "okay";
> +};
> +
> +&frddr_c {
> +	status = "okay";
> +};
> +
>  &hdmi_tx {
>  	status = "okay";
>  	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
> @@ -328,6 +404,18 @@
>  	vqmmc-supply = <&emmc_1v8>;
>  };
>  
> +&tdmif_b {
> +	status = "okay";
> +};
> +
> +&tdmout_b {
> +	status = "okay";
> +};
> +
> +&tohdmitx {
> +	status = "okay";
> +};
> +
>  &uart_A {
>  	status = "okay";
>  	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
> 

Acked-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
