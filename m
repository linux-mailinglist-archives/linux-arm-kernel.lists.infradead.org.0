Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F310B778D4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 14:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDOpGOyw++/o7VY86ikn6dp1RzH1yJ56Y8MU+y7znIY=; b=TQyPZrI6JIuqaZ
	DPhQU1jYRwTrsjItg1wLs7k0svcajpmcHEDCGY0iN4cwcr54UpHTLZcFcUVqWcCZXp8lxS2z9Evl4
	Lq6U1LBUewhHrlMc03ep+h06jB7KtrhtbWi7IoGVcgw8dx5Eud9Et8pIqY6Qb9+Lw2sB7z3fDGRFV
	E9inwXe8tqxFu34g19KN7s3c5xVNmyrlrzMmK1EY/45xcNVJ8CdYCVwZy1bFv0/iNDOritQMSSwr6
	9EA2U74unAOlft7j+DJYiXtB9pPBHn2CcNYqpE3jMIOAukCuSglS7oqwJpMQQZsUiN/lD0xU7CzXB
	E9JHYoXYtYEF7/Mg72MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrMH4-0008ES-PQ; Sat, 27 Jul 2019 12:58:10 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrMGx-0008E4-Dc
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 12:58:04 +0000
Received: by mail-wm1-f65.google.com with SMTP id g67so45655356wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 05:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yuT/hglJeQK1J4nRZbzbYMdV0GZGrTOn1crG/aogOjo=;
 b=rfIHrt04bodM2HLwMQ3NVjT0w4OK3xkRVmoSPMjOeLYN+V/M3xeAhD43WZmms7Q4Ml
 Yfm4ZwWR+oTN7yNZYEbecpwpA2ZqB2YhtxtJUrysddT01K6s596WOVFtpK+8NcRKrwRF
 l8QY+y2CyjzsETHBErkUtSpc6yOifMWnB4NsTV8irprY498cvnGbC3Z+Flv4AvgMywMs
 xJ0DNkZFImgEJfTWeUXOChXSL4Sq+h6p5J1w1FSRtcbgyU5OTQY04cpaJESv/mnoSqgA
 1h6ot69AbiA6/1Ub+P7ZlTL+laMhrqT9XCb/bHHJq3Cs7/v0dU64BId0xnqGfGgoA822
 jTCA==
X-Gm-Message-State: APjAAAXy6P/kyV6eE+gwv2fJsiUdnReQxPz0OAxZoMrPXwqJLm0T6vEF
 SXEsjOrwzzuy9679aAbjNAM=
X-Google-Smtp-Source: APXvYqz38Nf2fk0FktWCXHAAwXHsasNBsHe0MvvFBhth9CAgwqVF0lpDciMlG1FTvAkbpg1pBL0fmQ==
X-Received: by 2002:a1c:a481:: with SMTP id
 n123mr84460454wme.123.1564232281278; 
 Sat, 27 Jul 2019 05:58:01 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id t6sm61711574wmb.29.2019.07.27.05.58.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Jul 2019 05:58:00 -0700 (PDT)
Date: Sat, 27 Jul 2019 14:57:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: imx6ul-kontron-n6310: Add Kontron
 i.MX6UL N6310 SoM and boards
Message-ID: <20190727125758.GA7674@kozik-lap>
References: <20190726061705.14764-1-krzk@kernel.org>
 <20190726061705.14764-2-krzk@kernel.org>
 <CAOMZO5BPT5Bj+gbgsq+bW5x_NToWqUtz8vmOOS9LyZg5J+CfHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BPT5Bj+gbgsq+bW5x_NToWqUtz8vmOOS9LyZg5J+CfHQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_055803_460228_936B9821 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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

On Fri, Jul 26, 2019 at 02:54:20PM -0300, Fabio Estevam wrote:
> Hi Krzysztof,
> 
> On Fri, Jul 26, 2019 at 3:17 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 7294ac36f4c0..afb61a55e26f 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -161,6 +161,10 @@ properties:
> >          items:
> >            - enum:
> >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > +              - kontron,n6310-som         # Kontron N6310 SOM
> > +              - kontron,n6310-s           # Kontron N6310 S Board
> > +              - kontron,n6310-s-43        # Kontron N6310 S 43 Board
> > +              - kontron,n6310-s-50        # Kontron N6310 S 50 Board
> 
> These entries should be:
>        imx6ul-kontron-n6310-s.dtb
>        imx6ul-kontron-n6310-s-43.dtb
>        imx6ul-kontron-n6310-s-50.dtb

OK

(I'll apply all your suggestions without and just reply here where there
is some discussion)

> 
> > +       panel {
> > +               compatible = "admatec,t043c004800272t2a";
> 
> I do not find this binding documented.

Because they are not... I mentioned it in commit msg - there are no
driver and bindings for them. I put them for completness of HW
description.

> 
> > +&i2c4 {
> > +       gt911@5d {
> 
> Node names should be generic according to the devicetree spec, so:
> 
> touchscreen@5d
> 
> > +               compatible = "goodix,gt928";
> > +               reg = <0x5d>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&pinctrl_cap_touch>;
> > +               interrupt-parent = <&gpio5>;
> > +               interrupts = <6 8>;
> 
> It would be better to use a laber to indicate the irq type:
> 
> interrupts = <6 IRQ_TYPE_LEVEL_LOW>;

Indeed.

> 
> > +               reset-gpios = <&gpio5 8 GPIO_ACTIVE_HIGH>;
> > +               irq-gpios = <&gpio5 6 GPIO_ACTIVE_HIGH>;
> 
> Active high?
> 
> Above you use "interrupts = <6 8>;" which means IRQ_TYPE_LEVEL_LOW.

Yes, it is confusing but it looks correct. The driver does not use the
GPIO flag so ACTIVE_HIGH or any other setting does not have effect.
Driver uses this pin (as active high) after disabling the interrupts as
an additional reset pin during resume. After this additional reset, it
serves back as interrupt pin.

> 
> > +       };
> > +};
> > +
> > +&iomuxc {
> 
> We tend to prefer putting iomuxc as the last node.
> 
> > +       pinctrl_lcdif_dat: lcdifdatgrp {
> > +               fsl,pins = <
> > +                       MX6UL_PAD_LCD_DATA00__LCDIF_DATA00      0x79
> > +                       MX6UL_PAD_LCD_DATA01__LCDIF_DATA01      0x79
> > +                       MX6UL_PAD_LCD_DATA02__LCDIF_DATA02      0x79
> > +                       MX6UL_PAD_LCD_DATA03__LCDIF_DATA03      0x79
> > +                       MX6UL_PAD_LCD_DATA04__LCDIF_DATA04      0x79
> > +                       MX6UL_PAD_LCD_DATA05__LCDIF_DATA05      0x79
> > +                       MX6UL_PAD_LCD_DATA06__LCDIF_DATA06      0x79
> > +                       MX6UL_PAD_LCD_DATA07__LCDIF_DATA07      0x79
> > +                       MX6UL_PAD_LCD_DATA08__LCDIF_DATA08      0x79
> > +                       MX6UL_PAD_LCD_DATA09__LCDIF_DATA09      0x79
> > +                       MX6UL_PAD_LCD_DATA10__LCDIF_DATA10      0x79
> > +                       MX6UL_PAD_LCD_DATA11__LCDIF_DATA11      0x79
> > +                       MX6UL_PAD_LCD_DATA12__LCDIF_DATA12      0x79
> > +                       MX6UL_PAD_LCD_DATA13__LCDIF_DATA13      0x79
> > +                       MX6UL_PAD_LCD_DATA14__LCDIF_DATA14      0x79
> > +                       MX6UL_PAD_LCD_DATA15__LCDIF_DATA15      0x79
> > +                       MX6UL_PAD_LCD_DATA16__LCDIF_DATA16      0x79
> > +                       MX6UL_PAD_LCD_DATA17__LCDIF_DATA17      0x79
> > +                       MX6UL_PAD_LCD_DATA18__LCDIF_DATA18      0x79
> > +                       MX6UL_PAD_LCD_DATA19__LCDIF_DATA19      0x79
> > +                       MX6UL_PAD_LCD_DATA20__LCDIF_DATA20      0x79
> > +                       MX6UL_PAD_LCD_DATA21__LCDIF_DATA21      0x79
> > +                       MX6UL_PAD_LCD_DATA22__LCDIF_DATA22      0x79
> > +                       MX6UL_PAD_LCD_DATA23__LCDIF_DATA23      0x79
> > +               >;
> > +       };
> > +
> > +       pinctrl_lcdif_ctrl: lcdifctrlgrp {
> > +               fsl,pins = <
> > +                       MX6UL_PAD_LCD_CLK__LCDIF_CLK            0x79
> > +                       MX6UL_PAD_LCD_ENABLE__LCDIF_ENABLE      0x79
> > +                       MX6UL_PAD_LCD_HSYNC__LCDIF_HSYNC        0x79
> > +                       MX6UL_PAD_LCD_VSYNC__LCDIF_VSYNC        0x79
> > +                       MX6UL_PAD_LCD_RESET__LCDIF_RESET        0x79
> > +               >;
> > +       };
> > +
> > +       pinctrl_cap_touch: captouchgrp {
> > +               fsl,pins = <
> > +                       MX6UL_PAD_SNVS_TAMPER6__GPIO5_IO06      0x1b0b0 /* Touch Interrupt */
> > +                       MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07      0x1b0b0 /* Touch Reset */
> > +                       MX6UL_PAD_SNVS_TAMPER8__GPIO5_IO08      0x1b0b0 /* Touch Wake */
> > +               >;
> > +       };
> > +
> > +       pinctrl_pwm7: pwm7grp {
> > +               fsl,pins = <
> > +                       MX6UL_PAD_CSI_VSYNC__PWM7_OUT           0x110b0
> > +               >;
> > +       };
> > +};
> > +
> > +&lcdif {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_lcdif_dat
> > +                    &pinctrl_lcdif_ctrl>;
> 
> Could fit into a single line.
> 
> > +       panel {
> > +               compatible = "admatec,t070p133t0s301";
> 
> Same here. Undocumented binding.
> 
> > +               backlight = <&backlight>;
> > +
> > +               port {
> > +                       panel_in: endpoint {
> > +                               remote-endpoint = <&display_out>;
> > +                       };
> > +               };
> > +       };
> > +};
> > +
> > +&i2c4 {
> > +       gt911@5d {
> 
> Same comments as previously apply.
> 
> > +
> > +       regulators {
> 
> No need to have this regulators indent level.
> 
> > +               reg_3v3: regulator1 {
> 
> You can place this one directly. The preferred format is:
> 
> reg_3v3: regulator-reg-3v3 {
> 
> > +&ecspi1 {
> > +       fsl,spi-num-chipselects = <1>;
> 
> This property is obsoleted. Please remove it.
> 
> > +       cs-gpios = <&gpio4 26 GPIO_ACTIVE_HIGH>;
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_ecspi1>;
> > +       status = "okay";
> > +
> > +       fram@0 {
> 
> Generic name please. eeprom@0
> 
> > +               compatible = "atmel,at25";
> 
> Please use the recommended compatible scheme as per
> Documentation/devicetree/bindings/eeprom/at25.txt.
> 
> > +               reg = <0>;
> > +               spi-max-frequency = <20000000>;
> > +               spi-cpha;
> > +               spi-cpol;
> > +               pagesize = <1>;
> > +               size = <8192>;
> > +               address-width = <16>;
> > +       };
> > +};
> 
> 
> > +&usbotg1 {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_usbotg1>;
> > +       dr_mode = "otg";
> > +       status = "okay";
> 
> We prefer to put the 'status' property as the last one.
> 
> > +       srp-disable;
> > +       hnp-disable;
> > +       adp-disable;
> > +       vbus-supply = <&reg_usb_otg1_vbus>;
> > +};
> 
> > +/ {
> > +       model = "Kontron N6310 SOM";
> > +       compatible = "kontron,n6310-som", "fsl,imx6ul";
> > +
> > +       memory@80000000 {
> 
> device_type = "memory"; is missing here.
> 
> > +               reg = <0x80000000 0x10000000>;
> > +       };
> > +};
> > +
> > +&cpu0 {
> > +       clock-frequency = <528000000>;
> 
> Is this one really needed?

I'll check.

> 
> > +&ecspi2 {
> > +       cs-gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_ecspi2>;
> > +       status = "okay";
> > +
> > +       flash: mx25v80@0 {
> 
> spi-flash@0
> 
> > +&qspi {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_qspi>;
> > +       status = "okay";
> > +
> > +       flash0: w25m02gv@0 {
> 
> generic name, please.

Thanks for review!

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
