Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07206EBC28
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKoJseb2Af2Qc0nPAvjeSBkV5jxo9FL+4Kff9NMjEEM=; b=pQV46jPVttnEV8
	Mj9gxqkjryTYxjIem7DbQpxrn2OgLrO3Und5L6dGqmxfYiNXYrWxFNQJ4Yf8mQdEutiVIf3jzhGWr
	O5zeio5CX5YvzRTd+Wdw37Yrf19j0Gy9YC4lIlRppsT0fZ8rFkm1zSOt4CDl3C/hGd7IBG7bAHCTV
	3slSAT+xSAOAHsaH+yOdcgzokha7wvaJpowln8TPtoutIS5oLiyxJhGm0kiZBnZhneDJkoZWFMvdY
	I0IIRRspdcKQGQLmaHDE0oAV1yEj2mR7Izdx2Ly3Jcvz2FWeNlmrEaCEsHMgEbfo8/dUQiW1cK54m
	zCrZFzDVsAknpeptJpGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNBn-0003hX-J7; Fri, 01 Nov 2019 03:01:27 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNBc-0003gw-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:01:19 +0000
Received: by mail-ed1-f65.google.com with SMTP id a21so6498946edj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:01:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ja69r3scSsFa5ExNkwUmGih/B4M0amxDhxiXxuJHmpY=;
 b=ugERKHTWzmTKmKDSpqUkzxKLWCE0GHxwoPjM5zrRTbHp7WaIZ5+REXzOlsQzvnVQXQ
 dPRedCxSIMSfYcPuRGh1iGYRYDR9DuKhrQ823u9UGsY+VfzXcGeZNeywLVNQKQzFz2+k
 wStYzpH0sHEW3GhdVXb1Jr0FQv6YEO7MlgzPKicK0BkBPv0yK31pSa+2aLZnqv3C2bhE
 HA7VOVUTD4OSlyUt9R7QZyWxRcvcXiCHNxtQdJpBsDGcaBVQQIYMoVCFZZiaa4BeyO1r
 ublz3wdsyYPKn6Z3prYTU8ex6qx55I3ZmeyITkawaOpDGkzYzsrUBnTfu6LiLrLJvoam
 kijg==
X-Gm-Message-State: APjAAAUBOewDp9DZLpNu5OdnWlPja/y5xLNKGYEmsxegFhqCOwivqvom
 l2lt7r9rba0aX3BOLmRJ9jojcnMRGE0=
X-Google-Smtp-Source: APXvYqxU7pkLtRyNMAMOzpHC68NR514+2YOKdPkwlplMzigxs0/ub2Zi4phLeoNmzQhMx6Inrkh84Q==
X-Received: by 2002:a50:cb8a:: with SMTP id k10mr6190747edi.21.1572577273986; 
 Thu, 31 Oct 2019 20:01:13 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id ay16sm152092edb.47.2019.10.31.20.01.13
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Oct 2019 20:01:13 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id p4so8344043wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:01:13 -0700 (PDT)
X-Received: by 2002:a05:6000:1252:: with SMTP id
 j18mr8450718wrx.23.1572577273265; 
 Thu, 31 Oct 2019 20:01:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191031231216.30903-2-karlp@tweak.net.au>
In-Reply-To: <20191031231216.30903-2-karlp@tweak.net.au>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 1 Nov 2019 11:01:01 +0800
X-Gmail-Original-Message-ID: <CAGb2v67PLemQvj+SOF2h_cfc4HcnAyvs866Bas7GRUF9Y1Lo1A@mail.gmail.com>
Message-ID: <CAGb2v67PLemQvj+SOF2h_cfc4HcnAyvs866Bas7GRUF9Y1Lo1A@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: sun8i: add FriendlyARM NanoPi Duo2
To: Karl Palsson <karlp@tweak.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_200116_885492_0A8489F0 
X-CRM114-Status: GOOD (  24.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Fri, Nov 1, 2019 at 7:12 AM Karl Palsson <karlp@tweak.net.au> wrote:
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
>  arch/arm/boot/dts/Makefile                 |   1 +
>  arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts | 161 +++++++++++++++++++++
>  2 files changed, 162 insertions(+)
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
> index 000000000000..ecfaaa0ec73e
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-h3-nanopi-duo2.dts
> @@ -0,0 +1,161 @@
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
> +               status {
> +                       label = "nanopi:green:status";
> +                       gpios = <&pio 0 10 GPIO_ACTIVE_HIGH>;

Can you add the pin name as a comment after this, like you already have
for most of the other gpios entries?

> +                       linux,default-trigger = "heartbeat";

I'm not so found of this. Unless the LED actually says "heartbeat",
I don't think we should force a default.

> +               };
> +
> +               pwr {
> +                       label = "nanopi:red:pwr";
> +                       gpios = <&r_pio 0 10 GPIO_ACTIVE_HIGH>;

Here as well.

> +                       default-state = "on";
> +               };
> +       };
> +
> +       r_gpio_keys {
> +               compatible = "gpio-keys";
> +
> +               k1 {
> +                       label = "k1";
> +                       linux,code = <BTN_0>;
> +                       gpios = <&r_pio 0 3 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       reg_vdd_cpux: vdd-cpux-regulator {
> +               compatible = "regulator-gpio";
> +               regulator-name = "vdd-cpux";
> +               regulator-boot-on;
> +               regulator-always-on;
> +               regulator-min-microvolt = <1100000>;
> +               regulator-max-microvolt = <1300000>;
> +               regulator-ramp-delay = <50>; /* 4ms */
> +
> +               gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */

This regulator also uses a GPIO line for its enable pin.
Please include that.

> +               enable-active-high;
> +               gpios-states = <0x1>;
> +               states = <1100000 0x0
> +                         1300000 0x1>;
> +       };

Please also add the two other regulators, VDD-SYS and VCC-DRAM.

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
> +&usb_otg {
> +       status = "okay";
> +       dr_mode = "otg";
> +};
> +
> +&ehci0 {
> +       status = "okay";
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
> +&usbphy {
> +       usb0_id_det-gpios = <&pio 6 12 GPIO_ACTIVE_HIGH>; /* PG12 */
> +       usb0_vbus-supply = <&reg_usb0_vbus>;
> +       status = "okay";
> +};

Please have the nodes in alphabetic order, not group them by function.

> +
> +&mmc0 {
> +       bus-width = <4>;
> +       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;
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
> +               //clocks = <&osc32k 1>;
> +               clocks = <&rtc 1>; // this is what bananapi-m2-zero does, and it has same schematic...

Yes, this is the correct setup. The module is taking the clock from
the X32KFOUT on the SoC.
This is an external output from the RTC module.

> +               clock-names = "lpo";
> +
> +               // these are both fine..
> +               vbat-supply = <&reg_vcc3v3>;
> +               vddio-supply = <&reg_vcc3v3>;
> +               // on opi-win, device-wakup is pl6 is AP-WAKE-BT is module pin 6, bt-wake.
> +               // YES; PA8 is correct.
> +               device-wakeup-gpios = <&pio 0 8 GPIO_ACTIVE_HIGH>; /* PA8 */
> +
> +               // on opi-win, hostwakeup (pl5) is bt-wake-ap is module pin 7, bt-host-wake
> +               // YES; PA7 is correct
> +               host-wakeup-gpios = <&pio 0 7 GPIO_ACTIVE_HIGH>; /* PA7 */
> +
> +               // on opi-win, shutdown is pl4, is BT-RST-N is moduel pin 34
> +               // YES; PG13 is correct.

I'm guessing all these comments are from your development cycle? Please
remove them.

> +               shutdown-gpios = <&pio 6 13 GPIO_ACTIVE_HIGH>; /* PG13 */
> +       };
> +};

The board also has SPI flash. Can you add that as well?


Thanks
ChenYu

> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
