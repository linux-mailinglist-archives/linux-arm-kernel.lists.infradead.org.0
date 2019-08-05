Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B02D8147E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 10:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCrMq4u+ZoaTpwkWaULXxZfiCgRaRnT2Q16p8vt+sH0=; b=L30Kvi4MfI7KuJ
	sHEFzDF2hRhOF1P+yT/rAL+qa8FZEqhsXIwFjae1h0ny1WeVm7I4ECDizQVf1LgqtDlcztJbaQkhO
	c9Jg6FpZdNrsxOfyZYyebYOQS65lgDb9sBsaElpuJWd6/3PCcu+cHnZXPftpUF7M7N9gMzBhQ23qN
	KditiG4V27NT8PaXCE7S1zWqxM8iz+16t64Hr1wzFmwcN954m5bG9SQlMvQ1DCu37E+Y4zKqaWoHB
	vN5kLnf8jhhqULVoVVlUdDj/hQhwsCAC6qbV1MBUUX1ItvUOx1ubxnE3CdKu36PIwjCJC+8W9w+1V
	S5IxAKHuWn8D0gvvQrtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYjn-00042q-2y; Mon, 05 Aug 2019 08:53:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYjY-00042O-OI
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:52:51 +0000
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE9C32182B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  5 Aug 2019 08:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564995166;
 bh=vwNKIy6DufbutbXl3lNpnCgQpoO4XIh9RglZp3b6EgY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zaI0VBYGNFwrbBTH9mq34wllWwxk2q8oV1MOF+dSLhF8V0uDYekQnb4laPUfHrG2x
 rGvnLoV2YeocMnuyp+KXQ0mO1SS6m8ZOwPEVEVImjJLu3mXgKHgMknz/T/5YlUdavl
 6FF+G3KLkeQ2kBoxdaXTyi7xEgRP6ku4p6kt50K0=
Received: by mail-lf1-f43.google.com with SMTP id c19so57277203lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:52:45 -0700 (PDT)
X-Gm-Message-State: APjAAAXXrEPt39+QLoVqbFufq16yfDGxx+og3eCTDCVlUbg89veAiRGC
 S89xrLYWZidqW5/QTmHW4QGw6Aip4RxnDHFii40=
X-Google-Smtp-Source: APXvYqwGxVR0sVv2PvtAY+wYpXn4AmvyH4pVbscQWmGwEBawBb7zdiyTdyebPgS8zZPPk8PdEg6hakfHgIJ2Op5LwNo=
X-Received: by 2002:a19:f007:: with SMTP id p7mr9950833lfc.24.1564995163993;
 Mon, 05 Aug 2019 01:52:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190729172007.3275-1-krzk@kernel.org>
 <20190729172007.3275-2-krzk@kernel.org>
 <20190803154724.GS8870@X250.getinternet.no>
In-Reply-To: <20190803154724.GS8870@X250.getinternet.no>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 5 Aug 2019 10:52:32 +0200
X-Gmail-Original-Message-ID: <CAJKOXPew1Tk0ySNyJ=KwaZ2Zv4N8a7569SNHSet-nLqqdqFEcA@mail.gmail.com>
Message-ID: <CAJKOXPew1Tk0ySNyJ=KwaZ2Zv4N8a7569SNHSet-nLqqdqFEcA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] ARM: dts: imx6ul-kontron-n6310: Add Kontron
 i.MX6UL N6310 SoM and boards
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015248_835006_F3B8273F 
X-CRM114-Status: GOOD (  26.78  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 3 Aug 2019 at 17:47, Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Jul 29, 2019 at 07:20:07PM +0200, Krzysztof Kozlowski wrote:
> > Add support for i.MX6UL modules from Kontron Electronics GmbH (before
> > acquisition: Exceet Electronics) and evalkit boards based on it:
> >
> > 1. N6310 SOM: i.MX6 UL System-on-Module, a 25x25 mm solderable module
> >    (LGA pads and pin castellations) with 256 MB RAM, 1 MB NOR-Flash,
> >    256 MB NAND and other interfaces,
> > 2. N6310 S: evalkit, w/wo eMMC, without display,
> > 3. N6310 S 43: evalkit with 4.3" display,
> > 4. N6310 S 50: evalkit with 5.0" display.
> >
> > This includes device nodes for unsupported displays (Admatec
> > T043C004800272T2A and T070P133T0S301).
>
> Do not include unsupported devices.

OK

>
> >
> > The work is based on Exceet/Kontron source code (GPLv2) with numerous
> > changes:
> > 1. Reorganize files,
> > 2. Rename Exceet -> Kontron,
> > 3. Rename models/compatibles to match newest Kontron product naming,
> > 4. Fix coding style errors and adjust to device tree coding guidelines,
> > 5. Fix DTC warnings,
> > 6. Extend compatibles so eval boards inherit the SoM compatible,
> > 7. Use defines instead of GPIO and interrupt flag values,
> > 8. Use proper vendor compatible for Macronix SPI NOR,
> > 9. Sort nodes alphabetically.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >
> > ---
> >
> > Changes since v2, after Fabio's review:
> > 1. Add "imx6ul" compatible to board name (that's what I understood from
> >    review),
> > 2. Add vendor/device prefix to eeprom and document the compatible,
> > 3. Use "admatecde" as vendor compatible to avoid confusion with Admatec
> >    AG in Switzerland (also making LCD panels),
> > 4. Use generic names for nodes,
> > 5. Use IRQ_TYPE_LEVEL_LOW,
> > 6. Move iomux to the end of files,
> > 7. Remove regulators node (include regulators in top level),
> > 8. Remove cpu clock-frequency,
> > 9. Other minor fixes pointed by Fabio.
> >
> > Changes since v1, after Frieder's review:
> > 1. Remove unneeded license notes,
> > 2. Add Kontron copyright (2018),
> > 3. Rename the files/models/compatibles to new naming - N6310,
> > 4. Remove unneeded CPU operating points override,
> > 5. Switch regulator nodes into simple children nodes without addresses
> >    (so not simple bus),
> > 6. Use proper vendor compatible for Macronix SPI NOR.
> > ---
> >  .../devicetree/bindings/arm/fsl.yaml          |   4 +
> >  .../devicetree/bindings/eeprom/at25.txt       |   1 +
>
> Please make them two separate patches.

Sure.

>
> >  arch/arm/boot/dts/Makefile                    |   3 +
> >  .../boot/dts/imx6ul-kontron-n6310-s-43.dts    | 119 +++++
> >  .../boot/dts/imx6ul-kontron-n6310-s-50.dts    | 119 +++++
>
> Are they identical except the display node?  Please manage to save
> duplicated data.

Since removing of display panels (unsupported), there will be no
differentiation between S-43 and S-50.

>
> >  arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts  | 420 ++++++++++++++++++
> >  .../boot/dts/imx6ul-kontron-n6310-som.dtsi    | 134 ++++++
> >  7 files changed, 800 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
> >  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s-50.dts
> >  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts
> >  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi
> >
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 7294ac36f4c0..6a6c09d67dea 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -161,6 +161,10 @@ properties:
> >          items:
> >            - enum:
> >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> > +              - kontron,imx6ul-n6310-s    # Kontron N6310 S Board
> > +              - kontron,imx6ul-n6310-s-43 # Kontron N6310 S 43 Board
> > +              - kontron,imx6ul-n6310-s-50 # Kontron N6310 S 50 Board
> >            - const: fsl,imx6ul
> >
> >        - description: i.MX6ULL based Boards
> > diff --git a/Documentation/devicetree/bindings/eeprom/at25.txt b/Documentation/devicetree/bindings/eeprom/at25.txt
> > index b3bde97dc199..42577dd113dd 100644
> > --- a/Documentation/devicetree/bindings/eeprom/at25.txt
> > +++ b/Documentation/devicetree/bindings/eeprom/at25.txt
> > @@ -3,6 +3,7 @@ EEPROMs (SPI) compatible with Atmel at25.
> >  Required properties:
> >  - compatible : Should be "<vendor>,<type>", and generic value "atmel,at25".
> >    Example "<vendor>,<type>" values:
> > +    "anvo,anv32e61w"
> >      "microchip,25lc040"
> >      "st,m95m02"
> >      "st,m95256"
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 9159fa2cea90..28b6cb3454a3 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -569,6 +569,9 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
> >       imx6ul-geam.dtb \
> >       imx6ul-isiot-emmc.dtb \
> >       imx6ul-isiot-nand.dtb \
> > +     imx6ul-kontron-n6310-s.dtb \
> > +     imx6ul-kontron-n6310-s-43.dtb \
> > +     imx6ul-kontron-n6310-s-50.dtb \
> >       imx6ul-liteboard.dtb \
> >       imx6ul-opos6uldev.dtb \
> >       imx6ul-pico-hobbit.dtb \
> > diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts b/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
> > new file mode 100644
> > index 000000000000..c83793725245
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
> > @@ -0,0 +1,119 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2017 exceet electronics GmbH
> > + * Copyright (C) 2018 Kontron Electronics GmbH
> > + * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
> > + */
> > +
> > +#include "imx6ul-kontron-n6310-s.dts"
> > +
> > +/ {
> > +     model = "Kontron N6310 S 43";
> > +     compatible = "kontron,imx6ul-n6310-s-43", "kontron,imx6ul-n6310-s",
> > +                  "kontron,imx6ul-n6310-som", "fsl,imx6ul";
> > +
> > +     backlight: backlight {
> > +             compatible = "pwm-backlight";
> > +             pwms = <&pwm7 0 5000000>;
> > +             brightness-levels = <0 4 8 16 32 64 128 255>;
> > +             default-brightness-level = <6>;
> > +             status = "okay";
> > +     };
> > +
> > +     panel {
> > +             compatible = "admatecde,t043c004800272t2a";
>
> Undocumented/unsupported compatible?
>
> > +             backlight = <&backlight>;
> > +
> > +             port {
> > +                     panel_in: endpoint {
> > +                             remote-endpoint = <&display_out>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&i2c4 {
> > +     touchscreen@5d {
> > +             compatible = "goodix,gt928";
> > +             reg = <0x5d>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&pinctrl_cap_touch>;
> > +             interrupt-parent = <&gpio5>;
> > +             interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
> > +             reset-gpios = <&gpio5 8 GPIO_ACTIVE_HIGH>;
> > +             irq-gpios = <&gpio5 6 GPIO_ACTIVE_HIGH>;
> > +     };
> > +};
> > +
> > +&lcdif {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_lcdif_dat &pinctrl_lcdif_ctrl>;
> > +     status = "okay";
> > +
> > +     port {
> > +             display_out: endpoint {
> > +                     remote-endpoint = <&panel_in>;
> > +             };
> > +     };
> > +};
> > +
> > +&pwm7 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_pwm7>;
> > +     status = "okay";
> > +};
> > +
> > +&iomuxc {
> > +     pinctrl_lcdif_dat: lcdifdatgrp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_LCD_DATA00__LCDIF_DATA00      0x79
> > +                     MX6UL_PAD_LCD_DATA01__LCDIF_DATA01      0x79
> > +                     MX6UL_PAD_LCD_DATA02__LCDIF_DATA02      0x79
> > +                     MX6UL_PAD_LCD_DATA03__LCDIF_DATA03      0x79
> > +                     MX6UL_PAD_LCD_DATA04__LCDIF_DATA04      0x79
> > +                     MX6UL_PAD_LCD_DATA05__LCDIF_DATA05      0x79
> > +                     MX6UL_PAD_LCD_DATA06__LCDIF_DATA06      0x79
> > +                     MX6UL_PAD_LCD_DATA07__LCDIF_DATA07      0x79
> > +                     MX6UL_PAD_LCD_DATA08__LCDIF_DATA08      0x79
> > +                     MX6UL_PAD_LCD_DATA09__LCDIF_DATA09      0x79
> > +                     MX6UL_PAD_LCD_DATA10__LCDIF_DATA10      0x79
> > +                     MX6UL_PAD_LCD_DATA11__LCDIF_DATA11      0x79
> > +                     MX6UL_PAD_LCD_DATA12__LCDIF_DATA12      0x79
> > +                     MX6UL_PAD_LCD_DATA13__LCDIF_DATA13      0x79
> > +                     MX6UL_PAD_LCD_DATA14__LCDIF_DATA14      0x79
> > +                     MX6UL_PAD_LCD_DATA15__LCDIF_DATA15      0x79
> > +                     MX6UL_PAD_LCD_DATA16__LCDIF_DATA16      0x79
> > +                     MX6UL_PAD_LCD_DATA17__LCDIF_DATA17      0x79
> > +                     MX6UL_PAD_LCD_DATA18__LCDIF_DATA18      0x79
> > +                     MX6UL_PAD_LCD_DATA19__LCDIF_DATA19      0x79
> > +                     MX6UL_PAD_LCD_DATA20__LCDIF_DATA20      0x79
> > +                     MX6UL_PAD_LCD_DATA21__LCDIF_DATA21      0x79
> > +                     MX6UL_PAD_LCD_DATA22__LCDIF_DATA22      0x79
> > +                     MX6UL_PAD_LCD_DATA23__LCDIF_DATA23      0x79
> > +             >;
> > +     };
> > +
> > +     pinctrl_lcdif_ctrl: lcdifctrlgrp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_LCD_CLK__LCDIF_CLK            0x79
> > +                     MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE      0x79
> > +                     MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC        0x79
> > +                     MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC        0x79
> > +                     MX6UL_PAD_LCD_RESET__LCDIF_RESET        0x79
> > +             >;
> > +     };
> > +
> > +     pinctrl_cap_touch: captouchgrp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_SNVS_TAMPER6__GPIO5_IO06      0x1b0b0 /* Touch Interrupt */
> > +                     MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07      0x1b0b0 /* Touch Reset */
> > +                     MX6UL_PAD_SNVS_TAMPER8__GPIO5_IO08      0x1b0b0 /* Touch Wake */
> > +             >;
> > +     };
> > +
> > +     pinctrl_pwm7: pwm7grp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_CSI_VSYNC__PWM7_OUT           0x110b0
> > +             >;
> > +     };
> > +};
> > diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-s-50.dts b/arch/arm/boot/dts/imx6ul-kontron-n6310-s-50.dts
> > new file mode 100644
> > index 000000000000..f9c9afa58771
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-s-50.dts
> > @@ -0,0 +1,119 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2017 exceet electronics GmbH
> > + * Copyright (C) 2018 Kontron Electronics GmbH
> > + * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
> > + */
> > +
> > +#include "imx6ul-kontron-n6310-s.dts"
> > +
> > +/ {
> > +     model = "Kontron N6310 S 50";
> > +     compatible = "kontron,imx6ul-n6310-s-50", "kontron,imx6ul-n6310-s",
> > +                  "kontron,imx6ul-n6310-som", "fsl,imx6ul";
> > +
> > +     backlight: backlight {
> > +             compatible = "pwm-backlight";
> > +             pwms = <&pwm7 0 5000000>;
> > +             brightness-levels = <0 4 8 16 32 64 128 255>;
> > +             default-brightness-level = <6>;
> > +             status = "okay";
> > +     };
> > +
> > +     panel {
> > +             compatible = "admatecde,t070p133t0s301";
> > +             backlight = <&backlight>;
> > +
> > +             port {
> > +                     panel_in: endpoint {
> > +                             remote-endpoint = <&display_out>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&i2c4 {
> > +     touchscreen@5d {
> > +             compatible = "goodix,gt928";
> > +             reg = <0x5d>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&pinctrl_cap_touch>;
> > +             interrupt-parent = <&gpio5>;
> > +             interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
> > +             reset-gpios = <&gpio5 8 GPIO_ACTIVE_HIGH>;
> > +             irq-gpios = <&gpio5 6 GPIO_ACTIVE_HIGH>;
> > +     };
> > +};
> > +
> > +&lcdif {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_lcdif_dat &pinctrl_lcdif_ctrl>;
> > +     status = "okay";
> > +
> > +     port {
> > +             display_out: endpoint {
> > +                     remote-endpoint = <&panel_in>;
> > +             };
> > +     };
> > +};
> > +
> > +&pwm7 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_pwm7>;
> > +     status = "okay";
> > +};
> > +
> > +&iomuxc {
> > +     pinctrl_lcdif_dat: lcdifdatgrp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_LCD_DATA00__LCDIF_DATA00      0x79
> > +                     MX6UL_PAD_LCD_DATA01__LCDIF_DATA01      0x79
> > +                     MX6UL_PAD_LCD_DATA02__LCDIF_DATA02      0x79
> > +                     MX6UL_PAD_LCD_DATA03__LCDIF_DATA03      0x79
> > +                     MX6UL_PAD_LCD_DATA04__LCDIF_DATA04      0x79
> > +                     MX6UL_PAD_LCD_DATA05__LCDIF_DATA05      0x79
> > +                     MX6UL_PAD_LCD_DATA06__LCDIF_DATA06      0x79
> > +                     MX6UL_PAD_LCD_DATA07__LCDIF_DATA07      0x79
> > +                     MX6UL_PAD_LCD_DATA08__LCDIF_DATA08      0x79
> > +                     MX6UL_PAD_LCD_DATA09__LCDIF_DATA09      0x79
> > +                     MX6UL_PAD_LCD_DATA10__LCDIF_DATA10      0x79
> > +                     MX6UL_PAD_LCD_DATA11__LCDIF_DATA11      0x79
> > +                     MX6UL_PAD_LCD_DATA12__LCDIF_DATA12      0x79
> > +                     MX6UL_PAD_LCD_DATA13__LCDIF_DATA13      0x79
> > +                     MX6UL_PAD_LCD_DATA14__LCDIF_DATA14      0x79
> > +                     MX6UL_PAD_LCD_DATA15__LCDIF_DATA15      0x79
> > +                     MX6UL_PAD_LCD_DATA16__LCDIF_DATA16      0x79
> > +                     MX6UL_PAD_LCD_DATA17__LCDIF_DATA17      0x79
> > +                     MX6UL_PAD_LCD_DATA18__LCDIF_DATA18      0x79
> > +                     MX6UL_PAD_LCD_DATA19__LCDIF_DATA19      0x79
> > +                     MX6UL_PAD_LCD_DATA20__LCDIF_DATA20      0x79
> > +                     MX6UL_PAD_LCD_DATA21__LCDIF_DATA21      0x79
> > +                     MX6UL_PAD_LCD_DATA22__LCDIF_DATA22      0x79
> > +                     MX6UL_PAD_LCD_DATA23__LCDIF_DATA23      0x79
> > +             >;
> > +     };
> > +
> > +     pinctrl_lcdif_ctrl: lcdifctrlgrp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_LCD_CLK__LCDIF_CLK            0x79
> > +                     MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE      0x79
> > +                     MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC        0x79
> > +                     MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC        0x79
> > +                     MX6UL_PAD_LCD_RESET__LCDIF_RESET        0x79
> > +             >;
> > +     };
> > +
> > +     pinctrl_cap_touch: captouchgrp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_SNVS_TAMPER6__GPIO5_IO06      0x1b0b0 /* Touch Interrupt */
> > +                     MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07      0x1b0b0 /* Touch Reset */
> > +                     MX6UL_PAD_SNVS_TAMPER8__GPIO5_IO08      0x1b0b0 /* Touch Wake */
> > +             >;
> > +     };
> > +
> > +     pinctrl_pwm7: pwm7grp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_CSI_VSYNC__PWM7_OUT           0x110b0
> > +             >;
> > +     };
> > +};
> > diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts b/arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts
> > new file mode 100644
> > index 000000000000..4206a4b3f0df
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts
> > @@ -0,0 +1,420 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2017 exceet electronics GmbH
> > + * Copyright (C) 2018 Kontron Electronics GmbH
> > + * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "imx6ul-kontron-n6310-som.dtsi"
> > +
> > +/ {
> > +     model = "Kontron N6310 S";
> > +     compatible = "kontron,imx6ul-n6310-s", "kontron,imx6ul-n6310-som",
> > +                  "fsl,imx6ul";
> > +
> > +     pwm-beeper {
> > +             compatible = "pwm-beeper";
> > +             pwms = <&pwm8 0 5000>;
> > +     };
> > +
> > +     gpio-leds {
> > +             compatible = "gpio-leds";
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&pinctrl_gpio_leds>;
> > +
> > +             led1 {
> > +                     label = "debug-led1";
> > +                     gpios = <&gpio1 30 GPIO_ACTIVE_LOW>;
> > +                     default-state = "off";
> > +                     linux,default-trigger = "heartbeat";
> > +             };
> > +
> > +             led2 {
> > +                     label = "debug-led2";
> > +                     gpios = <&gpio5 3 GPIO_ACTIVE_LOW>;
> > +                     default-state = "off";
> > +             };
> > +
> > +             led3 {
> > +                     label = "debug-led3";
> > +                     gpios = <&gpio5 2 GPIO_ACTIVE_LOW>;
> > +                     default-state = "off";
> > +             };
> > +     };
> > +
> > +     reg_3v3: regulator-3v3 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "3v3";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +     };
> > +
> > +     reg_vref_adc: regulator-vref-adc {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "vref-adc";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +     };
> > +
> > +     reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "usb_otg1_vbus";
> > +             regulator-min-microvolt = <5000000>;
> > +             regulator-max-microvolt = <5000000>;
> > +             gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +     };
> > +};
> > +
> > +&adc1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_adc1>;
> > +     num-channels = <3>;
> > +     vref-supply = <&reg_vref_adc>;
> > +     status = "okay";
> > +};
> > +
> > +&can2 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_flexcan2>;
> > +     status = "okay";
> > +};
> > +
> > +&ecspi1 {
> > +     cs-gpios = <&gpio4 26 GPIO_ACTIVE_HIGH>;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_ecspi1>;
> > +     status = "okay";
> > +
> > +     eeprom@0 {
> > +             compatible = "anvo,anv32e61w", "atmel,at25";
> > +             reg = <0>;
> > +             spi-max-frequency = <20000000>;
> > +             spi-cpha;
> > +             spi-cpol;
> > +             pagesize = <1>;
> > +             size = <8192>;
> > +             address-width = <16>;
> > +     };
> > +};
> > +
> > +&fec1 {
> > +     pinctrl-0 = <&pinctrl_enet1>;
> > +     /delete-node/ mdio;
> > +};
> > +
> > +&fec2 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_enet2 &pinctrl_enet2_mdio>;
> > +     phy-mode = "rmii";
> > +     phy-handle = <&ethphy2>;
> > +     status = "okay";
> > +
> > +     mdio {
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +
> > +             ethphy1: ethernet-phy@1 {
> > +                     reg = <1>;
> > +                     micrel,led-mode = <0>;
> > +                     clocks = <&clks IMX6UL_CLK_ENET_REF>;
> > +                     clock-names = "rmii-ref";
> > +             };
> > +
> > +             ethphy2: ethernet-phy@2 {
> > +                     reg = <2>;
> > +                     micrel,led-mode = <0>;
> > +                     clocks = <&clks IMX6UL_CLK_ENET2_REF>;
> > +                     clock-names = "rmii-ref";
> > +             };
> > +     };
> > +};
> > +
> > +&i2c1 {
> > +     clock-frequency = <100000>;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_i2c1>;
> > +     status = "okay";
> > +};
> > +
> > +&i2c4 {
> > +     clock-frequency = <100000>;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_i2c4>;
> > +     status = "okay";
> > +
> > +     rtc@32 {
> > +             compatible = "epson,rx8900";
> > +             reg = <0x32>;
> > +     };
> > +};
> > +
> > +&pwm8 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_pwm8>;
> > +     status = "okay";
> > +};
> > +
> > +&snvs_poweroff {
> > +     status = "okay";
> > +};
> > +
> > +&uart1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_uart1>;
> > +     status = "okay";
> > +};
> > +
> > +&uart2 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_uart2>;
> > +     linux,rs485-enabled-at-boot-time;
> > +     rs485-rx-during-tx;
> > +     rs485-rts-active-low;
> > +     uart-has-rtscts;
> > +     status = "okay";
> > +};
> > +
> > +&uart3 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_uart3>;
> > +     fsl,uart-has-rtscts;
> > +     status = "okay";
> > +};
> > +
> > +&uart4 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_uart4>;
> > +     status = "okay";
> > +};
> > +
> > +&usbotg1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_usbotg1>;
> > +     dr_mode = "otg";
> > +     srp-disable;
> > +     hnp-disable;
> > +     adp-disable;
> > +     vbus-supply = <&reg_usb_otg1_vbus>;
> > +     status = "okay";
> > +};
> > +
> > +&usbotg2 {
> > +     dr_mode = "host";
> > +     disable-over-current;
> > +     status = "okay";
> > +};
> > +
> > +&usdhc1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_usdhc1>;
> > +     cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
> > +     keep-power-in-suspend;
> > +     enable-sdio-wakeup;
>
> Check Documentation/devicetree/bindings/power/wakeup-source.txt

Indeed, thanks.

> > +     vmmc-supply = <&reg_3v3>;
> > +     voltage-ranges = <3300 3300>;
> > +     no-1-8-v;
> > +     status = "okay";
> > +};
> > +
> > +&usdhc2 {
> > +     pinctrl-names = "default", "state_100mhz", "state_200mhz";
> > +     pinctrl-0 = <&pinctrl_usdhc2>;
> > +     pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
> > +     pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
> > +     non-removable;
> > +     keep-power-in-suspend;
> > +     enable-sdio-wakeup;
> > +     vmmc-supply = <&reg_3v3>;
> > +     voltage-ranges = <3300 3300>;
> > +     no-1-8-v;
> > +     status = "okay";
> > +};
> > +
> > +&wdog1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_wdog>;
> > +     status = "okay";
>
> We usually put 'status' at the end of property list.

OK

>
> > +     fsl,ext-reset-output;
> > +};
> > +
> > +&iomuxc {
> > +     pinctrl-0 = <&pinctrl_reset_out &pinctrl_gpio>;
> > +
> > +     pinctrl_wdog: wdoggrp {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_GPIO1_IO09__WDOG1_WDOG_ANY    0x30b0
> > +             >;
> > +     };
> > +
> > +     pinctrl_gpio: gpio {
>
> Please consistently name the node like:
>
>         pinctrl_xxx: xxxgrp
>
> And keep them well sorted alphabetically.

Sure

>
> > +             fsl,pins = <
> > +                     MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05      0x1b0b0 /* DOUT1 */
> > +                     MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04      0x1b0b0 /* DIN1 */
> > +                     MX6UL_PAD_SNVS_TAMPER1__GPIO5_IO01      0x1b0b0 /* DOUT2 */
> > +                     MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00      0x1b0b0 /* DIN2 */
> > +             >;
> > +     };
> > +
> > +     pinctrl_usbotg1: usbotg1 {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_GPIO1_IO04__GPIO1_IO04        0x1b0b0
> > +             >;
> > +     };
> > +
> > +     pinctrl_gpio_leds: gpio_leds {
> > +             fsl,pins = <
> > +                     MX6UL_PAD_UART5_TX_DATA__GPIO1_IO30     0x1b0b0 /* LED H14 */
> > +                     MX6UL_PAD_SNVS_TAMPER3__GPIO5_IO03      0x1b0b0 /* LED H15 */
> > +                     MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02      0x1b0b0 /* LED H16 */
> > +             >;
> > +     };
> > +
> > +     /* FRAM */
> > +     pinctrl_ecspi1: ecspi1grp-1 {
>
> Meaningless '-1' suffix.

Thanks for the review!
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
