Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FAA4AB8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 22:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+L4qpkbhPajkiCDS0IOHNigl63TS1L1bLI+LJq4yanM=; b=bZo/aU+pLGkbCq
	kaMy/f106UYGLSo+iiY4pOG+RhuAeOEgsyXjR8bXeQ4QLPyLgXP7Mcp975pQ7TBshz3nFFhn+tDNS
	NztR5kwhkNGSRHb77WTeFcIVBUbgocRdMQmDKDif0dfrgsmlq5bRFz+6vPF+KWxc/uSUWA0KWnY2O
	x72+ME9w4htauvLxjhezPxZzuFrXsLntRn7VHTBWRfLVeirGWonQ5p+59znMwug4Hky9izB5SvL7A
	TK+nedYuyP3mTLoPi/YrMYL1gH4lk1hJTkzIyutRij2W451vdKGs+Q9mpJtkQ7/CRO1wvkjWI49vU
	9yvpJPfkP5W9nIg1zTaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKZR-0004Jr-0c; Tue, 18 Jun 2019 20:19:09 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKZG-0004JS-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 20:18:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id c66so4677579wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LTMdBP8eCUfHjffwbb75FXDn3anqE4Gx9Xs6BmZvRK4=;
 b=PUXgpcZPRsO9lRHA4KBsCleQ6lOorgPUrU1TbIh57xC/sGQKKDDOHjf1Og4r0T8PS3
 4FfSGLxiKCQCnLWeOyz0+c86/6FMTGN15JmfgeTESNaDSLbgZ7F5FZi1kzI3ajLKLtw2
 DEyItfEeTzojaeEGTTVLxf1UtJ6iOR2DuaoRx6Beigh51xKc0IbKjvE/GNRtuHEzTDDC
 A3bA60KzjBJfAv4iQ2ydEp9Qs4ofjbiBxumAskwSn4HOSQbGjH0h11WHc3v1AFTsd368
 PKTIX8FhEsJ3rqzXoy+heHkSsVjcRQAQV0nPENg3+euHl3apWsHwM/aJ99Wlf5fM5Fj2
 bv3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LTMdBP8eCUfHjffwbb75FXDn3anqE4Gx9Xs6BmZvRK4=;
 b=L9iNZSDQ2KUsx26iBtsjKkRFCFUQavmNCi9aLRM0H9PzyNTfrExN+9RBivUqkgc1Rg
 tsxw0O5ZP5Bz0CXGBncNxbGRZVSYkTDU2Vq40EpNbf3qQ+M8XQ+05x+PPY5oaeVAP/ld
 3+sLAI9OAQRSsMGGv7JZ3QebhotaMGH4OhFCTmhhlMNA87mvWshqeNTHPolK1LTbal8M
 AZNLI/U0qjTcfgefmXyzS6M7hLsyE6ltQpm9z4BR5IxtsNdimJ/mtNdgdKKtdeqi7B9N
 BklBsoosIs62ItTvADo9PjjtTDRRHeyqUy6fZodiUaPqcdqiQZM+I+ST10YXvzyqgDty
 sDqQ==
X-Gm-Message-State: APjAAAUbGUvshsqMhJBHPsyo+AMGPAGyt6knPitsiZlkDPzLRMJI1+AW
 GA/Ud7jlwV3dCbvKEaaMfrljhqN8EI2kXlGFx4F2EQ==
X-Google-Smtp-Source: APXvYqz1tLKUdFmkDYrn9GXuqjoehYxC5kr689Ke/bt0PzSYLe7IGleSGeQWVzCscTngOGlquK82tRYJAViCEDOCqHg=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr3115442wmc.25.1560889136270; 
 Tue, 18 Jun 2019 13:18:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190604123257.2920-1-daniel.baluta@nxp.com>
 <20190604123257.2920-3-daniel.baluta@nxp.com>
In-Reply-To: <20190604123257.2920-3-daniel.baluta@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 18 Jun 2019 23:18:44 +0300
Message-ID: <CAEnQRZDhh-NiYhS6=t=URqA0Yn4=HdL2xXCci_AmqdUgU=8kkw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: imx8mm-evk: Enable audio codec wm8524
To: Daniel Baluta <daniel.baluta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_131858_499667_EC361E00 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Devicetree List <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shawn,

Care to have a look at this? git send-email should correctly work now.

Let me know if you want me to resend

On Tue, Jun 4, 2019 at 3:34 PM <daniel.baluta@nxp.com> wrote:
>
> From: Daniel Baluta <daniel.baluta@nxp.com>
>
> i.MX8MM has one wm8524 audio codec connected with
> SAI3 digital audio interface.
>
> This patch uses simple-card machine driver in order
> to enable wm8524 codec.
>
> We need to set:
>         * SAI3 pinctrl configuration
>         * codec reset gpio pinctrl configuration
>         * clock hierarchy
>         * codec node
>         * simple-card configuration
>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 55 ++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index f8ff0a4b8961..7d2ec0326659 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -37,6 +37,37 @@
>                 gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
>                 enable-active-high;
>         };
> +
> +       wm8524: audio-codec {
> +               #sound-dai-cells = <0>;
> +               compatible = "wlf,wm8524";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_gpio_wlf>;
> +               wlf,mute-gpios = <&gpio5 21 GPIO_ACTIVE_LOW>;
> +       };
> +
> +       sound-wm8524 {
> +               compatible = "simple-audio-card";
> +               simple-audio-card,name = "wm8524-audio";
> +               simple-audio-card,format = "i2s";
> +               simple-audio-card,frame-master = <&cpudai>;
> +               simple-audio-card,bitclock-master = <&cpudai>;
> +               simple-audio-card,widgets =
> +                       "Line", "Left Line Out Jack",
> +                       "Line", "Right Line Out Jack";
> +               simple-audio-card,routing =
> +                       "Left Line Out Jack", "LINEVOUTL",
> +                       "Right Line Out Jack", "LINEVOUTR";
> +
> +               cpudai: simple-audio-card,cpu {
> +                       sound-dai = <&sai3>;
> +               };
> +
> +               simple-audio-card,codec {
> +                       sound-dai = <&wm8524>;
> +                       clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
> +               };
> +       };
>  };
>
>  &A53_0 {
> @@ -65,6 +96,15 @@
>         };
>  };
>
> +&sai3 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_sai3>;
> +       assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
> +       assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
> +       assigned-clock-rates = <24576000>;
> +       status = "okay";
> +};
> +
>  &uart2 { /* console */
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_uart2>;
> @@ -242,6 +282,12 @@
>                 >;
>         };
>
> +       pinctrl_gpio_wlf: gpiowlfgrp {
> +               fsl,pins = <
> +                       MX8MM_IOMUXC_I2C4_SDA_GPIO5_IO21        0xd6
> +               >;
> +       };
> +
>         pinctrl_i2c1: i2c1grp {
>                 fsl,pins = <
>                         MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL                  0x400001c3
> @@ -261,6 +307,15 @@
>                 >;
>         };
>
> +       pinctrl_sai3: sai3grp {
> +               fsl,pins = <
> +                       MX8MM_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC     0xd6
> +                       MX8MM_IOMUXC_SAI3_TXC_SAI3_TX_BCLK      0xd6
> +                       MX8MM_IOMUXC_SAI3_MCLK_SAI3_MCLK        0xd6
> +                       MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0     0xd6
> +               >;
> +       };
> +
>         pinctrl_uart2: uart2grp {
>                 fsl,pins = <
>                         MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX     0x140
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
