Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AD7E4C87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 15:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joMiCpwHxZa5JQ1TK647l8iQcN19KQk+ulLSo1zp+eM=; b=tWvrzCgsxlnN95
	8tlhmsZZ4jngcVXH2S4xOND7F0IuESqF1oDUBTOMuPZcY/0mdmCVucZAYZS3blPiUY7v6K1KvCH83
	WKytuxSuajT8mMqPtkjpwtAeQQDrM9eMdhEklBjQJJwRdXURkjbrCW3P2FdQm6/3i3ay17vf3ZNpZ
	1fyoyE0IxxVWi7y+DsHJ9vy9eMl0XlSKSxUlXocKvcfstkKHWrvvboo7Ysf40qIL5WsLKgAY3seZL
	emZu5nnql9mAtOPJBHXGvlNQtMuJaTvMQoVuvcpXfgFuGxghrTC8uxX9PZItoYYqAF3cnzTJcOjrN
	XQssqQl8RjVbzLge4AAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzrk-0004qQ-D7; Fri, 25 Oct 2019 13:42:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzra-0004pf-Ho
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 13:42:48 +0000
Received: by mail-lj1-x243.google.com with SMTP id 139so2600017ljf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 06:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZRSlUd6LBzNrzynd46ONvlcqzPRdK4ulFGHewpixHno=;
 b=mbv7Y0biARyzPb/EJCakviuvn06QIZwjPvOKGlL92CvQOQ/Iy4BtFxYOrMgJ+MFBDH
 6pmFbG3RUuMa/ORC1X2mbZAjYTkwBIK9GwuQFFb2NN0b62deyS9LN5D+HnGZFFnFY2Uk
 FlJz94rvnlbcMKdQeHw1rtlgMCMK34aOizlf8KXAVtg1EB31/Lm1ckOJc0sJT7B2slIe
 3aztx+4T+0DPco7Mc1wuV4941KCORw9DZ6f0OAYgEqXWX/wJKreIdHGJbguHZTflI6ql
 dZvUwo8qB0UihBYr/gQ/M8q2UH5xQDHe1jfVrj0ZPTJe2XnzNb7M2TnakXPK2KA/Ycgg
 /uGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZRSlUd6LBzNrzynd46ONvlcqzPRdK4ulFGHewpixHno=;
 b=sQBz8rXeq1qrXFARfpxJUeklZBfEwiv0xWXxuO8IgkfpF5XR1yULqopUYnDHt4tkT8
 0862clRCS8PP+2NnnJDVHI/A1+gAq2SzbHMDCdUEX62djL3mUaPow4fluraIpr7FIq0F
 TOoUxpMrAMrHukOWo6FvvzN9qtI1NS2Ca1BtUR2zIfiSF1iK3fRGHvMi3zYg8F+D4EhY
 iGg/krXbxVEv4cvYONmgz/fumfLAymUS7ITTSubyF8Y50V3qPyCgVUzsHNKKOi4hAp6y
 uqINF5uvM4kfLPESYafDzAPfHHzAj7Bc5UpKUIFNqTABm6mZfLTUSa1U1DpKsvV/seOK
 WbuQ==
X-Gm-Message-State: APjAAAW94lYMOIV9fjflXSFBITYFLb778hzxgPLmHOJHJavmAB/cirE9
 N0uHwI692OUoiKvwEEBhlNpnZOoxPp72ngnerMs=
X-Google-Smtp-Source: APXvYqxmA+8A2DXEytTBc07CV8DHJQ2sr633xeYXjNR88vJQfKd3uRsGxawHg0NP3EBLqa36vlTpkvn303BIHXcmPqc=
X-Received: by 2002:a2e:7c13:: with SMTP id x19mr2680919ljc.0.1572010962438;
 Fri, 25 Oct 2019 06:42:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191025082247.3371-1-offougajoris@gmail.com>
In-Reply-To: <20191025082247.3371-1-offougajoris@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 25 Oct 2019 10:42:44 -0300
Message-ID: <CAOMZO5ChthYBiH6tLd2AyEWiKNtYGMpTjnuRxX2VP++-cnYvuQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx7d-pico: Add LCD support
To: Joris Offouga <offougajoris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_064246_614605_5ACE21FE 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <devicetree@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joris,

On Fri, Oct 25, 2019 at 5:22 AM Joris Offouga <offougajoris@gmail.com> wrote:
>
> Add support for the VXT VL050-8048NT-C01 panel connected through
> the 24 bit parallel LCDIF interface.
>
> Signed-off-by: Joris Offouga <offougajoris@gmail.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>

When you send someone else's patch you need to keep the original From line.

In this case it needs to be:
From: Fabio Estevam <festevam@gmail.com>

Your Signed-off-by should come as the last one, since you are one
final person submitting upstream.

Please send a v2 with these fixes.

Thanks




> ---
>  arch/arm/boot/dts/imx7d-pico.dtsi | 84 +++++++++++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
>
> diff --git a/arch/arm/boot/dts/imx7d-pico.dtsi b/arch/arm/boot/dts/imx7d-pico.dtsi
> index 6f50ebf31a0a..9042b1e6f1db 100644
> --- a/arch/arm/boot/dts/imx7d-pico.dtsi
> +++ b/arch/arm/boot/dts/imx7d-pico.dtsi
> @@ -69,6 +69,37 @@
>                 clocks = <&clks IMX7D_CLKO2_ROOT_DIV>;
>                 clock-names = "ext_clock";
>         };
> +
> +       backlight: backlight {
> +               compatible = "pwm-backlight";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_backlight>;
> +               pwms = <&pwm4 0 50000 0>;
> +               brightness-levels = <0 36 72 108 144 180 216 255>;
> +               default-brightness-level = <6>;
> +               status = "okay";
> +       };
> +
> +       reg_lcd_3v3: regulator-lcd-3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "lcd-3v3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               gpio = <&gpio1 6 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +       };
> +
> +       panel {
> +               compatible = "vxt,vl050-8048nt-c01";
> +               backlight = <&backlight>;
> +               power-supply = <&reg_lcd_3v3>;
> +
> +               port {
> +                       panel_in: endpoint {
> +                               remote-endpoint = <&display_out>;
> +                       };
> +               };
> +       };
>  };
>
>  &clks {
> @@ -230,6 +261,18 @@
>         };
>  };
>
> +&lcdif {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_lcdif>;
> +       status = "okay";
> +
> +       port {
> +               display_out: endpoint {
> +                       remote-endpoint = <&panel_in>;
> +               };
> +       };
> +};
> +
>  &sai1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_sai1>;
> @@ -349,6 +392,13 @@
>  };
>
>  &iomuxc {
> +
> +       pinctrl_backlight: backlight {
> +               fsl,pins = <
> +                       MX7D_PAD_GPIO1_IO11__PWM4_OUT           0x0
> +               >;
> +       };
> +
>         pinctrl_ecspi3: ecspi3grp {
>                 fsl,pins = <
>                         MX7D_PAD_I2C1_SCL__ECSPI3_MISO          0x2
> @@ -413,6 +463,40 @@
>                 >;
>         };
>
> +       pinctrl_lcdif: lcdifgrp {
> +               fsl,pins = <
> +                       MX7D_PAD_LCD_DATA00__LCD_DATA0          0x79
> +                       MX7D_PAD_LCD_DATA01__LCD_DATA1          0x79
> +                       MX7D_PAD_LCD_DATA02__LCD_DATA2          0x79
> +                       MX7D_PAD_LCD_DATA03__LCD_DATA3          0x79
> +                       MX7D_PAD_LCD_DATA04__LCD_DATA4          0x79
> +                       MX7D_PAD_LCD_DATA05__LCD_DATA5          0x79
> +                       MX7D_PAD_LCD_DATA06__LCD_DATA6          0x79
> +                       MX7D_PAD_LCD_DATA07__LCD_DATA7          0x79
> +                       MX7D_PAD_LCD_DATA08__LCD_DATA8          0x79
> +                       MX7D_PAD_LCD_DATA09__LCD_DATA9          0x79
> +                       MX7D_PAD_LCD_DATA10__LCD_DATA10         0x79
> +                       MX7D_PAD_LCD_DATA11__LCD_DATA11         0x79
> +                       MX7D_PAD_LCD_DATA12__LCD_DATA12         0x79
> +                       MX7D_PAD_LCD_DATA13__LCD_DATA13         0x79
> +                       MX7D_PAD_LCD_DATA14__LCD_DATA14         0x79
> +                       MX7D_PAD_LCD_DATA15__LCD_DATA15         0x79
> +                       MX7D_PAD_LCD_DATA16__LCD_DATA16         0x79
> +                       MX7D_PAD_LCD_DATA17__LCD_DATA17         0x79
> +                       MX7D_PAD_LCD_DATA18__LCD_DATA18         0x79
> +                       MX7D_PAD_LCD_DATA19__LCD_DATA19         0x79
> +                       MX7D_PAD_LCD_DATA20__LCD_DATA20         0x79
> +                       MX7D_PAD_LCD_DATA21__LCD_DATA21         0x79
> +                       MX7D_PAD_LCD_DATA22__LCD_DATA22         0x79
> +                       MX7D_PAD_LCD_DATA23__LCD_DATA23         0x79
> +                       MX7D_PAD_LCD_CLK__LCD_CLK               0x79
> +                       MX7D_PAD_LCD_ENABLE__LCD_ENABLE         0x78
> +                       MX7D_PAD_LCD_VSYNC__LCD_VSYNC           0x78
> +                       MX7D_PAD_LCD_HSYNC__LCD_HSYNC           0x78
> +                       MX7D_PAD_LCD_RESET__GPIO3_IO4           0x14
> +               >;
> +       };
> +
>         pinctrl_pwm1: pwm1 {
>                 fsl,pins = <
>                         MX7D_PAD_GPIO1_IO08__PWM1_OUT   0x7f
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
