Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBA7177A9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ufjj9wKLX79kID55kPDKc2/s5//SH+zkteByhJw2yDg=; b=NATpPvAXGans85
	7KEV3zlZpENGpUmHGosGzCNdepqhTkOfD5Xi/YXsplQ4BSbf8WD8x4xs5/WzQjgCWZ/+uYisXhPop
	AyIAXup27tZdfc3T/Jdd9CC8MI6tJVH30XcCkXa3PgAzgnP+CWFuxPYXD1ngBdWJQjx03QqAn38xC
	CIguQKz7Rj+MQ9lu6w1cb0OKY+B4+67xVnqRFyssEnAnVT4PWdF36oGXVRh8JIk3rk+lg+QzMg347
	L11mA2Qltj1ZymvVTXoBPkseqLn+/hC5ZlWlaFe/Si+aK2F0WdoNL3b6KVY5jvNzqDKOC8eot57EA
	oXd2wkA/vqDOKC02Juew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99cV-0002Ry-9J; Tue, 03 Mar 2020 15:38:07 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99cI-0002QF-CP; Tue, 03 Mar 2020 15:37:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id x7so4961081wrr.0;
 Tue, 03 Mar 2020 07:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YvGk7xUO+68mhtiqviZhOY2G43PtxpfpixNDfplfQ+U=;
 b=FwYVmlpjimv3hyyMpf9rchOm0IHQYi3QhcdnC/U0L5YVUHSYlo6AVU4JAqHhNkqOHO
 Yb4onAuxykhpunrYUpk0pvoUvQVd3bcPBbAiublh3tB+H6IlJFuv7u0Bh5tO3ONsjZW/
 EsfehgRF21PYgQUnrlBqAiiGa3YApTV+1jFk24E48ZIBZHyAuqoh5q21CV3nN1pk93lS
 LwayExW/DvkYYaqJpvFIlLnVriiF730pwv5DEQjtu81HphhuodSl+VK89XDOlo967/5Q
 oUL8xYiRmUpB3XHn3OZOssINH5Cy2BtIBcn2WpFQA8zarRTJp08twIImBLlM6E8sJiNS
 W7vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YvGk7xUO+68mhtiqviZhOY2G43PtxpfpixNDfplfQ+U=;
 b=uftx/TUMzi77x+M1uYfzJXinBXHcQlgYgvT62KTSFb8CZxH4GW4kMehJFkLemDrSoH
 bPTuPJHmeVMvdwR2PbIGASkxAK51XhlC6NdjZODbKe6yGc5G0Qhc04yfeBWI8wheYErd
 cWseg/F98oCNtm3Q40AzlnMGKsCRFN9l/ebQzFQIzgGl7WYGniqG6aiqo0dsRFOf4TWT
 1UICSrEvudpFmzaAUY5txN83SkNYVbWwPN0/uAIs4TW9aNtGkoin9q4hJRYxcqe7735Q
 bum3eHqz2RPfm03/ZZKY95Kt116gT32REztbBcMCR19ZHTdFleXRTCLPVu7JAPo2ybIl
 MMGw==
X-Gm-Message-State: ANhLgQ1X1U+3tHQS/Xphg2hqUNUB4SKu+OOcFGBaSmcYpLV6Z5LxWldX
 xkMfJCmL/zuxtk82DUPS6ts=
X-Google-Smtp-Source: ADFU+vs9DE4undEDAXy2unASqyqHbpmqXx0QxAC8Zl7hPwddMkL5fDozOJPRYdWyCkpoRKRxIJiN/g==
X-Received: by 2002:adf:a512:: with SMTP id i18mr6019706wrb.61.1583249872355; 
 Tue, 03 Mar 2020 07:37:52 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a184sm4771858wmf.29.2020.03.03.07.37.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Mar 2020 07:37:51 -0800 (PST)
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
To: Tobias Schramm <t.schramm@manjaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20200229144817.355678-1-t.schramm@manjaro.org>
 <20200229144817.355678-3-t.schramm@manjaro.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <bcc2c8d4-a2cd-58c1-89af-e42439f8f344@gmail.com>
Date: Tue, 3 Mar 2020 16:37:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200229144817.355678-3-t.schramm@manjaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_073754_433616_C1635DA8 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tobias,

Some minor style issues.
This dts file contains a partition node.
Question for the maintainers (Heiko?):
Should that partition be included or not?

On 2/29/20 3:48 PM, Tobias Schramm wrote:
> This commit adds initial dt support for the rk3399 based Pinebook Pro.
>
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 1105 +++++++++++++++++
>  2 files changed, 1106 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
b/arch/arm64/boot/dts/rockchip/Makefile
> index 60d9437096c7..ae7621309e92 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -28,6 +28,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-pinebook-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> new file mode 100644
> index 000000000000..dfade7e00051
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -0,0 +1,1105 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
> + * Copyright (c) 2020 Tobias Schramm <t.schramm@manjaro.org>
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/input/gpio-keys.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pwm/pwm.h>
> +#include <dt-bindings/usb/pd.h>
> +#include <dt-bindings/leds/common.h>
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	model = "Pine64 Pinebook Pro";
> +	compatible = "pine64,pinebook-pro", "rockchip,rk3399";
> +
> +	chosen {
> +		stdout-path = "serial2:1500000n8";
> +	};
> +
> +	backlight: edp-backlight {
> +		compatible = "pwm-backlight";
> +		power-supply = <&vcc_12v>;
> +		pwms = <&pwm0 0 740740 0>;
> +	};
> +
> +	edp_panel: edp-panel {
> +		compatible = "boe,nv140fhmn49";
> +		backlight = <&backlight>;
> +		enable-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&panel_en_gpio>;
> +		power-supply = <&vcc3v3_panel>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			port@0 {
> +				panel_in_edp: endpoint@0 {
> +					remote-endpoint = <&edp_out_panel>;
> +				};
> +			};
> +		};
> +	};
> +
> +	/*
> +	 * Use separate nodes for gpio-keys to allow for selective deactivation
> +	 * of wakeup sources via sysfs without disabling the whole key
> +	 */
> +	gpio-key-lid {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lidbtn_gpio>;
> +
> +		lid {
> +			debounce-interval = <20>;
> +			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_LOW>;
> +			label = "Lid";
> +			linux,code = <SW_LID>;
> +			linux,input-type = <EV_SW>;
> +			wakeup-event-action = <EV_ACT_DEASSERTED>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	gpio-key-power {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwrbtn_gpio>;
> +
> +		power {
> +			debounce-interval = <20>;
> +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> +			label = "Power";
> +			linux,code = <KEY_POWER>;
> +			wakeup-source;
> +		};
> +	};
> +
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwrled_gpio &slpled_gpio>;
> +
> +		green-led {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "on";
> +			function = LED_FUNCTION_POWER;
> +			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> +			label = "green:power";
> +		};
> +
> +		red-led {
> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "off";
> +			function = LED_FUNCTION_STANDBY;
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			label = "red:standby";
> +			panic-indicator;
> +			retain-state-suspended;
> +		};
> +	};
> +
> +	/* Power sequence for SDIO WiFi module */
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk808 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h_gpio>;
> +		post-power-on-delay-ms = <100>;
> +		power-off-delay-us = <500000>;
> +
> +		/* WL_REG_ON on module */
> +		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	/* Audio components */
> +	es8316-sound {
> +		compatible = "simple-audio-card";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hp_det_gpio>;
> +		simple-audio-card,name = "rockchip,es8316-codec";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Speaker";
> +		simple-audio-card,routing =
> +			"MIC1", "Mic Jack",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Speaker Amplifier INL", "HPOL",
> +			"Speaker Amplifier INR", "HPOR",
> +			"Speaker", "Speaker Amplifier OUTL",
> +			"Speaker", "Speaker Amplifier OUTR";
> +
> +		simple-audio-card,hp-det-gpio = <&gpio0 RK_PB0 GPIO_ACTIVE_LOW>;
> +		simple-audio-card,aux-devs = <&speaker_amp>;
> +		simple-audio-card,pin-switches = "Speaker";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&es8316>;
> +		};
> +	};
> +
> +	speaker_amp: speaker-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
> +		sound-name-prefix = "Speaker Amplifier";
> +		VCC-supply = <&pa_5v>;
> +	};
> +
> +	/* Power tree */
> +	/* Root power source */
> +	vcc_sysin: vcc-sysin {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-name = "vcc_sysin";
> +	};
> +
> +	/* Regulators supplied by vcc_sysin */
> +	/* LCD backlight supply */
> +	vcc_12v: vcc-12v {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		regulator-name = "vcc_12v";
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* Main 3.3 V supply */
> +	vcc3v3_sys: wifi_bat: vcc3v3-sys {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc3v3_sys";
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};
> +	};
> +
> +	/* 5 V USB power supply */
> +	vcc5v0_usb: pa_5v: vcc5v0-usb-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pwr_5v_gpio>;
> +		regulator-always-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "vcc5v0_usb";
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* RK3399 logic supply */
> +	vdd_log: vdd-log {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 25000 1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-name = "vdd_log";
> +		vin-supply = <&vcc_sysin>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};
> +	};
> +
> +	/* Regulators supplied by vcc3v3_sys */
> +	/* 0.9 V supply, always on */
> +	vcc_0v9: vcc-0v9 {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		regulator-name = "vcc_0v9";
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	/* S3 1.8 V supply, switched by vcc1v8_s3 */
> +	vcca1v8_s3: vcc1v8-s3 {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-name = "vcca1v8_s3";
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	/* micro SD card power */
> +	vcc3v0_sd: vcc3v0-sd {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sdmmc0_pwr_h_gpio>;
> +		regulator-always-on;
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +		regulator-name = "vcc3v0_sd";
> +		vin-supply = <&vcc3v3_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* LCD panel power, called VCC3V3_S0 in schematic */
> +	vcc3v3_panel: vcc3v3-panel {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&lcdvcc_en_gpio>;
> +		regulator-always-on;
> +		regulator-enable-ramp-delay = <100000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc3v3_panel";
> +		vin-supply = <&vcc3v3_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* M.2 adapter power, switched by vcc1v8_s3 */
> +	vcc3v3_ssd: vcc3v3-ssd {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc3v3_ssd";
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
> +	/* Regulators supplied by vcc5v0_usb */
> +	/* USB 3 port power supply regulator  */
> +	vcc5v0_otg: vcc5v0-otg {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en_gpio>;
> +		regulator-always-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "vcc5v0_otg";
> +		vin-supply = <&vcc5v0_usb>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* Regulators supplied by vcc5v0_usb */
> +	/* Type C port power supply regulator */
> +	vbus_5vout: vbus_typec: vbus-5vout {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_typec0_en_gpio>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "vbus_5vout";
> +		vin-supply = <&vcc5v0_usb>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	/* Regulators supplied by vcc_1v8 */
> +	/* Primary 0.9 V LDO */
> +	vcca0v9_s3: vcca0v9-s3 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-name = "vcc0v9_s3";
> +		vin-supply = <&vcc_1v8>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};
> +	};
> +
> +	mains_charger: dc-charger {
> +		compatible = "gpio-charger";
> +		charger-type = "mains";
> +		gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
> +
> +		/* Also triggered by USB charger */
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&dc_det_gpio>;
> +	};
> +};
> +
> +&cdn_dp {
> +	status = "okay";
> +};
> +
> +&cpu_l0 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l1 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +

> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};

sort and move above &cpu_l0

> +
> +&edp {
> +	force-hpd;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&edp_hpd>;
> +	status = "okay";
> +
> +	ports {
> +		edp_out: port@1 {
> +			reg = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			edp_out_panel: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&panel_in_edp>;
> +			};
> +		};
> +	};
> +};
> +
> +&emmc_phy {
> +	status = "okay";
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	clock-frequency = <400000>;

> +	i2c-scl-rising-time-ns = <168>;
> +	i2c-scl-falling-time-ns = <4>;

sort this as well

> +	status = "okay";
> +
> +	rk808: pmic@1b {
> +		compatible = "rockchip,rk808";
> +		reg = <0x1b>;
> +		#clock-cells = <1>;
> +		clock-output-names = "xin32k", "rk808-clkout2";
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l_gpio>;
> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc_sysin>;
> +		vcc2-supply = <&vcc_sysin>;
> +		vcc3-supply = <&vcc_sysin>;
> +		vcc4-supply = <&vcc_sysin>;
> +		vcc6-supply = <&vcc_sysin>;
> +		vcc7-supply = <&vcc_sysin>;
> +		vcc8-supply = <&vcc3v3_sys>;
> +		vcc9-supply = <&vcc_sysin>;
> +		vcc10-supply = <&vcc_sysin>;
> +		vcc11-supply = <&vcc_sysin>;
> +		vcc12-supply = <&vcc3v3_sys>;
> +		vcc13-supply = <&vcc_sysin>;
> +		vcc14-supply = <&vcc_sysin>;
> +
> +		regulators {
> +			/* rk3399 center logic supply */
> +			vdd_center: DCDC_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-name = "vdd_center";
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vdd_cpu_l: DCDC_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-name = "vdd_cpu_l";
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_ddr: DCDC_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc_ddr";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v8: vcc_wl: DCDC_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc_1v8";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			/* not used */
> +			LDO_REG1 {
> +			};
> +
> +			/* not used */
> +			LDO_REG2 {
> +			};
> +
> +			vcc1v8_pmupll: LDO_REG3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcc1v8_pmupll";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc_sdio: LDO_REG4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-name = "vcc_sdio";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcca3v0_codec: LDO_REG5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-name = "vcca3v0_codec";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_1v5: LDO_REG6 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-max-microvolt = <1500000>;
> +				regulator-name = "vcc_1v5";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1500000>;
> +				};
> +			};
> +
> +			vcca1v8_codec: LDO_REG7 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-name = "vcca1v8_codec";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc_3v0: LDO_REG8 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-name = "vcc_3v0";
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcc3v3_s3: SWITCH_REG1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc3v3_s3";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc3v3_s0: SWITCH_REG2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-name = "vcc3v3_s0";
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu_b: regulator@40 {
> +		compatible = "silergy,syr827";
> +		reg = <0x40>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel1_gpio>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-compatible = "fan53555-reg";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-name = "vdd_cpu_b";
> +		regulator-ramp-delay = <1000>;
> +		vin-supply = <&vcc_1v8>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vdd_gpu: regulator@41 {
> +		compatible = "silergy,syr828";
> +		reg = <0x41>;
> +		fcs,suspend-voltage-selector = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel2_gpio>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-compatible = "fan53555-reg";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-name = "vdd_gpu";
> +		regulator-ramp-delay = <1000>;
> +		vin-supply = <&vcc_1v8>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	i2c-scl-falling-time-ns = <4>;
> +	i2c-scl-rising-time-ns = <168>;
> +	status = "okay";
> +
> +	es8316: es8316@11 {
> +		compatible = "everest,es8316";
> +		reg = <0x11>;
> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
> +		clock-names = "mclk";
> +		#sound-dai-cells = <0>;
> +	};
> +};
> +
> +&i2c3 {
> +	i2c-scl-falling-time-ns = <15>;
> +	i2c-scl-rising-time-ns = <450>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	i2c-scl-falling-time-ns = <20>;
> +	i2c-scl-rising-time-ns = <600>;
> +	status = "okay";
> +
> +	fusb0: fusb30x@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		fcs,int_n = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fusb0_int_gpio>;

> +		status = "okay";

Remove or else status below.
New nodes are already okay I think.
If insure check compiled flat dts output to see if it is still there.

> +		vbus-supply = <&vbus_typec>;
> +
> +		connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			op-sink-microwatt = <1000000>;
> +			power-role = "dual";
> +			sink-pdos =
> +				<PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
> +			source-pdos =
> +				<PDO_FIXED(5000, 1400, PDO_FIXED_USB_COMM)>;
> +			try-power-role = "sink";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					usbc_hs: endpoint {
> +						remote-endpoint =
> +							<&u2phy0_typec_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					usbc_ss: endpoint {
> +						remote-endpoint =
> +							<&tcphy0_typec_ss>;
> +					};
> +				};
> +
> +				port@2 {
> +					usbc_dp: endpoint {
> +						remote-endpoint =
> +							<&tcphy0_typec_dp>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&i2s1 {
> +	#sound-dai-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s_8ch_mclk_gpio>, <&i2s1_2ch_bus>;

> +	rockchip,playback-channels = <8>;
> +	rockchip,capture-channels = <8>;

sort

> +	status = "okay";
> +};
> +
> +&io_domains {
> +	audio-supply = <&vcc_3v0>;
> +	gpio1830-supply = <&vcc_3v0>;
> +	sdmmc-supply = <&vcc_sdio>;
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	bus-scan-delay-ms = <1000>;
> +	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> +	max-link-speed = <2>;
> +	num-lanes = <4>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_clkreqn_cpm>;
> +	vpcie0v9-supply = <&vcca0v9_s3>;
> +	vpcie1v8-supply = <&vcca1v8_s3>;
> +	vpcie3v3-supply = <&vcc3v3_ssd>;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	buttons {
> +		pwrbtn_gpio: pwrbtn-gpio {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};

Add extra empty line here.

> +		lidbtn_gpio: lidbtn-gpio {
> +			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	dc-charger {
> +		dc_det_gpio: dc-det-gpio {
> +			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	es8316 {
> +		hp_det_gpio: hp-det-gpio {
> +			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +
> +	fusb302x {
> +		fusb0_int_gpio: fusb0-int-gpio {
> +			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	i2s1 {
> +		i2s_8ch_mclk_gpio: i2s-8ch-mclk-gpio {
> +			rockchip,pins = <4 RK_PA0 1 &pcfg_pull_none>;
> +		};
> +	};
> +
> +	lcd-panel {
> +		lcdvcc_en_gpio: lcdvcc-en-gpio {
> +			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		panel_en_gpio: panel-en-gpio {
> +			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		lcd_panel_reset_gpio: lcd-panel-reset-gpio {
> +			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	leds {
> +		pwrled_gpio: pwrled_gpio {
> +			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		slpled_gpio: slpled_gpio {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int_l_gpio: pmic-int-l-gpio {
> +			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		vsel1_gpio: vsel1-gpio {
> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		vsel2_gpio: vsel2-gpio {
> +			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +
> +	sdcard {
> +		sdmmc0_pwr_h_gpio: sdmmc0-pwr-h-gpio {
> +			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h_gpio: wifi-enable-h-gpio {
> +			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb-typec {
> +		vcc5v0_typec0_en_gpio: vcc5v0-typec0-en-gpio {
> +			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +
> +	usb2 {
> +		pwr_5v_gpio: pwr-5v-gpio {
> +			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_host_en_gpio: vcc5v0-host-en-gpio {
> +			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	wireless-bluetooth {
> +		bt_wake_gpio: bt-wake-gpio {
> +			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};

Add extra empty line here.

> +		bt_host_wake_gpio: bt-host-wake-gpio {
> +			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		bt_reset_gpio: bt-reset-gpio {
> +			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	pmu1830-supply = <&vcc_3v0>;
> +	status = "okay";
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "okay";
> +};
> +
> +&saradc {
> +	vref-supply = <&vcca1v8_s3>;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};
> +
> +&sdio0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs200-1_8v;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&spi1 {
> +	max-freq = <10000000>;
> +	status = "okay";
> +
> +	spiflash: flash@0 {

> +		compatible = "jedec,spi-nor";
> +		m25p,fast-read;
> +		reg = <0>;

Change this to:
		compatible = "jedec,spi-nor";
		reg = <0>;
		m25p,fast-read;

> +		spi-max-frequency = <10000000>;
> +		status = "okay";
> +

> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			loader@8000 {
> +				label = "loader";
> +				reg = <0x0 0x3F8000>;
> +			};
> +
> +			env@3f8000 {
> +				label = "env";
> +				reg = <0x3F8000 0x8000>;
> +			};
> +
> +			vendor@7c0000 {
> +				label = "vendor";
> +				reg = <0x7C0000 0x40000>;
> +			};
> +		};

Partitions are normaly up to the user and should not be included to dts
files,
else could you explain why we need this exception?

> +	};
> +};
> +
> +&tcphy0 {
> +	status = "okay";
> +};
> +
> +&tcphy0_dp {
> +	port {
> +		tcphy0_typec_dp: endpoint {
> +			remote-endpoint = <&usbc_dp>;
> +		};
> +	};
> +};
> +
> +&tcphy0_usb3 {
> +	port {
> +		tcphy0_typec_ss: endpoint {
> +			remote-endpoint = <&usbc_ss>;
> +		};
> +	};
> +};
> +
> +&tcphy1 {
> +	status = "okay";
> +};
> +
> +&tsadc {
> +	/* tshut mode 0:CRU 1:GPIO */
> +	rockchip,hw-tshut-mode = <1>;
> +	/* tshut polarity 0:LOW 1:HIGH */
> +	rockchip,hw-tshut-polarity = <1>;
> +	status = "okay";
> +};
> +
> +&u2phy0 {
> +	status = "okay";
> +
> +	u2phy0_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy0_host: host-port {
> +		phy-supply = <&vcc5v0_otg>;
> +		status = "okay";
> +	};
> +
> +	port {
> +		u2phy0_typec_hs: endpoint {
> +			remote-endpoint = <&usbc_hs>;
> +		};
> +	};
> +};
> +
> +&u2phy1 {
> +	status = "okay";
> +
> +	u2phy1_otg: otg-port {
> +		status = "okay";
> +	};
> +
> +	u2phy1_host: host-port {
> +		phy-supply = <&vcc5v0_otg>;
> +		status = "okay";
> +	};
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> +	uart-has-rtscts;
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm4345c5";
> +		clocks = <&rk808 1>;
> +		clock-names = "lpo";
> +		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		max-speed = <1500000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake_gpio &bt_wake_gpio &bt_reset_gpio>;
> +		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> +		vbat-supply = <&wifi_bat>;
> +		vddio-supply = <&vcc_wl>;
> +	};
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};
> +
> +&usbdrd3_0 {
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_0 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usbdrd3_1 {
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3_1 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&vopb {
> +	status = "okay";
> +};
> +
> +&vopb_mmu {
> +	status = "okay";
> +};
> +
> +&vopl {
> +	status = "okay";
> +};
> +
> +&vopl_mmu {
> +	status = "okay";
> +};
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
