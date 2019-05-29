Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260612D632
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee6DloDuY8KT3CZRnUzpC7/73y92Y8haw8Tfhq/7zXw=; b=H0YR8MH1OCYTp1
	Z6lW+RLnryY9g8wVyNiRsHSwbn2WGgDPYvXwsngyCgw2QD4iVgz//7fqs+jxekEFF4KRZpKsuF2Nt
	zbCgSBN9k8N6yp6jQIBmq4WReTW2TKoUSuLWZoQI0x/stuT8nmL5wzjYbhwsbz2ZKIATZXMnqd/6Z
	r1v2i7LlWvZMjnjqd5kDzU5Qzw+VysTwitl/19GcAdgKS+GGeAXdd0f9h5PetAfTB3r9Fe6WG4bmF
	3Xukog0yLmJ4dKRb2uA5ck0RPrK0fw75Lr+fdB+TR0TD8UsfcPoDf9EHKxicdtUhiZuCQmJwIWnFE
	S+a0aDLh8x2a7AK76/ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsuy-00051T-0z; Wed, 29 May 2019 07:22:36 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsur-000517-62
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:22:30 +0000
Received: by mail-it1-x142.google.com with SMTP id 9so1936136itf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 00:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8PdySaW5/M3o7kkYS3QjGAsNuUlBv0LoNmhCVAMchU0=;
 b=T9TPZUyUCmcKrtg2yY2ON08nKW6RVV80EBeBttIi75vabWW44DKxbpht0xyvAoRMgj
 ibT+uaYcrnQOAnYHRcGQ/9rdZ22+IPHQ8rko9b13cMOPGQrdf19bFWgV+vIX1WhSaIIr
 8AZLnqtTgjvG/zpKo4nCO/bt1bUYKfa82foNbByK+OxrDBzpX7a9AOaYHYfT1780Tks0
 oyTkVKhs/kM2XVYHtUViPUSB3yGyqjJDlBDDO/+ZNMWPQWJkFumhaCA4WyLsauYEU18t
 LcRfvGfoZwj5me6sfb0hWOJefXLi7TqoZW2LBg4wVgW7AyjYcyL8kePaRGqDLG0BYdqu
 QTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8PdySaW5/M3o7kkYS3QjGAsNuUlBv0LoNmhCVAMchU0=;
 b=oOGMoDymmu1QfSu/97oofZ1VUUjyB3el2/+xQhPd8ZkHoooKwcc619Qiu/XMc5BV4J
 MUr4LQzcs26RIsSLaxc4ZkVwjBVzLMGH771L+/aAr/MvV8Wn1Sq24IXu+6fHNhJXKrhP
 oCg7S0M9rTAwsmV39A9qBOr2aMtYJVpDysVnCMA/xz7vIO3O0KqMP6NxdN/icZyzzuQt
 FGm1De4v87FDQtMyJ0KN64P8Rj/jtjKYqp7pt9rTdw/HjEcXIHBxGEgflURiaGM0bxkm
 KBl0vhdVQa8fCfVK975jG9adPyFRBQehvp5hZovoL+LgF9hwjxaWO9wOYZnCth/WZkRn
 CjZQ==
X-Gm-Message-State: APjAAAVMI+O1Tb9UssGBeC+NwLJ7tnz1EIYZrFKZYpWESWquP5kp+JSb
 HKQya3ClqzSXksbdsumvrvKquPs0W1SBmEeX+LnxC7kc+ic=
X-Google-Smtp-Source: APXvYqxkZxQm2qtMOkWOJxLWeY/4J+xFkHGALhKS18VP9SiHIHbuR36TZL4ewm0+Z0rbmywU1DIfqoG8h1L2SB2ZUIc=
X-Received: by 2002:a24:97d2:: with SMTP id k201mr5944306ite.151.1559114547584; 
 Wed, 29 May 2019 00:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190529071843.24767-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190529071843.24767-1-andrew.smirnov@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 29 May 2019 00:22:16 -0700
Message-ID: <CAHQ1cqFb2f6TvWVzwsHq=mWmheLZ82rMDjoMwgrJmyXCdqrJKw@mail.gmail.com>
Subject: Re: [PATCH 1/3] ARM: dts: imx6: rdu2: Add node for UCS1002 USB
 charger chip
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_002229_227806_030F3416 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chris Healy <cphealy@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 12:18 AM Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
>
> Add node for UCS1002 USB charger chip connected to front panel USB and
> replace "regulator-fixed" previously used to control VBUS.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Ugh, forgot to properly update reroll counter. This and the rest of
the series is a v2. Sorry about that.

Thanks,
Andrey Smirnov

> ---
>
> Changes since [v1]:
>
>     - Added GPIO hog configuration to put UCS1002 into correct mode
>       even before its driver takes over. The code for that is taken
>       from similar patch from Lucas, so I added his Signed-off-by as
>       well.
>
> [v1] lore.kernel.org/r/20190522071227.31488-1-andrew.smirnov@gmail.com
>
>  arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 77 +++++++++++++++++++------
>  1 file changed, 59 insertions(+), 18 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> index 93be00a60c88..07e21d1e5b4c 100644
> --- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> @@ -60,18 +60,6 @@
>                 regulator-always-on;
>         };
>
> -       reg_5p0v_user_usb: regulator-5p0v-user-usb {
> -               compatible = "regulator-fixed";
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&pinctrl_reg_user_usb>;
> -               vin-supply = <&reg_5p0v_main>;
> -               regulator-name = "5V_USER_USB";
> -               regulator-min-microvolt = <5000000>;
> -               regulator-max-microvolt = <5000000>;
> -               gpio = <&gpio3 22 GPIO_ACTIVE_LOW>;
> -               startup-delay-us = <1000>;
> -       };
> -
>         reg_3p3v_pmic: regulator-3p3v-pmic {
>                 compatible = "regulator-fixed";
>                 vin-supply = <&reg_12p0v>;
> @@ -331,6 +319,39 @@
>         };
>  };
>
> +&gpio3 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_gpio3_hog>;
> +
> +       usb-emulation {
> +               gpio-hog;
> +               gpios = <19 GPIO_ACTIVE_HIGH>;
> +               output-low;
> +               line-name = "usb-emulation";
> +       };
> +
> +       usb-mode1 {
> +               gpio-hog;
> +               gpios = <20 GPIO_ACTIVE_HIGH>;
> +               output-high;
> +               line-name = "usb-mode1";
> +       };
> +
> +       usb-pwr {
> +               gpio-hog;
> +               gpios = <22 GPIO_ACTIVE_LOW>;
> +               output-high;
> +               line-name = "usb-pwr-ctrl-en-n";
> +       };
> +
> +       usb-mode2 {
> +               gpio-hog;
> +               gpios = <23 GPIO_ACTIVE_HIGH>;
> +               output-high;
> +               line-name = "usb-mode2";
> +       };
> +};
> +
>  &i2c1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_i2c1>;
> @@ -590,6 +611,16 @@
>                 status = "disabled";
>         };
>
> +       reg_5p0v_user_usb: charger@32 {
> +               compatible = "microchip,ucs1002";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_ucs1002_pins>;
> +               reg = <0x32>;
> +               interrupts-extended = <&gpio5 2 IRQ_TYPE_EDGE_BOTH>,
> +                                     <&gpio3 21 IRQ_TYPE_EDGE_BOTH>;
> +               interrupt-names = "a_det", "alert";
> +       };
> +
>         hpa1: amp@60 {
>                 compatible = "ti,tpa6130a2";
>                 pinctrl-names = "default";
> @@ -935,6 +966,15 @@
>                 >;
>         };
>
> +       pinctrl_gpio3_hog: gpio3hoggrp {
> +               fsl,pins = <
> +                       MX6QDL_PAD_EIM_D19__GPIO3_IO19          0x1b0b0
> +                       MX6QDL_PAD_EIM_D20__GPIO3_IO20          0x1b0b0
> +                       MX6QDL_PAD_EIM_D22__GPIO3_IO22          0x1b0b0
> +                       MX6QDL_PAD_EIM_D23__GPIO3_IO23          0x1b0b0
> +               >;
> +       };
> +
>         pinctrl_i2c1: i2c1grp {
>                 fsl,pins = <
>                         MX6QDL_PAD_CSI0_DAT8__I2C1_SDA          0x4001b8b1
> @@ -982,12 +1022,6 @@
>                 >;
>         };
>
> -       pinctrl_reg_user_usb: usbotggrp {
> -               fsl,pins = <
> -                       MX6QDL_PAD_EIM_D22__GPIO3_IO22          0x40000038
> -               >;
> -       };
> -
>         pinctrl_rmii_phy_irq: phygrp {
>                 fsl,pins = <
>                         MX6QDL_PAD_EIM_D30__GPIO3_IO30          0x40010000
> @@ -1047,6 +1081,13 @@
>                 >;
>         };
>
> +       pinctrl_ucs1002_pins: ucs1002grp {
> +               fsl,pins = <
> +                       MX6QDL_PAD_EIM_A25__GPIO5_IO02          0x1b0b0
> +                       MX6QDL_PAD_EIM_D21__GPIO3_IO21          0x1b0b0
> +               >;
> +       };
> +
>         pinctrl_usdhc2: usdhc2grp {
>                 fsl,pins = <
>                         MX6QDL_PAD_SD2_CMD__SD2_CMD             0x10059
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
