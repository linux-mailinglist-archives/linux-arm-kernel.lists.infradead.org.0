Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3A411FA5E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 19:14:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hetbAIRreA4dvbfsoZRa4w2Y5AIKTVjh+LQdcR1caWs=; b=jmCgihPXN8GNxJ16HJAR73kUF
	vt9vUq+mKbz0C8Yh5+XodLDWMcPlH/KpKSEC7SyMNBF+tD6qL4nSnUmaEmqSSgA9oJH6tkVUXWY8W
	J9GsBbt2rSclSYGQXp1qbsoO1QdNF3cyRW2La+36u4jUgIUj41wiIHzIQyLW58+Azd0GQiXys9Nct
	D5so491O8CO4UWXj2w2Z2reGRTpbKuGDm5QWUiQarDCTGk8AhHWValU0scd3VyXnZjq7IjeDZknDX
	oKxmMnvU6pN4qJ5Ij+M5Ge/LRPSp73XsNhtgvzgTuQixcIkDaaz9oixJ6w/lSjWLS2JsN95fBGAcZ
	iM887v7mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igYPQ-0006Gp-Ju; Sun, 15 Dec 2019 18:14:24 +0000
Received: from se14o.web-hosting.com ([198.54.122.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igYPE-0006Fv-8f; Sun, 15 Dec 2019 18:14:14 +0000
Received: from [68.65.123.203] (helo=server153.web-hosting.com)
 by se17.registrar-servers.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <akash@openedev.com>)
 id 1igY2W-000CxK-HK; Sun, 15 Dec 2019 09:50:55 -0800
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=openedev.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WqcgP0dxZyTiCj0it8HkTxdHhAiPQEfnQ+vSCfcGBYs=; b=OGH7xf6UywkJdQXoCivnJrrD58
 27gAv85oknQK95A7qMK2yBhQUTCzUpIIV9DXWjZqwnvR4B37TDAYSbvzmnKgVAMv5e74s2ulBhvrZ
 vyvcGlysdJS/vsiTrR+s5pngT0m3hA13ibxBS4SPLeG/6/lgJ4OpSgwqFVGYPnd4F2hVtukS/WFLi
 cbcrQ194f8Bn7i0COC0L0HhwUTPrq50KbhmX1RMnPFq0a89fkBn+InPIgMqdkivEby7XL6LBTG74g
 Yp5FkXr1GmZzmKEnGENnJpgMOwREUKx+sTOdDk/vnFM75cPkoExY/i3B7b1OjfTfiwU+nbrhOjGIA
 4Ry1ZJlg==;
Received: from [49.36.128.5] (port=60020 helo=[10.0.2.15])
 by server153.web-hosting.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <akash@openedev.com>)
 id 1igY2L-000yJF-Ql; Sun, 15 Dec 2019 12:50:39 -0500
Subject: Re: [PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
To: heiko@sntech.de
References: <20191215173318.16385-1-akash@openedev.com>
From: akash <akash@openedev.com>
Message-ID: <012aa867-64bc-4f7b-58a4-566fa8b517a8@openedev.com>
Date: Sun, 15 Dec 2019 23:20:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191215173318.16385-1-akash@openedev.com>
Content-Language: en-US
X-OutGoing-Spam-Status: No, score=-1.0
X-Originating-IP: 68.65.123.203
X-SpamExperts-Domain: nctest.net
X-SpamExperts-Username: whmcalls3
Authentication-Results: registrar-servers.com;
 auth=pass (login) smtp.auth=whmcalls3@nctest.net
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00756532410745)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0fi3oD8HEy9ysrsB6Ile+oipSDasLI4SayDByyq9LIhVhFneq0U7t9Oc
 BF6qD07DB0TNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipF21HJWO60ZqrvKy/1AXUV5oXt6ymoFHaG7BQtEYvFCSpuWzVc
 T3k6tdrH16CoDqAnlUmXrfTLNL+XlP6lHqoNLf8CXSJxPLrpKXl1qrNQD+5U/0ndiqtNPm4FllM3
 +Lh4DrcAoIFLUQF9hBAs0X/vEEwbtJxBYVPsNSv32Q/btMc55CMwZdeN2hMyoER3ylWlnxWS4g5f
 GaxVtScTx/BQZMmDqAdxHbdj0iV1lQ21qZ2nnd56gwmhwBthoYmck701Udld9rj+fepeNkkLcPod
 ARblDrgWoDfCVKR1P7Rogs3znb05WiC8jaGsg2zWAtSwzal7VzZN2cvAbH6UJMpH1RhnQuyjUDM1
 13ZlJnNy7Dhk1cDu6uqS5GSOfV/K15Vg/gZw7nFoEfVW/KrT5tjuF5NO5p4P9U6wxqAvjbDlOWdh
 g9X2FiN3IR7R1ENfHuAA58fMnqZUTt7CyKlJUh+zhk1OFB2a2TBwlkXNniQd3G7u9ObqeYXg8NqL
 4RQdsFskIMVlx3kpAAgFKa6cveEfQ1sONqcYt8QNJCyN/ux+WoxQGKDre32lxgGctzrZwMfaipra
 VVyjYG5gof4cIYiG+O3G8yPqLiUhcrqCspK0ihwuxN5wGVxm8rYIYSqDP1da70jJmTmqIy7XBC0Y
 oVo+sDxIPj1UU4msT2Odp9D6f/N1xSLkVtFDhs2pVCzg/6su8DjltttWRLh6YZHfZDlxqtgKM0ng
 UIO8/7FVNN6Jljh3uEfeTTa3VO3u5HRsz0s8Db1PmgmzCcMa7ulPKQwljdxbXpCgbiKBsA+Ddi6m
 awf7qIPrXD/wjVs/n8fM5ydr4VRbSFCvnbggoY4Wvq8a9PDk3+iNqiYKhZaJO2iXygidb7xKf9ye
 n1ptsyeNpBLGYEQKJVyp/FQfUJeyh3UYNr1P8PrBEjUzBQOhtbGwOd/74O4hBSz/kkmPgL+fgIgu
 BWHJWcnjJ9Yw6nh4SabxNEFWQMkWSOoVHQUhBdW8lg0KjnyR3xn1Rq53RJyIn4x8L/MajuTZZYrm
 IMPpJ01xNSLp8yK4HDX6CXKW1cjrmvSDyiGG9+F7gBuhhNiu6O9mcHFleJWRxdnH7qtGkGOZyOYN
 g9LcQCKZJyjZYhbcjZs9WxdPbI1pJzK3EQqVDvHmHHASJNUmoOHSoqgqxfHmWRkdQL1gXJvwL5op
 HNLdfid/oune33LSDO2jwIIX2HH6/Xaa2YE7nuBo2iwEIN3pGn5OoRY51umiSqH1CKu9nM8fKghZ
 uFuu++HSP4Hpd2sDdKgNSxpke6tG5/V0WQwo339q0aZI3qbhXsaDdLgW9bry4KJcrxSUzWDT2Gb/
 yQXL5tP3WJd7sb8yEkSOtPpidAKWF8gSL91Ajw1AlIFKkYk=
X-Report-Abuse-To: spam@se16.registrar-servers.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_101412_314275_4EC000D6 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 jagan@openedev.com, Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rock Pi S Linux 5.5.0-rc1 Boot Logs available on 
https://paste.ubuntu.com/p/2K9NpWJYpb/

On 15/12/19 11:03 pm, Akash Gajjar wrote:
> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
>
> This patch enables
> - Console
> - NAND Flash
> - SD Card
>
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> ---
>   .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../boot/dts/rockchip/rk3308-rock-pi-S.dts    | 221 ++++++++++++++++++
>   3 files changed, 227 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d9847b306b83..48d40c928d45 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -422,6 +422,11 @@ properties:
>             - const: radxa,rockpi4
>             - const: rockchip,rk3399
>   
> +      - description: Radxa ROCK Pi S
> +        items:
> +          - const: radxa,rockpis
> +          - const: rockchip,rk3308
> +
>         - description: Radxa Rock2 Square
>           items:
>             - const: radxa,rock2-square
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 48fb631d5451..cc9e8c824980 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -2,6 +2,7 @@
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-S.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
> new file mode 100644
> index 000000000000..e5fae451c631
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
> @@ -0,0 +1,221 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Akash Gajjar <akash@openedev.com>
> + * Copyright (c) 2019 Jagan Teki <jagan@openedev.com>
> + */
> +
> +/dts-v1/;
> +#include "rk3308.dtsi"
> +
> +/ {
> +	model = "Radxa ROCK Pi S";
> +	compatible = "radxa,rockpis", "rockchip,rk3308";
> +
> +	chosen {
> +		stdout-path = "serial0:1500000n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&green_led_gio>, <&heartbeat_led_gpio>;
> +
> +		green-led {
> +			label = "rockpis:green:power";
> +			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "default-on";
> +			default-state = "on";
> +		};
> +
> +		blue-led {
> +			label = "rockpis:blue:user";
> +			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	vdd_core: vdd-core {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm0 0 5000 1>;
> +		regulator-name = "vdd_core";
> +		regulator-min-microvolt = <827000>;
> +		regulator-max-microvolt = <1340000>;
> +		regulator-init-microvolt = <1015000>;
> +		regulator-settling-time-up-us = <250>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vdd_log: vdd-log {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_log";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1050000>;
> +		regulator-max-microvolt = <1050000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc_ddr: vcc-ddr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_ddr";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1500000>;
> +		regulator-max-microvolt = <1500000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc_1v8: vcc-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc_io>;
> +	};
> +
> +	vcc_io: vcc-io {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_io";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
> +	vcc5v0_otg: vcc5v0-otg {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_otg";
> +		regulator-always-on;
> +		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&otg_vbus_drv>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_core>;
> +};
> +
> +&emmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;
> +	supports-sd;
> +	disable-wp;
> +	non-removable;
> +	num-slots = <1>;
> +	vin-supply = <&vcc_io>;
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	max-frequeency = <150000000>;
> +	supports-sd;
> +	disable-wp;
> +	num-slots = <1>;
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
> +	card-detect-delay = <800>;
> +	status = "okay";
> +};
> +
> +&spi2 {
> +	status = "okay";
> +	max-freq = <10000000>;
> +};
> +
> +&pinctrl {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rtc_32k>;
> +
> +	leds {
> +		green_led_gio: green-led-gpio {
> +			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		heartbeat_led_gpio: heartbeat-led-gpio {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		otg_vbus_drv: otg-vbus-drv {
> +			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wifi_host_wake: wifi-host-wake {
> +			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +	pinctrl-0 = <&pwm0_pin_pull_down>;
> +};
> +
> +&saradc {
> +	vref-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
> +&sdio {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	bus-width = <4>;
> +	max-frequency = <1000000>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	supports-sdio;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart4_xfer &uart4_rts &uart4_cts>;
> +	status = "okay";
> +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
