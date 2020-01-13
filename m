Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5664413984A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:02:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0t3/LzDOQE9gjLeIXV9M44E5zj2/FjYzu1Z67emRbM=; b=PJNsG+3AtOitQw
	TGiGPJu+Fj2LmITv5toV2ljT2cHwEZbs2NvzNX281FAhE7Kr3MgB2CRQJvEZCDrgbQHYrm/gy0dNR
	8F3CjicjTujXBMjXgxyutPtZuq+2iL55kVjA9BuMwjJpb6/K6ZHuBbpnyoRFHc+UIqlb4RXHFwmxA
	f6RDkVeDOckOWDm9wRKDqEn0xoxeRuONdif5ydwavP7u7pm63hbIl5hruljhyaUp3lK9GHmMKfhpC
	098hREBZDa2YCqgO9E8yA5qWFJ/HfiMS3P37zPK9Ufk6yjzV0LTl5D8sq6n3AHgxnD4pwiMFXPutI
	XVkbXB/O9dDs5p7dnHxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir42t-0001fy-Md; Mon, 13 Jan 2020 18:02:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir42f-0001eD-21
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:02:24 +0000
Received: by mail-io1-xd41.google.com with SMTP id n21so10764609ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 10:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0cUjYWPK/DPkCeYS+uJXbIac+NfbPHnRXh0ni/TTZJE=;
 b=naPLXrvtR2ekWcSiUnCcNXOToagoDYmlTtehvmDaLlIzlMpaIoEhxgdJdJr7V2gkgO
 6GCHOWCF00drlAlNRwPXClQ96fTt/FL11SKlKkYdM6jn3GMMU5MCC40dVgVahqGRioyk
 HTeDOh9ZoumO1RrtNW4gXPXohVPLgnsZ6ceP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0cUjYWPK/DPkCeYS+uJXbIac+NfbPHnRXh0ni/TTZJE=;
 b=DHjo3BnTK+qmqvxHigD7GU4XU/OwZijp/N+lCxVhT2qPSkfjvRjaFf2TGse4oICjnW
 bXi99x7y1xlWf8Mkq6h4dZyezY5UKdruJ2gI3rvq+PJMuAMREZAguXlAQBcC72wG59Vk
 XmLGiYLwKlgyEBEivAIBw3mCml9xLdYiVBhCNJHclV01KgfnPlCAjq3EmvPteqahM39k
 ccHZ/mONyPrwzG2hYXyzT8kVaWelI83kXriuw4U4rhhDcYaodACqo/kXKkMTNk8Bc5nW
 7BBjJnDoNH2fwyaFJE5N9PAcob3hCBG3K73ZZIj8rq1lE5lZnpNCOdtGwESL23mF8Kx5
 tNcg==
X-Gm-Message-State: APjAAAXzr79Iw5Kv9WDzDjn4ZaZyoGQKMlX6sy7uf37jgSXyKj7an+Ic
 Ynvudj4I8K9BKs25kF2Ku5KUuElPqdu6qZrob9h2iQ==
X-Google-Smtp-Source: APXvYqzg77SKNxwwnXkxs8Qrhig8TsbBwpqZ1vpzVyyFuxrkWMnGI5XthpmZRubzqfbfTboUMNtgGkeajJo8FZ24Kao=
X-Received: by 2002:a5d:9c10:: with SMTP id 16mr13061528ioe.150.1578938539664; 
 Mon, 13 Jan 2020 10:02:19 -0800 (PST)
MIME-Version: 1.0
References: <20200110073730.213789-1-hsinyi@chromium.org>
 <20200110073730.213789-3-hsinyi@chromium.org>
 <7d137ab6-d57b-8471-bb6a-37556e5e2a01@gmail.com>
In-Reply-To: <7d137ab6-d57b-8471-bb6a-37556e5e2a01@gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 14 Jan 2020 02:01:53 +0800
Message-ID: <CAJMQK-j1CfXKDCpyycp5F7pbuESGgbzb=8h-adGrjw1oZcCBnw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: mediatek: add mt8173 elm and hana board
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_100221_144242_A6A872A3 
X-CRM114-Status: GOOD (  23.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, lkml <linux-kernel@vger.kernel.org>,
 Daniel Kurtz <djkurtz@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 9:42 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
Thanks, I will address the comments and send next version
>
> On 10/01/2020 08:37, Hsin-Yi Wang wrote:
> > Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
> > SoC.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> > Changes in v2:
> > - remove downstream nodes and unused nodes
> > - use GPIO_ACTIVE_LOW for ps8640 gpios
> > - move trackpad to hana
> > ---
> >  arch/arm64/boot/dts/mediatek/Makefile         |    3 +
> >  .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
> >  .../boot/dts/mediatek/mt8173-elm-hana.dts     |   16 +
> >  .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   60 +
> >  arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   15 +
> >  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1040 +++++++++++++++++
> >  6 files changed, 1161 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> > index 458bbc422a94..b45a45a565a1 100644
> > --- a/arch/arm64/boot/dts/mediatek/Makefile
> > +++ b/arch/arm64/boot/dts/mediatek/Makefile
> > @@ -6,5 +6,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
> > new file mode 100644
> > index 000000000000..a3616bc3d859
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
> > @@ -0,0 +1,27 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright 2019 MediaTek Inc.
> > + */
> > +
> > +/dts-v1/;
> > +#include "mt8173-elm-hana.dtsi"
> > +
> > +/ {
> > +     model = "Mediatek Hana rev7 board";
> > +     compatible = "google,hana-rev7", "mediatek,mt8173";
> > +};
> > +
> > +&cpu_thermal {
> > +     trips {
> > +             cpu_crit: cpu_crit@0 {
> > +                     temperature = <100000>;
> > +                     type = "critical";
> > +             };
> > +     };
> > +};
> > +
> > +&gpio_keys {
> > +     /delete-node/tablet_mode;
> > +     /delete-node/volume_down;
> > +     /delete-node/volume_up;
> > +};
> > \ No newline at end of file
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
> > new file mode 100644
> > index 000000000000..8cbcc75192e3
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
> > @@ -0,0 +1,16 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright 2016 MediaTek Inc.
> > + */
> > +
> > +/dts-v1/;
> > +#include "mt8173-elm-hana.dtsi"
> > +
> > +/ {
> > +     model = "Mediatek Hana rev0 board";
> > +     compatible = "google,hana-rev6",
> > +                     "google,hana-rev5", "google,hana-rev4",
> > +                     "google,hana-rev3", "google,hana-rev2",
> > +                     "google,hana-rev1", "google,hana-rev0",
> > +                     "google,hana", "mediatek,mt8173";
> > +};
>
> I'm a bit confused about all this versions. Do you want to keep them for
> internal use, as I suppose only rev6 is available to the general public,
> correct? I'm fine with keeping the old revisions if that's of use for you,
> otherwise I'd prefer to delete them.
According to internal feedback system, at least rev3, rev6, rev7 are
in general public. I can delete rev0~rev2, since they are earlier
version device.
>
> Model name could be more verbose.
>
> > \ No newline at end of file
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> > new file mode 100644
> > index 000000000000..35e12b290947
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
> > @@ -0,0 +1,60 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright 2016 MediaTek Inc.
> > + */
> > +
> > +#include "mt8173-elm.dtsi"
> > +
> > +&i2c0 {
> > +     clock-frequency = <200000>;
> > +};
> > +
> > +&i2c3 {
> > +     touchscreen2: touchscreen@34 {
> > +             compatible = "melfas,mip4_ts";
> > +             reg = <0x34>;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
> > +     };
> > +
> > +     touchscreen3: touchscreen@20 {
> > +             compatible = "hid-over-i2c";
> > +             reg = <0x20>;
> > +             hid-descr-addr = <0x0020>;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
> > +     };
>
> In v1 you mentioned:
> "Partners wants to increase touchpad and touchscreen source (they choose
> synaptics) for hana 300e, and synaptics uses hid-over-i2c driver."
>
> So the partner uses the same compatible (google,hana-rev6?) for both devices?
>
Confirmed with others, second source devices share same compatible.
> > +};
> > +
> > +&i2c4 {
> > +     trackpad2: trackpad@2c {
> > +             compatible = "hid-over-i2c";
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <117 IRQ_TYPE_LEVEL_LOW>;
> > +             reg = <0x2c>;
> > +             hid-descr-addr = <0x0020>;
> > +             wakeup-source;
> > +     };
> > +};
> > +
> > +&mmc1 {
> > +     wp-gpios = <&pio 42 GPIO_ACTIVE_HIGH>;
> > +};
> > +
> > +&pio {
> > +     hdmi_mux_pins: hdmi_mux_pins {
> > +             pins2 {
> > +                     pinmux = <MT8173_PIN_98_URTS1__FUNC_GPIO98>;
> > +                     bias-pull-up;
> > +                     output-high;
> > +             };
> > +     };
> > +
> > +     mmc1_pins_default: mmc1default {
> > +             pins_wp {
> > +                     pinmux = <MT8173_PIN_42_DSI_TE__FUNC_GPIO42>;
> > +                     input-enable;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +};
> > \ No newline at end of file
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dts b/arch/arm64/boot/dts/mediatek/mt8173-elm.dts
> > new file mode 100644
> > index 000000000000..e5da2355760e
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dts
> > @@ -0,0 +1,15 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright 2016 MediaTek Inc.
> > + */
> > +
> > +/dts-v1/;
> > +#include "mt8173-elm.dtsi"
> > +
> > +/ {
> > +     model = "Mediatek Elm board";
> > +     compatible = "google,elm-rev8", "google,elm-rev7", "google,elm-rev6",
> > +                     "google,elm-rev5", "google,elm-rev4", "google,elm-rev3",
> > +                     "google,elm-rev2", "google,elm-rev1",
> > +                     "google,elm", "mediatek,mt8173";
> > +};
> > \ No newline at end of file
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > new file mode 100644
> > index 000000000000..2ac738bebe04
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > @@ -0,0 +1,1040 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright 2016 MediaTek Inc.
> > + */
> > +
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include "mt8173.dtsi"
> > +
> > +/ {
> > +     aliases {
> > +             serial0 = &uart0;
> > +             serial1 = &uart1;
> > +             serial2 = &uart2;
> > +             serial3 = &uart3;
> > +     };
> > +
> > +     memory@40000000 {
> > +             device_type = "memory";
> > +             reg = <0 0x40000000 0 0x80000000>;
> > +     };
> > +
> > +     backlight_lcd: backlight_lcd {
> > +             compatible = "pwm-backlight";
> > +             pwms = <&pwm0 0 1000000>;
> > +             brightness-levels = <
> > +                       0  16  32  48  64  80  96 112
> > +                     128 144 160 176 192 208 224 240
> > +                     255
> > +             >;
> > +             default-brightness-level = <9>;
> > +             power-supply = <&bl_fixed_reg>;
> > +             enable-gpios = <&pio 95 GPIO_ACTIVE_HIGH>;
> > +
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&disp_pwm0_pins>;
> > +             status = "okay";
> > +     };
> > +
> > +     bl_fixed_reg: fixedregulator@2 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "bl_fixed";
> > +             regulator-min-microvolt = <1800000>;
> > +             regulator-max-microvolt = <1800000>;
> > +             startup-delay-us = <1000>;
> > +             enable-active-high;
> > +             gpio = <&pio 32 GPIO_ACTIVE_HIGH>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&bl_fixed_pins>;
> > +     };
> > +
> > +     chosen {
> > +             stdout-path = &uart0;
> > +     };
> > +
> > +     gpio_keys: gpio-keys {
> > +             compatible = "gpio-keys";
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&gpio_keys_pins>;
> > +
> > +             lid {
> > +                     label = "Lid";
> > +                     gpios = <&pio 69 GPIO_ACTIVE_LOW>;
> > +                     linux,code = <0>; /* SW_LID */
> > +                     linux,input-type = <5>; /* EV_SW */
> > +                     gpio-key,wakeup;
> > +             };
> > +
> > +             power {
> > +                     label = "Power";
> > +                     gpios = <&pio 14 GPIO_ACTIVE_HIGH>;
> > +                     linux,code = <KEY_POWER>;
> > +                     debounce-interval = <30>;
> > +                     gpio-key,wakeup;
> > +             };
> > +
> > +             tablet_mode {
> > +                     label = "Tablet_mode";
> > +                     gpios = <&pio 121 GPIO_ACTIVE_HIGH>;
> > +                     linux,code = <1>; /* SW_TABLET_MODE */
>
> can't we use SW_TABLET_MODE fomr linux-event-codes.h?
>
Will fix this.
> > +                     linux,input-type = <5>; /* EV_SW */
>
> same here.
>
> > +                     gpio-key,wakeup;
> > +             };
> > +
> > +             volume_down {
> > +                     label = "Volume_down";
> > +                     gpios = <&pio 123 GPIO_ACTIVE_LOW>;
> > +                     linux,code = <KEY_VOLUMEDOWN>;
> > +             };
> > +
> > +             volume_up {
> > +                     label = "Volume_up";
> > +                     gpios = <&pio 124 GPIO_ACTIVE_LOW>;
> > +                     linux,code = <KEY_VOLUMEUP>;
> > +             };
> > +     };
> > +
> > +     panel: panel {
> > +             compatible = "lg,lp120up1";
> > +             power-supply = <&panel_fixed_3v3>;
> > +             ddc-i2c-bus = <&i2c0>;
> > +             backlight = <&backlight_lcd>;
> > +
> > +             port {
> > +                     panel_in: endpoint {
> > +                             remote-endpoint = <&ps8640_out>;
> > +                     };
> > +             };
> > +     };
> > +
> > +     panel_fixed_3v3: regulator@1 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "PANEL_3V3";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             enable-active-high;
> > +             gpio = <&pio 41 GPIO_ACTIVE_HIGH>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&panel_fixed_pins>;
> > +     };
> > +
> > +     ps8640_fixed_1v2: regulator@2 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "PS8640_1V2";
> > +             regulator-min-microvolt = <1200000>;
> > +             regulator-max-microvolt = <1200000>;
> > +             regulator-enable-ramp-delay = <2000>;
> > +             enable-active-high;
> > +             regulator-boot-on;
> > +             gpio = <&pio 30 GPIO_ACTIVE_HIGH>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&ps8640_fixed_pins>;
> > +     };
> > +
> > +     sdio_fixed_3v3: fixedregulator@0 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "3V3";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             gpio = <&pio 85 GPIO_ACTIVE_HIGH>;
>
> we don't need to set the pincontroller mux here?
>
Will double check on schematic and add it.
> > +     };
> > +
> > +     sound: sound {
> > +             compatible = "mediatek,mt8173-rt5650";
> > +             mediatek,audio-codec = <&rt5650 &hdmi0>;
> > +             mediatek,platform = <&afe>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&aud_i2s2>;
> > +
> > +             mediatek,mclk = <1>;
> > +             codec-capture {
> > +                     sound-dai = <&rt5650 1>;
> > +             };
> > +     };
> > +
> > +     hdmicon: connector {
> > +             compatible = "hdmi-connector";
> > +             label = "hdmi";
> > +             type = "a";
> > +             ddc-i2c-bus = <&hdmiddc0>;
> > +
> > +             port {
> > +                     hdmi_connector_in: endpoint {
> > +                             remote-endpoint = <&hdmi0_out>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&cec {
> > +     status = "okay";
> > +};
> > +
> > +&cpu0 {
> > +     proc-supply = <&mt6397_vpca15_reg>;
> > +};
> > +
> > +&cpu1 {
> > +     proc-supply = <&mt6397_vpca15_reg>;
> > +};
> > +
> > +&cpu2 {
> > +     proc-supply = <&da9211_vcpu_reg>;
> > +     sram-supply = <&mt6397_vsramca7_reg>;
> > +};
> > +
> > +&cpu3 {
> > +     proc-supply = <&da9211_vcpu_reg>;
> > +     sram-supply = <&mt6397_vsramca7_reg>;
> > +};
> > +
> > +&cpu_thermal {
> > +     sustainable-power = <4500>; /* milliwatts */
> > +     trips {
> > +             threshold: trip-point@0 {
> > +                     temperature = <60000>;
> > +             };
> > +
> > +             target: trip-point@1 {
> > +                     temperature = <65000>;
> > +             };
> > +     };
> > +};
> > +
> > +&dsi0 {
> > +     status = "okay";
> > +     ports {
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +
> > +             port@1 {
> > +                     dsi0_out: endpoint {
> > +                             remote-endpoint = <&ps8640_in>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&dpi0 {
> > +     status = "okay";
> > +};
> > +
> > +&hdmi0 {
> > +     status = "okay";
> > +     ports {
> > +             port@1 {
> > +                     reg = <1>;
> > +
> > +                     hdmi0_out: endpoint {
> > +                             remote-endpoint = <&hdmi_connector_in>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&hdmi_phy {
> > +     status = "okay";
> > +     mediatek,ibias = <0xc>;
> > +};
> > +
> > +&i2c0 {
> > +     status = "okay";
> > +
> > +     rt5650: audio-codec@1a {
> > +             compatible = "realtek,rt5650";
> > +             reg = <0x1a>;
> > +             avdd-supply = <&mt6397_vgp1_reg>;
> > +             cpvdd-supply = <&mt6397_vcama_reg>;
>
> Hm, only defined for "realtek,rt5663", I suppose that's an inconsistency in the
> binding documentation. Can you please double check?
>
This one? https://github.com/torvalds/linux/blob/master/sound/soc/codecs/rt5645.c#L3582

> > +             interrupt-parent = <&pio>;
> > +             interrupts = <3 IRQ_TYPE_EDGE_BOTH>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&rt5650_irq>;
> > +             #sound-dai-cells = <1>;
> > +             realtek,dmic1-data-pin = <2>;
> > +             realtek,jd-mode = <2>;
> > +     };
> > +
> > +     ps8640: edp-bridge@8 {
> > +             compatible = "parade,ps8640";
> > +             reg = <0x8>;
> > +             powerdown-gpios = <&pio 127 GPIO_ACTIVE_LOW>;
> > +             reset-gpios = <&pio 115 GPIO_ACTIVE_LOW>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&ps8640_pins>;
> > +             vdd12-supply = <&ps8640_fixed_1v2>;
> > +             vdd33-supply = <&mt6397_vgp2_reg>;
> > +
> > +             ports {
> > +                     #address-cells = <1>;
> > +                     #size-cells = <0>;
> > +
> > +                     port@0 {
> > +                             reg = <0>;
> > +
> > +                             ps8640_in: endpoint {
> > +                                     remote-endpoint = <&dsi0_out>;
> > +                             };
> > +                     };
> > +
> > +                     port@1 {
> > +                             reg = <1>;
> > +
> > +                             ps8640_out: endpoint {
> > +                                     remote-endpoint = <&panel_in>;
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&i2c1 {
> > +     clock-frequency = <1500000>;
> > +     status = "okay";
> > +
> > +     da9211: da9211@68 {
> > +             compatible = "dlg,da9211";
> > +             reg = <0x68>;
> > +
>
> no interrupts? binding description have this stated as required. what happens
> when the device raises an interrupt?
Will double check on schematic and add it.
>
> > +             regulators {
> > +                     da9211_vcpu_reg: BUCKA {
> > +                             regulator-name = "VBUCKA";
> > +                             regulator-min-microvolt = < 700000>;
> > +                             regulator-max-microvolt = <1310000>;
> > +                             regulator-min-microamp  = <2000000>;
> > +                             regulator-max-microamp  = <4400000>;
> > +                             regulator-ramp-delay = <10000>;
> > +                             regulator-always-on;
> > +                             regulator-allowed-modes = <0 1>;
> > +                     };
> > +
> > +                     da9211_vgpu_reg: BUCKB {
> > +                             regulator-name = "VBUCKB";
> > +                             regulator-min-microvolt = < 700000>;
> > +                             regulator-max-microvolt = <1310000>;
> > +                             regulator-min-microamp  = <2000000>;
> > +                             regulator-max-microamp  = <3000000>;
> > +                             regulator-ramp-delay = <10000>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&i2c2 {
> > +     status = "okay";
> > +
> > +     tpm: tpm@20 {
> > +             compatible = "infineon,slb9645tt";
> > +             reg = <0x20>;
> > +             powered-while-suspended;
> > +     };
> > +};
> > +
> > +&i2c3 {
> > +     clock-frequency = <400000>;
> > +     status = "okay";
> > +
> > +     touchscreen: touchscreen@10 {
> > +             compatible = "elan,ekth3500";
> > +             reg = <0x10>;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
> > +     };
> > +};
> > +
> > +&i2c4 {
> > +     clock-frequency = <400000>;
> > +     status = "okay";
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&trackpad_irq>;
>
> Why not move the pinctrl properties into the trackpad node?
>
As second source trackpad device and original device shares same
compatible string (rev id), we need to add 2nd trackpad node here.
According to previous log (since I don't have a second source trackpad
device to test), adding pinctrl in each trackpad node, there would be
error:
 [    0.643501] mediatek-mt8173-pinctrl 1000b000.pinctrl: pin URXD3
already requested by 7-0015; cannot claim for 7-002c
 [    0.643525] mediatek-mt8173-pinctrl 1000b000.pinctrl: pin-117
(7-002c) status -22
 [    0.643548] mediatek-mt8173-pinctrl 1000b000.pinctrl: could not
request pin 117 (URXD3) from group URXD3  on device 1000b000.pinctrl
 [    0.643568] i2c_hid 7-002c: Error applying setting, reverse things back
 [    0.643867] i2c 7-002c: Driver i2c_hid requests probe deferral


> > +
> > +     trackpad: trackpad@15 {
> > +             compatible = "elan,ekth3000";
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <117 IRQ_TYPE_LEVEL_LOW>;
> > +             reg = <0x15>;
> > +             vcc-supply = <&mt6397_vgp6_reg>;
> > +             wakeup-source;
> > +     };
> > +};
> > +
> > +&mipi_tx0 {
> > +     status = "okay";
> > +};
> > +
> > +&mmc0 {
> > +     status = "okay";
> > +     pinctrl-names = "default", "state_uhs";
> > +     pinctrl-0 = <&mmc0_pins_default>;
> > +     pinctrl-1 = <&mmc0_pins_uhs>;
> > +     bus-width = <8>;
> > +     max-frequency = <200000000>;
> > +     cap-mmc-highspeed;
> > +     mmc-hs200-1_8v;
> > +     mmc-hs400-1_8v;
> > +     cap-mmc-hw-reset;
> > +     hs400-ds-delay = <0x14015>;
> > +     mediatek,hs200-cmd-int-delay=<30>;
> > +     mediatek,hs400-cmd-int-delay=<14>;
> > +     mediatek,hs400-cmd-resp-sel-rising;
> > +     vmmc-supply = <&mt6397_vemc_3v3_reg>;
> > +     vqmmc-supply = <&mt6397_vio18_reg>;
> > +     assigned-clocks = <&topckgen CLK_TOP_MSDC50_0_SEL>;
> > +     assigned-clock-parents = <&topckgen CLK_TOP_MSDCPLL_D2>;
> > +     non-removable;
> > +};
> > +
> > +&mmc1 {
> > +     status = "okay";
> > +     pinctrl-names = "default", "state_uhs";
> > +     pinctrl-0 = <&mmc1_pins_default>;
> > +     pinctrl-1 = <&mmc1_pins_uhs>;
> > +     bus-width = <4>;
> > +     max-frequency = <200000000>;
> > +     cap-sd-highspeed;
> > +     sd-uhs-sdr50;
> > +     sd-uhs-sdr104;
> > +     cd-gpios = <&pio 1 GPIO_ACTIVE_HIGH>;
> > +     vmmc-supply = <&mt6397_vmch_reg>;
> > +     vqmmc-supply = <&mt6397_vmc_reg>;
> > +};
> > +
> > +&mmc3 {
> > +     status = "okay";
> > +     pinctrl-names = "default", "state_uhs";
> > +     pinctrl-0 = <&mmc3_pins_default>;
> > +     pinctrl-1 = <&mmc3_pins_uhs>;
> > +     bus-width = <4>;
> > +     max-frequency = <200000000>;
> > +     cap-sd-highspeed;
> > +     sd-uhs-sdr50;
> > +     sd-uhs-sdr104;
> > +     sdr104-clk-delay = <5>;
>
> Not an upstream property, please delete it.
>
> > +     keep-power-in-suspend;
> > +     enable-sdio-wakeup;
> > +     cap-sdio-irq;
> > +     vmmc-supply = <&sdio_fixed_3v3>;
> > +     vqmmc-supply = <&mt6397_vgp3_reg>;
> > +     non-removable;
> > +     cap-power-off-card;
> > +
> > +     #address-cells = <1>;
> > +     #size-cells = <0>;
> > +
> > +     btmrvl: btmrvl@2 {
> > +             compatible = "marvell,sd8897-bt";
> > +             reg = <2>;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <119 IRQ_TYPE_LEVEL_LOW>;
> > +             marvell,wakeup-pin = /bits/ 16 <0x0d>;
> > +             marvell,wakeup-gap-ms = /bits/ 16 <0x64>;
> > +     };
> > +
> > +     mwifiex: mwifiex@1 {
> > +             compatible = "marvell,sd8897";
> > +             reg = <1>;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <38 IRQ_TYPE_LEVEL_LOW>;
> > +             marvell,wakeup-pin = <3>;
> > +             marvell,caldata_ed_mac = /bits/ 8 <
> > +0x01 0x00 0x07 0x00 0x14 0x00 0x01 0x00 0x00 0x00 0x12 0x00 0x02 0x00 0x01 0x00
> > +0x01 0x00 0x00 0x00 0x12 0x00 0x02 0x00 0x01 0x00
> > +             >;
>
> Not an upstream property, please delete.
>
> > +     };
> > +};
> > +
> > +&nor_flash {
> > +     status = "okay";
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&nor_gpio1_pins>;
> > +     bus-width = <8>;
> > +     max-frequency = <50000000>;
> > +     non-removable;
> > +     flash@0 {
> > +             compatible = "jedec,spi-nor";
> > +             reg = <0>;
> > +     };
> > +};
> > +
> > +&pio {
> > +     aud_i2s2: aud_i2s2 {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_128_I2S0_LRCK__FUNC_I2S1_WS>,
> > +                              <MT8173_PIN_129_I2S0_BCK__FUNC_I2S1_BCK>,
> > +                              <MT8173_PIN_130_I2S0_MCK__FUNC_I2S1_MCK>,
> > +                              <MT8173_PIN_131_I2S0_DATA0__FUNC_I2S1_DO_1>,
> > +                              <MT8173_PIN_12_EINT12__FUNC_I2S2_WS>,
> > +                              <MT8173_PIN_13_EINT13__FUNC_I2S2_BCK>,
> > +                              <MT8173_PIN_132_I2S0_DATA1__FUNC_I2S2_DI_2>;
> > +                     bias-pull-down;
> > +             };
> > +     };
> > +
> > +     bl_fixed_pins: bl_fixed_pins {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_32_UTXD2__FUNC_GPIO32>;
> > +                     output-low;
> > +             };
> > +     };
> > +
> > +     bt_wake_pins: bt_wake_pins {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_119_KPROW0__FUNC_GPIO119>;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +
> > +     disp_pwm0_pins: disp_pwm0_pins {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_87_DISP_PWM0__FUNC_DISP_PWM0>;
> > +                     output-low;
> > +             };
> > +     };
> > +
> > +     gpio_keys_pins: gpio_keys_pins {
> > +             volume_pins {
> > +                     pinmux = <MT8173_PIN_123_KPCOL1__FUNC_GPIO123>,
> > +                              <MT8173_PIN_124_KPCOL2__FUNC_GPIO124>;
> > +                     bias-pull-up;
> > +             };
> > +
> > +             tablet_mode_pins {
> > +                     pinmux = <MT8173_PIN_121_KPROW2__FUNC_GPIO121>;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +
> > +     hdmi_mux_pins: hdmi_mux_pins {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_36_DAISYNC__FUNC_GPIO36>;
> > +             };
> > +     };
> > +
> > +     mmc0_pins_default: mmc0default {
> > +             pins_cmd_dat {
> > +                     pinmux = <MT8173_PIN_57_MSDC0_DAT0__FUNC_MSDC0_DAT0>,
> > +                              <MT8173_PIN_58_MSDC0_DAT1__FUNC_MSDC0_DAT1>,
> > +                              <MT8173_PIN_59_MSDC0_DAT2__FUNC_MSDC0_DAT2>,
> > +                              <MT8173_PIN_60_MSDC0_DAT3__FUNC_MSDC0_DAT3>,
> > +                              <MT8173_PIN_61_MSDC0_DAT4__FUNC_MSDC0_DAT4>,
> > +                              <MT8173_PIN_62_MSDC0_DAT5__FUNC_MSDC0_DAT5>,
> > +                              <MT8173_PIN_63_MSDC0_DAT6__FUNC_MSDC0_DAT6>,
> > +                              <MT8173_PIN_64_MSDC0_DAT7__FUNC_MSDC0_DAT7>,
> > +                              <MT8173_PIN_66_MSDC0_CMD__FUNC_MSDC0_CMD>;
> > +                             bias-pull-up;
> > +             };
> > +
> > +             pins_clk {
> > +                     pinmux = <MT8173_PIN_65_MSDC0_CLK__FUNC_MSDC0_CLK>;
> > +                             bias-pull-down;
>
> identation.
>
> > +             };
> > +
> > +             pins_rst {
> > +                     pinmux = <MT8173_PIN_68_MSDC0_RST___FUNC_MSDC0_RSTB>;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +
> > +     mmc1_pins_default: mmc1default {
> > +             pins_cmd_dat {
> > +                     pinmux = <MT8173_PIN_73_MSDC1_DAT0__FUNC_MSDC1_DAT0>,
> > +                              <MT8173_PIN_74_MSDC1_DAT1__FUNC_MSDC1_DAT1>,
> > +                              <MT8173_PIN_75_MSDC1_DAT2__FUNC_MSDC1_DAT2>,
> > +                              <MT8173_PIN_76_MSDC1_DAT3__FUNC_MSDC1_DAT3>,
> > +                              <MT8173_PIN_78_MSDC1_CMD__FUNC_MSDC1_CMD>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_4mA>;
> > +                     bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> > +             };
> > +
> > +             pins_clk {
> > +                     pinmux = <MT8173_PIN_77_MSDC1_CLK__FUNC_MSDC1_CLK>;
> > +                     bias-pull-down;
> > +                     drive-strength = <MTK_DRIVE_4mA>;
> > +             };
> > +
> > +             pins_insert {
> > +                     pinmux = <MT8173_PIN_1_EINT1__FUNC_GPIO1>;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +
> > +     mmc3_pins_default: mmc3default {
> > +             pins_dat {
> > +                     pinmux = <MT8173_PIN_22_MSDC3_DAT0__FUNC_MSDC3_DAT0>,
> > +                              <MT8173_PIN_23_MSDC3_DAT1__FUNC_MSDC3_DAT1>,
> > +                              <MT8173_PIN_24_MSDC3_DAT2__FUNC_MSDC3_DAT2>,
> > +                              <MT8173_PIN_25_MSDC3_DAT3__FUNC_MSDC3_DAT3>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_8mA>;
> > +                     bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> > +             };
> > +
> > +             pins_cmd {
> > +                     pinmux = <MT8173_PIN_27_MSDC3_CMD__FUNC_MSDC3_CMD>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_8mA>;
> > +                     bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> > +             };
> > +
> > +             pins_clk {
> > +                     pinmux = <MT8173_PIN_26_MSDC3_CLK__FUNC_MSDC3_CLK>;
> > +                     bias-pull-down;
> > +                     drive-strength = <MTK_DRIVE_8mA>;
> > +             };
> > +
> > +             pins_pdn {
> > +                     pinmux = <MT8173_PIN_85_AUD_DAT_MOSI__FUNC_GPIO85>;
> > +                     output-low;
> > +             };
> > +     };
> > +
> > +     mmc0_pins_uhs: mmc0 {
> > +             pins_cmd_dat {
> > +                     pinmux = <MT8173_PIN_57_MSDC0_DAT0__FUNC_MSDC0_DAT0>,
> > +                              <MT8173_PIN_58_MSDC0_DAT1__FUNC_MSDC0_DAT1>,
> > +                              <MT8173_PIN_59_MSDC0_DAT2__FUNC_MSDC0_DAT2>,
> > +                              <MT8173_PIN_60_MSDC0_DAT3__FUNC_MSDC0_DAT3>,
> > +                              <MT8173_PIN_61_MSDC0_DAT4__FUNC_MSDC0_DAT4>,
> > +                              <MT8173_PIN_62_MSDC0_DAT5__FUNC_MSDC0_DAT5>,
> > +                              <MT8173_PIN_63_MSDC0_DAT6__FUNC_MSDC0_DAT6>,
> > +                              <MT8173_PIN_64_MSDC0_DAT7__FUNC_MSDC0_DAT7>,
> > +                              <MT8173_PIN_66_MSDC0_CMD__FUNC_MSDC0_CMD>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_6mA>;
> > +                     bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
> > +             };
> > +
> > +             pins_clk {
> > +                     pinmux = <MT8173_PIN_65_MSDC0_CLK__FUNC_MSDC0_CLK>;
> > +                     drive-strength = <MTK_DRIVE_6mA>;
> > +                     bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
> > +             };
> > +
> > +             pins_ds {
> > +                     pinmux = <MT8173_PIN_67_MSDC0_DSL__FUNC_MSDC0_DSL>;
> > +                     drive-strength = <MTK_DRIVE_10mA>;
> > +                     bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
> > +             };
> > +
> > +             pins_rst {
> > +                     pinmux = <MT8173_PIN_68_MSDC0_RST___FUNC_MSDC0_RSTB>;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +
> > +     mmc1_pins_uhs: mmc1 {
> > +             pins_cmd_dat {
> > +                     pinmux = <MT8173_PIN_73_MSDC1_DAT0__FUNC_MSDC1_DAT0>,
> > +                              <MT8173_PIN_74_MSDC1_DAT1__FUNC_MSDC1_DAT1>,
> > +                              <MT8173_PIN_75_MSDC1_DAT2__FUNC_MSDC1_DAT2>,
> > +                              <MT8173_PIN_76_MSDC1_DAT3__FUNC_MSDC1_DAT3>,
> > +                              <MT8173_PIN_78_MSDC1_CMD__FUNC_MSDC1_CMD>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_6mA>;
> > +                     bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> > +             };
> > +
> > +             pins_clk {
> > +                     pinmux = <MT8173_PIN_77_MSDC1_CLK__FUNC_MSDC1_CLK>;
> > +                     drive-strength = <MTK_DRIVE_8mA>;
> > +                     bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> > +             };
> > +     };
> > +
> > +     mmc3_pins_uhs: mmc3 {
> > +             pins_dat {
> > +                     pinmux = <MT8173_PIN_22_MSDC3_DAT0__FUNC_MSDC3_DAT0>,
> > +                              <MT8173_PIN_23_MSDC3_DAT1__FUNC_MSDC3_DAT1>,
> > +                              <MT8173_PIN_24_MSDC3_DAT2__FUNC_MSDC3_DAT2>,
> > +                              <MT8173_PIN_25_MSDC3_DAT3__FUNC_MSDC3_DAT3>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_8mA>;
> > +                     bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> > +             };
> > +
> > +             pins_cmd {
> > +                     pinmux = <MT8173_PIN_27_MSDC3_CMD__FUNC_MSDC3_CMD>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_8mA>;
> > +                     bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
> > +             };
> > +
> > +             pins_clk {
> > +                     pinmux = <MT8173_PIN_26_MSDC3_CLK__FUNC_MSDC3_CLK>;
> > +                     drive-strength = <MTK_DRIVE_8mA>;
> > +                     bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
> > +             };
> > +     };
> > +
> > +     nor_gpio1_pins: nor {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_6_EINT6__FUNC_SFCS0>,
> > +                              <MT8173_PIN_7_EINT7__FUNC_SFHOLD>,
> > +                              <MT8173_PIN_8_EINT8__FUNC_SFIN>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_4mA>;
> > +                     bias-pull-up;
> > +             };
> > +
> > +             pins2 {
> > +                     pinmux = <MT8173_PIN_5_EINT5__FUNC_SFOUT>;
> > +                     drive-strength = <MTK_DRIVE_4mA>;
> > +                     bias-pull-up;
> > +             };
> > +
> > +             pins_clk {
> > +                     pinmux = <MT8173_PIN_9_EINT9__FUNC_SFCK>;
> > +                     input-enable;
> > +                     drive-strength = <MTK_DRIVE_4mA>;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +
> > +     panel_fixed_pins: panel_fixed_pins {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_41_CMMCLK__FUNC_GPIO41>;
> > +             };
> > +     };
> > +
> > +     ps8640_pins: ps8640_pins {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_92_PCM_CLK__FUNC_GPIO92>,
> > +                              <MT8173_PIN_115_URTS0__FUNC_GPIO115>,
> > +                              <MT8173_PIN_127_LCM_RST__FUNC_GPIO127>;
> > +             };
> > +     };
> > +
> > +     ps8640_fixed_pins: ps8640_fixed_pins {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_30_URTS2__FUNC_GPIO30>;
> > +             };
> > +     };
> > +
> > +     rt5650_irq: rt5650_irq {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_3_EINT3__FUNC_GPIO3>;
> > +                     bias-pull-down;
> > +             };
> > +     };
> > +
> > +     spi_pins_a: spi1 {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_0_EINT0__FUNC_GPIO0>;
> > +                     bias-pull-up;
> > +             };
> > +
> > +             pins_spi {
> > +                     pinmux = <MT8173_PIN_102_MSDC2_DAT2__FUNC_SPI_CK_1_>,
> > +                              <MT8173_PIN_103_MSDC2_DAT3__FUNC_SPI_MI_1_>,
> > +                              <MT8173_PIN_104_MSDC2_CLK__FUNC_SPI_MO_1_>,
> > +                              <MT8173_PIN_105_MSDC2_CMD__FUNC_SPI_CS_1_>;
> > +                     bias-disable;
> > +             };
> > +     };
> > +
> > +     trackpad_irq: trackpad_irq {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_117_URXD3__FUNC_GPIO117>;
> > +                     input-enable;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +
> > +     usb_pins: usb@0 {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_101_MSDC2_DAT1__FUNC_GPIO101>;
> > +                     output-high;
> > +                     bias-disable;
> > +             };
> > +     };
> > +
> > +     wifi_wake_pins: wifi_wake_pins {
> > +             pins1 {
> > +                     pinmux = <MT8173_PIN_38_CONN_RST__FUNC_GPIO38>;
> > +                     bias-pull-up;
> > +             };
> > +     };
> > +};
> > +
> > +&pwm0 {
> > +     status = "okay";
> > +};
> > +
> > +&pwrap {
> > +     pmic: mt6397 {
> > +             compatible = "mediatek,mt6397";
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
> > +             interrupt-controller;
> > +             #interrupt-cells = <2>;
> > +
> > +             mt6397rtc: mt6397rtc {
>
> AFAIK this should be
> rtc: mt6397rtc {
>
> Please fix that for all subnodes.
>
Will fix in next version
> > +                     compatible = "mediatek,mt6397-rtc";
> > +             };
> > +
> > +             syscfg_pctl_pmic: syscfg_pctl_pmic@c000 {
> > +                     compatible = "mediatek,mt6397-pctl-pmic-syscfg",
> > +                                  "syscon";
> > +                     reg = <0 0x0000c000 0 0x0108>;
>
> not an upstream compatible, please delete the node.
>
> > +             };
> > +
> > +             pio6397: pinctrl@c000 {
> > +                     compatible = "mediatek,mt6397-pinctrl";
> > +                     pins-are-numbered;
> > +                     gpio-controller;
> > +                     #gpio-cells = <2>;
> > +             };
> > +
> > +             mt6397clock: mt6397clock {
> > +                     compatible = "mediatek,mt6397-clk";
> > +                     #clock-cells = <1>;
> > +             };
> > +
> > +             mt6397regulator: mt6397regulator {
> > +                     compatible = "mediatek,mt6397-regulator";
> > +
> > +                     mt6397_vpca15_reg: buck_vpca15 {
> > +                             regulator-compatible = "buck_vpca15";
> > +                             regulator-name = "vpca15";
> > +                             regulator-min-microvolt = < 700000>;
> > +                             regulator-max-microvolt = <1350000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-always-on;
> > +                             regulator-allowed-modes = <0 1>;
> > +                     };
> > +
> > +                     mt6397_vpca7_reg: buck_vpca7 {
> > +                             regulator-compatible = "buck_vpca7";
> > +                             regulator-name = "vpca7";
> > +                             regulator-min-microvolt = < 700000>;
> > +                             regulator-max-microvolt = <1350000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-enable-ramp-delay = <115>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_vsramca15_reg: buck_vsramca15 {
> > +                             regulator-compatible = "buck_vsramca15";
> > +                             regulator-name = "vsramca15";
> > +                             regulator-min-microvolt = < 700000>;
> > +                             regulator-max-microvolt = <1350000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_vsramca7_reg: buck_vsramca7 {
> > +                             regulator-compatible = "buck_vsramca7";
> > +                             regulator-name = "vsramca7";
> > +                             regulator-min-microvolt = < 700000>;
> > +                             regulator-max-microvolt = <1350000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_vcore_reg: buck_vcore {
> > +                             regulator-compatible = "buck_vcore";
> > +                             regulator-name = "vcore";
> > +                             regulator-min-microvolt = < 700000>;
> > +                             regulator-max-microvolt = <1350000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_vgpu_reg: buck_vgpu {
> > +                             regulator-compatible = "buck_vgpu";
> > +                             regulator-name = "vgpu";
> > +                             regulator-min-microvolt = < 700000>;
> > +                             regulator-max-microvolt = <1350000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-enable-ramp-delay = <115>;
> > +                     };
> > +
> > +                     mt6397_vdrm_reg: buck_vdrm {
> > +                             regulator-compatible = "buck_vdrm";
> > +                             regulator-name = "vdrm";
> > +                             regulator-min-microvolt = <1200000>;
> > +                             regulator-max-microvolt = <1400000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_vio18_reg: buck_vio18 {
> > +                             regulator-compatible = "buck_vio18";
> > +                             regulator-name = "vio18";
> > +                             regulator-min-microvolt = <1620000>;
> > +                             regulator-max-microvolt = <1980000>;
> > +                             regulator-ramp-delay = <12500>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_vtcxo_reg: ldo_vtcxo {
> > +                             regulator-compatible = "ldo_vtcxo";
> > +                             regulator-name = "vtcxo";
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_va28_reg: ldo_va28 {
> > +                             regulator-compatible = "ldo_va28";
> > +                             regulator-name = "va28";
> > +                     };
> > +
> > +                     mt6397_vcama_reg: ldo_vcama {
> > +                             regulator-compatible = "ldo_vcama";
> > +                             regulator-name = "vcama";
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <1800000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +
> > +                     mt6397_vio28_reg: ldo_vio28 {
> > +                             regulator-compatible = "ldo_vio28";
> > +                             regulator-name = "vio28";
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_vusb_reg: ldo_vusb {
> > +                             regulator-compatible = "ldo_vusb";
> > +                             regulator-name = "vusb";
> > +                     };
> > +
> > +                     mt6397_vmc_reg: ldo_vmc {
> > +                             regulator-compatible = "ldo_vmc";
> > +                             regulator-name = "vmc";
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +
> > +                     mt6397_vmch_reg: ldo_vmch {
> > +                             regulator-compatible = "ldo_vmch";
> > +                             regulator-name = "vmch";
> > +                             regulator-min-microvolt = <3000000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +
> > +                     mt6397_vemc_3v3_reg: ldo_vemc3v3 {
> > +                             regulator-compatible = "ldo_vemc3v3";
> > +                             regulator-name = "vemc_3v3";
> > +                             regulator-min-microvolt = <3000000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +
> > +                     mt6397_vgp1_reg: ldo_vgp1 {
> > +                             regulator-compatible = "ldo_vgp1";
> > +                             regulator-name = "vcamd";
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <1800000>;
> > +                             regulator-enable-ramp-delay = <240>;
> > +                     };
> > +
> > +                     mt6397_vgp2_reg: ldo_vgp2 {
> > +                             regulator-compatible = "ldo_vgp2";
> > +                             regulator-name = "vcamio";
> > +                             regulator-min-microvolt = <3300000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +
> > +                     mt6397_vgp3_reg: ldo_vgp3 {
> > +                             regulator-compatible = "ldo_vgp3";
> > +                             regulator-name = "vcamaf";
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <1800000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +
> > +                     mt6397_vgp4_reg: ldo_vgp4 {
> > +                             regulator-compatible = "ldo_vgp4";
> > +                             regulator-name = "vgp4";
> > +                             regulator-min-microvolt = <1200000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +
> > +                     mt6397_vgp5_reg: ldo_vgp5 {
> > +                             regulator-compatible = "ldo_vgp5";
> > +                             regulator-name = "vgp5";
> > +                             regulator-min-microvolt = <1200000>;
> > +                             regulator-max-microvolt = <3000000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +
> > +                     mt6397_vgp6_reg: ldo_vgp6 {
> > +                             regulator-compatible = "ldo_vgp6";
> > +                             regulator-name = "vgp6";
> > +                             regulator-min-microvolt = <3300000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     mt6397_vibr_reg: ldo_vibr {
> > +                             regulator-compatible = "ldo_vibr";
> > +                             regulator-name = "vibr";
> > +                             regulator-min-microvolt = <1300000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-enable-ramp-delay = <218>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&spi {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&spi_pins_a>;
> > +     mediatek,pad-select = <1>;
> > +     status = "okay";
> > +     /* clients */
> > +     cros_ec: ec@0 {
> > +             compatible = "google,cros-ec-spi";
> > +             reg = <0x0>;
> > +             spi-max-frequency = <12000000>;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> > +             google,cros-ec-spi-msg-delay = <500>;
> > +
> > +             i2c_tunnel: i2c-tunnel@0 {
> > +                     compatible = "google,cros-ec-i2c-tunnel";
> > +                     google,remote-bus = <0>;
> > +                     #address-cells = <1>;
> > +                     #size-cells = <0>;
> > +
> > +                     battery: sbs-battery@b {
> > +                             compatible = "sbs,sbs-battery";
> > +                             reg = <0xb>;
> > +                             sbs,i2c-retry-count = <2>;
> > +                             sbs,poll-retry-count = <1>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&thermal {
> > +     bank0-supply = <&mt6397_vpca15_reg>;
> > +     bank1-supply = <&da9211_vcpu_reg>;
> > +};
> > +
> > +&uart0 {
> > +     status = "okay";
> > +};
> > +
> > +&ssusb {
> > +     dr_mode = "host";
> > +     wakeup-source;
> > +     vusb33-supply = <&mt6397_vusb_reg>;
> > +     status = "okay";
> > +};
> > +
> > +&usb_host {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&usb_pins>;
> > +     vusb33-supply = <&mt6397_vusb_reg>;
> > +     status = "okay";
> > +};
> > +
> > +#include "../../../../arm/boot/dts/cros-ec-keyboard.dtsi"
> Why don't we use
> #include <arm/cros-ec-keyboard.dtsi> ?
>
Will fix in next version
> > \ No newline at end of file
> >
>
> As Yingjoe already mentioned, please add a newline :)
>
> Regards,
> Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
