Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD6A770A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 19:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeaNzK2KKIgV9fDLI1xSxHQI6fqH5R9clC897ynmkP8=; b=mtjhywEzZurv4s
	Vp1Tf9JLgLO9Ct/V/KeZqSAhzqZjgLHEviaEviFum6Ws1QEpnijdGdjeL4o8GjH7fW0L/o/a7mLOy
	YFCoL+lJ5OqTxsS/s2chEXvFySzuyqvVeGQGPSvaOWcGRDrdlmC9Rlpyf4CcL57E+CXfnsZIHtsRU
	N2OvCOQXK68r8DK5S2QJpKumDjVjoBrz07IpMtxWJASG2c9bKdMvHU7DtFicHDKoe+9wY7CAfGjC9
	Q4KStcdV+zXBbWi93X41L8SKHtpY/UDh93DJVJNRWZrA1XfEvIl8HNQKhItJECRg0PxxmPB8r/Nge
	5WBavleyVNZjVp3JZLNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr4QI-00050j-Nv; Fri, 26 Jul 2019 17:54:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr4Q6-00050M-Mm
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 17:54:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id y17so27717116ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 10:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7F9P+gn3gvNT3AC9joEJMhO0myCfMHXJbTDH35bFWhE=;
 b=rQOj9fPrQ6OxOwysGYtnZSht0cogKvvqwoKtRAK9Q3ll0Mb2vJBhqNa2GetwrSiJtu
 DLuwBTT0zBg+jhizQaFYFBxntaLJdCyrj5TapxUTjiH0ssoaClcMkJLy3cdsmlLQCYO1
 AcsuOWG/g3WzFEHs5oEMfsQfh4dn6JpDrr1sXWllzyQiBg8B7P0jtaHigPSu6I+KAqig
 Nigr9zw3TxXArpI811Jfspl0snFEI4Yt9Ofw23tIKP1MRRCzsQh/7NxIK62ZqkjH4Ack
 xY7wIaB3E79U/VMyypR1HEyAfTX7LnOlCepGQCUIeGUJsrInca22QDnuqtNtVUguHIvN
 xeig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7F9P+gn3gvNT3AC9joEJMhO0myCfMHXJbTDH35bFWhE=;
 b=g76n21etfuFLkcA3O0WoRYOCCG3/rjFVYGBXoGIaVoa60e6dZMNSeZgAjPBT6kOXf4
 Uf8zA+nqzisTDo82FCPCOOj6GEAoHmk0FYlAAivCsq/wZZmLTtQYszu0UiVKGjuEeMuN
 iHOPUvyVoJgh+xSugxYVKq8c2brZX55J5htEjIlE+cLx/4hFPUrxw0e7EXFlpvyX22WD
 a0AgaHAfiJYaznQHQOO1ofT2HxtLgaPruA9kPdfpIPlSzcOL79prJA7E6DfCgpySmFKb
 SYVao9CDSkaW8pzenBOFtDkarE7GwWygpnPuUOSHgdUUZvkEpYqllVfoEg2DmfXdRYEe
 uQiA==
X-Gm-Message-State: APjAAAVmqGqNgzt9pKTBa0HxbvIdhxreMdF66E/euq3mff1Yb6OsFOzE
 MKvfZPGryDCSZyjVbtmhatjlQGiALt/NuRl/tHo=
X-Google-Smtp-Source: APXvYqzvc9w8orflrBxbRsQ40VAYsSe1QT+d7UCX8s/a99rpkhrp3detgHyHVNrS7Q7AR7oCajpJhOJv/mi3+vXSxeI=
X-Received: by 2002:a2e:8650:: with SMTP id i16mr50725830ljj.178.1564163656259; 
 Fri, 26 Jul 2019 10:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190726061705.14764-1-krzk@kernel.org>
 <20190726061705.14764-2-krzk@kernel.org>
In-Reply-To: <20190726061705.14764-2-krzk@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 26 Jul 2019 14:54:20 -0300
Message-ID: <CAOMZO5BPT5Bj+gbgsq+bW5x_NToWqUtz8vmOOS9LyZg5J+CfHQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: imx6ul-kontron-n6310: Add Kontron
 i.MX6UL N6310 SoM and boards
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_105418_775223_4150968E 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Fri, Jul 26, 2019 at 3:17 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 7294ac36f4c0..afb61a55e26f 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -161,6 +161,10 @@ properties:
>          items:
>            - enum:
>                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> +              - kontron,n6310-som         # Kontron N6310 SOM
> +              - kontron,n6310-s           # Kontron N6310 S Board
> +              - kontron,n6310-s-43        # Kontron N6310 S 43 Board
> +              - kontron,n6310-s-50        # Kontron N6310 S 50 Board

These entries should be:
       imx6ul-kontron-n6310-s.dtb
       imx6ul-kontron-n6310-s-43.dtb
       imx6ul-kontron-n6310-s-50.dtb

> +       panel {
> +               compatible = "admatec,t043c004800272t2a";

I do not find this binding documented.

> +&i2c4 {
> +       gt911@5d {

Node names should be generic according to the devicetree spec, so:

touchscreen@5d

> +               compatible = "goodix,gt928";
> +               reg = <0x5d>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_cap_touch>;
> +               interrupt-parent = <&gpio5>;
> +               interrupts = <6 8>;

It would be better to use a laber to indicate the irq type:

interrupts = <6 IRQ_TYPE_LEVEL_LOW>;

> +               reset-gpios = <&gpio5 8 GPIO_ACTIVE_HIGH>;
> +               irq-gpios = <&gpio5 6 GPIO_ACTIVE_HIGH>;

Active high?

Above you use "interrupts = <6 8>;" which means IRQ_TYPE_LEVEL_LOW.

> +       };
> +};
> +
> +&iomuxc {

We tend to prefer putting iomuxc as the last node.

> +       pinctrl_lcdif_dat: lcdifdatgrp {
> +               fsl,pins = <
> +                       MX6UL_PAD_LCD_DATA00__LCDIF_DATA00      0x79
> +                       MX6UL_PAD_LCD_DATA01__LCDIF_DATA01      0x79
> +                       MX6UL_PAD_LCD_DATA02__LCDIF_DATA02      0x79
> +                       MX6UL_PAD_LCD_DATA03__LCDIF_DATA03      0x79
> +                       MX6UL_PAD_LCD_DATA04__LCDIF_DATA04      0x79
> +                       MX6UL_PAD_LCD_DATA05__LCDIF_DATA05      0x79
> +                       MX6UL_PAD_LCD_DATA06__LCDIF_DATA06      0x79
> +                       MX6UL_PAD_LCD_DATA07__LCDIF_DATA07      0x79
> +                       MX6UL_PAD_LCD_DATA08__LCDIF_DATA08      0x79
> +                       MX6UL_PAD_LCD_DATA09__LCDIF_DATA09      0x79
> +                       MX6UL_PAD_LCD_DATA10__LCDIF_DATA10      0x79
> +                       MX6UL_PAD_LCD_DATA11__LCDIF_DATA11      0x79
> +                       MX6UL_PAD_LCD_DATA12__LCDIF_DATA12      0x79
> +                       MX6UL_PAD_LCD_DATA13__LCDIF_DATA13      0x79
> +                       MX6UL_PAD_LCD_DATA14__LCDIF_DATA14      0x79
> +                       MX6UL_PAD_LCD_DATA15__LCDIF_DATA15      0x79
> +                       MX6UL_PAD_LCD_DATA16__LCDIF_DATA16      0x79
> +                       MX6UL_PAD_LCD_DATA17__LCDIF_DATA17      0x79
> +                       MX6UL_PAD_LCD_DATA18__LCDIF_DATA18      0x79
> +                       MX6UL_PAD_LCD_DATA19__LCDIF_DATA19      0x79
> +                       MX6UL_PAD_LCD_DATA20__LCDIF_DATA20      0x79
> +                       MX6UL_PAD_LCD_DATA21__LCDIF_DATA21      0x79
> +                       MX6UL_PAD_LCD_DATA22__LCDIF_DATA22      0x79
> +                       MX6UL_PAD_LCD_DATA23__LCDIF_DATA23      0x79
> +               >;
> +       };
> +
> +       pinctrl_lcdif_ctrl: lcdifctrlgrp {
> +               fsl,pins = <
> +                       MX6UL_PAD_LCD_CLK__LCDIF_CLK            0x79
> +                       MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE      0x79
> +                       MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC        0x79
> +                       MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC        0x79
> +                       MX6UL_PAD_LCD_RESET__LCDIF_RESET        0x79
> +               >;
> +       };
> +
> +       pinctrl_cap_touch: captouchgrp {
> +               fsl,pins = <
> +                       MX6UL_PAD_SNVS_TAMPER6__GPIO5_IO06      0x1b0b0 /* Touch Interrupt */
> +                       MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07      0x1b0b0 /* Touch Reset */
> +                       MX6UL_PAD_SNVS_TAMPER8__GPIO5_IO08      0x1b0b0 /* Touch Wake */
> +               >;
> +       };
> +
> +       pinctrl_pwm7: pwm7grp {
> +               fsl,pins = <
> +                       MX6UL_PAD_CSI_VSYNC__PWM7_OUT           0x110b0
> +               >;
> +       };
> +};
> +
> +&lcdif {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_lcdif_dat
> +                    &pinctrl_lcdif_ctrl>;

Could fit into a single line.

> +       panel {
> +               compatible = "admatec,t070p133t0s301";

Same here. Undocumented binding.

> +               backlight = <&backlight>;
> +
> +               port {
> +                       panel_in: endpoint {
> +                               remote-endpoint = <&display_out>;
> +                       };
> +               };
> +       };
> +};
> +
> +&i2c4 {
> +       gt911@5d {

Same comments as previously apply.

> +
> +       regulators {

No need to have this regulators indent level.

> +               reg_3v3: regulator1 {

You can place this one directly. The preferred format is:

reg_3v3: regulator-reg-3v3 {

> +&ecspi1 {
> +       fsl,spi-num-chipselects = <1>;

This property is obsoleted. Please remove it.

> +       cs-gpios = <&gpio4 26 GPIO_ACTIVE_HIGH>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_ecspi1>;
> +       status = "okay";
> +
> +       fram@0 {

Generic name please. eeprom@0

> +               compatible = "atmel,at25";

Please use the recommended compatible scheme as per
Documentation/devicetree/bindings/eeprom/at25.txt.

> +               reg = <0>;
> +               spi-max-frequency = <20000000>;
> +               spi-cpha;
> +               spi-cpol;
> +               pagesize = <1>;
> +               size = <8192>;
> +               address-width = <16>;
> +       };
> +};


> +&usbotg1 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_usbotg1>;
> +       dr_mode = "otg";
> +       status = "okay";

We prefer to put the 'status' property as the last one.

> +       srp-disable;
> +       hnp-disable;
> +       adp-disable;
> +       vbus-supply = <&reg_usb_otg1_vbus>;
> +};

> +/ {
> +       model = "Kontron N6310 SOM";
> +       compatible = "kontron,n6310-som", "fsl,imx6ul";
> +
> +       memory@80000000 {

device_type = "memory"; is missing here.

> +               reg = <0x80000000 0x10000000>;
> +       };
> +};
> +
> +&cpu0 {
> +       clock-frequency = <528000000>;

Is this one really needed?

> +&ecspi2 {
> +       cs-gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_ecspi2>;
> +       status = "okay";
> +
> +       flash: mx25v80@0 {

spi-flash@0

> +&qspi {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_qspi>;
> +       status = "okay";
> +
> +       flash0: w25m02gv@0 {

generic name, please.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
