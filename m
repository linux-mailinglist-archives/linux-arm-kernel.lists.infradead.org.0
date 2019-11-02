Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8A5ECFAF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 17:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEUX66rPoNAZ3bvqRHJvZipYkQPtMz1vC5y16JVvTOs=; b=mp5BTMSAEFkO3z
	KwmsU+KdrVMghhT89djYBo8UcvxGdXz/TN0yPsTUAZZmpz/6JZ/I7W2nwsBaqJD6XvyUqsfr8+Dgd
	ij/Ze3xtRvIylsAvITyu7lVymT6hnHsceWa6OUC9wjTTBupzOsK2/2WUWqMBXGHyH8GMS2nmpFQY3
	Ompk9NbHUq9AJmxDFm12XDAsi2jMmRhRTvS1fYjsL5vwj5x0Lzy9A2CFZPcy9uRMZF5p+uEkJ8Ijo
	/KATGVhTudlw7gYTy2lK6LuqNmi8bzIW3WqOzCBCu/08KJ3DB5pDtIWUZUN4W5p4fxWpCw/jorFI9
	S+6tiNaL/pxCHnfHEFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQw03-0005lz-1A; Sat, 02 Nov 2019 16:11:39 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvzv-0005la-Il
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 16:11:33 +0000
Received: by mail-ed1-f68.google.com with SMTP id y7so9754974edo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 09:11:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KFow89QyKCB2iUuNfpuKCtlkTyh/+skrIFNEolrPo5Y=;
 b=l9Ym8fBQ28g+SirLW/x8WL/sv7i7951Tj/oBDiNmJl+MzSw/hLZI3W1fKD/hsbdbmN
 fqGMSZP/ijxIW+Djl2YLSafHD6acJ5N1iSohWKHZNF85rmxaoFIv3NntLxGk0qo1vQOU
 Y3nZtKG5/x8vTDkWU2LfwyOKH8DsY11sMq0SXK57CJZ4z78clna5Q4lVC/IXh+4095mD
 myIokPEdwzsbWrDfxY1pVxP+f5CdSlXtc46fxOGkg3yXrD/abT8HapDBTk2Tfvwd6KPP
 zEKgKSqrLf66L8gzlof/OlmL+AhOBaiz7iUdvvD1jA9danG3rQ8BwlDe72A+NSY9FxnK
 okKQ==
X-Gm-Message-State: APjAAAVqcmz8n91/W7p8WxlTCw05Vz+z7RYwJ4STmddCCmhLONmUjbdJ
 Pm9lYrMT+85uTDnREKsp4baFTB7/NdE=
X-Google-Smtp-Source: APXvYqwEUAc7anmR7RzOtyAevI3XQGlZrg2AbuezglHYWeMd4/1hvESJhh1gKaop0GkMS++1R0jjdw==
X-Received: by 2002:a50:eb81:: with SMTP id y1mr19632001edr.119.1572711089135; 
 Sat, 02 Nov 2019 09:11:29 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com.
 [209.85.128.47])
 by smtp.gmail.com with ESMTPSA id p88sm281375edd.22.2019.11.02.09.11.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Nov 2019 09:11:28 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id q70so12381125wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 09:11:28 -0700 (PDT)
X-Received: by 2002:a7b:caa9:: with SMTP id r9mr15035191wml.47.1572711088345; 
 Sat, 02 Nov 2019 09:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191101205535.7896-1-karlp@tweak.net.au>
In-Reply-To: <20191101205535.7896-1-karlp@tweak.net.au>
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 3 Nov 2019 00:11:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v66kSw4d787OGLbiusWv=iVPNtMsXyFNB7NQiCgXS85fEA@mail.gmail.com>
Message-ID: <CAGb2v66kSw4d787OGLbiusWv=iVPNtMsXyFNB7NQiCgXS85fEA@mail.gmail.com>
Subject: Re: [PATCHv2 1/2] ARM: dts: sun8i: add FriendlyARM NanoPi Duo2
To: Karl Palsson <karlp@tweak.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_091131_620631_8A6E8C7F 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 2, 2019 at 4:56 AM Karl Palsson <karlp@tweak.net.au> wrote:
>
> This is an Allwinner H3 based board, with 512MB ram, a USB OTG port,
> microsd slot, an onboard AP6212A wifi/bluetooth module, and a CSI
> connector.
>
> Full details and schematic available from vendor:
> http://wiki.friendlyarm.com/wiki/index.php/NanoPi_Duo2
>
> Signed-off-by: Karl Palsson <karlp@tweak.net.au>
> ---
> Change since v1:
> * dropped accidental commentary
> * sorted nodes
> * added enable gpio for vdd-cpu
> * added vdd-dram and vcc-sys
> * dropped default led trigger
>
>  arch/arm/boot/dts/Makefile                 |   1 +
>  arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts | 174 +++++++++++++++++++++
>  2 files changed, 175 insertions(+)
>  create mode 100644 arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 9159fa2cea90..d8bf02abcda1 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1096,6 +1096,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
>         sun8i-h3-beelink-x2.dtb \
>         sun8i-h3-libretech-all-h3-cc.dtb \
>         sun8i-h3-mapleboard-mp130.dtb \
> +       sun8i-h3-nanopi-duo2.dtb \
>         sun8i-h3-nanopi-m1.dtb  \
>         sun8i-h3-nanopi-m1-plus.dtb \
>         sun8i-h3-nanopi-neo.dtb \
> diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> new file mode 100644
> index 000000000000..c73f59900975
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> @@ -0,0 +1,174 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2019 Karl Palsson <karlp@tweak.net.au>
> + */
> +
> +/dts-v1/;
> +#include "sun8i-h3.dtsi"
> +#include "sunxi-common-regulators.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +       model = "FriendlyARM NanoPi Duo2";
> +       compatible = "friendlyarm,nanopi-duo2", "allwinner,sun8i-h3";
> +
> +       aliases {
> +               serial0 = &uart0;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial0:115200n8";
> +       };
> +
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               pwr {
> +                       label = "nanopi:red:pwr";
> +                       gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>; /* PL10 */
> +                       default-state = "on";
> +               };
> +
> +               status {
> +                       label = "nanopi:green:status";
> +                       gpios = <&pio 0 10 GPIO_ACTIVE_HIGH>; /* PA10 */
> +               };
> +       };
> +
> +       r_gpio_keys {
> +               compatible = "gpio-keys";
> +
> +               k1 {
> +                       label = "k1";
> +                       linux,code = <BTN_0>;
> +                       gpios = <&r_pio 0 3 GPIO_ACTIVE_LOW>; /* PL3 */
> +               };
> +       };
> +
> +       reg_vdd_cpux: vdd-cpux-regulator {
> +               compatible = "regulator-gpio";
> +               regulator-name = "vdd-cpux";
> +               regulator-min-microvolt = <1100000>;
> +               regulator-max-microvolt = <1300000>;
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-ramp-delay = <50>; /* 4ms */
> +
> +               enable-active-high;
> +               enable-gpio = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
> +               gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> +               gpios-states = <0x1>;
> +               states = <1100000 0x0
> +                         1300000 0x1>;
> +       };
> +
> +       reg_vcc_dram: vcc-dram {

This regulator and the next don't have -regulator in their node name,
unlike vdd-cpux-regulator above.

Other than that, this patch looks good to go.

ChenYu

> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc-dram";
> +               regulator-min-microvolt = <1500000>;
> +               regulator-max-microvolt = <1500000>;
> +               regulator-always-on;
> +               regulator-boot-on;
> +               enable-active-high;
> +               gpio = <&r_pio 0 9 GPIO_ACTIVE_HIGH>; /* PL9 */
> +               vin-supply = <&reg_vcc5v0>;
> +        };
> +
> +       reg_vdd_sys: vdd-sys {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vdd-sys";
> +               regulator-min-microvolt = <1200000>;
> +               regulator-max-microvolt = <1200000>;
> +               regulator-always-on;
> +               regulator-boot-on;
> +               enable-active-high;
> +               gpio = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
> +               vin-supply = <&reg_vcc5v0>;
> +        };
> +
> +       wifi_pwrseq: wifi_pwrseq {
> +               compatible = "mmc-pwrseq-simple";
> +               reset-gpios = <&r_pio 0 7 GPIO_ACTIVE_LOW>; /* PL7 */
> +               clocks = <&rtc 1>;
> +               clock-names = "ext_clock";
> +       };
> +
> +};
> +
> +&cpu0 {
> +       cpu-supply = <&reg_vdd_cpux>;
> +};
> +
> +&ehci0 {
> +       status = "okay";
> +};
> +
> +&mmc0 {
> +       bus-width = <4>;
> +       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
> +       status = "okay";
> +       vmmc-supply = <&reg_vcc3v3>;
> +};
> +
> +&mmc1 {
> +       vmmc-supply = <&reg_vcc3v3>;
> +       vqmmc-supply = <&reg_vcc3v3>;
> +       mmc-pwrseq = <&wifi_pwrseq>;
> +       bus-width = <4>;
> +       non-removable;
> +       status = "okay";
> +
> +       sdio_wifi: sdio_wifi@1 {
> +               reg = <1>;
> +               compatible = "brcm,bcm4329-fmac";
> +               interrupt-parent = <&pio>;
> +               interrupts = <6 10 IRQ_TYPE_LEVEL_LOW>; /* PG10 / EINT10 */
> +               interrupt-names = "host-wake";
> +       };
> +};
> +
> +&ohci0 {
> +       status = "okay";
> +};
> +
> +&reg_usb0_vbus {
> +       gpio = <&r_pio 0 2 GPIO_ACTIVE_HIGH>; /* PL2 */
> +       status = "okay";
> +};
> +
> +&uart0 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&uart0_pa_pins>;
> +       status = "okay";
> +};
> +
> +&uart2 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&uart2_pins>, <&uart2_rts_cts_pins>;
> +       uart-has-rtscts;
> +       status = "okay";
> +
> +       bluetooth {
> +               compatible = "brcm,bcm43438-bt";
> +               clocks = <&rtc 1>;
> +               clock-names = "lpo";
> +               vbat-supply = <&reg_vcc3v3>;
> +               vddio-supply = <&reg_vcc3v3>;
> +               device-wakeup-gpios = <&pio 0 8 GPIO_ACTIVE_HIGH>; /* PA8 */
> +               host-wakeup-gpios = <&pio 0 7 GPIO_ACTIVE_HIGH>; /* PA7 */
> +               shutdown-gpios = <&pio 6 13 GPIO_ACTIVE_HIGH>; /* PG13 */
> +       };
> +};
> +
> +&usb_otg {
> +       status = "okay";
> +       dr_mode = "otg";
> +};
> +
> +&usbphy {
> +       usb0_id_det-gpios = <&pio 6 12 GPIO_ACTIVE_HIGH>; /* PG12 */
> +       usb0_vbus-supply = <&reg_usb0_vbus>;
> +       status = "okay";
> +};
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
