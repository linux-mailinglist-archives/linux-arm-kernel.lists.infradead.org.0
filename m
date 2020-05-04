Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9DE1C3768
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 12:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYZZLRdUWhp8vXB6ZCU26JjCHc8aYY6sBY/eCde2GN4=; b=h+G4BEHGOz707D
	9Oc5mGF5PJrq7LD+zxJXK1PVRNJtbs2hVPx3a3gXv9avsnWuR5r7lVod29B4gpOnS6YEMGF8ZL88C
	hqjpFQuucO42RGY1r+YZuvKQ9SpxLkrqYdzv8Saqd02+jXtYxL1fYIpaFNX2yrU4t8UdtnZc1dKLq
	qgcUmtKxyba8nS26i441svgafx6dixeyn8vyvcCMeDcjEK6d0tvewANeftNd/jSAEmAGTIhsd2NJo
	Z1F5rwPVfzKf0teetn02PLIACb+7JTCbAmazfww7Yo5wc4nw0989gSajbspJTA4ryhbsOMGJPHjk9
	R5winUKlL4eTou9ERhrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYp2-0002Jz-2p; Mon, 04 May 2020 10:59:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYor-0002H3-PL; Mon, 04 May 2020 10:59:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id x25so7930914wmc.0;
 Mon, 04 May 2020 03:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rg6MiL5KjJESJUJBphZH2wxAoWjr3LYiJXHLS1k8CEw=;
 b=THlVjspYEvW5ah85ef9CHZkOZaUmN9t2SMREKgz6CA8H74cLoka/cPPCHN6v0x7Pkq
 QjwD1MNR4jUeo7RqCCApALqBJYIoc5fUrLreYmEz6u/1PiYq3zSrewFBl6j38tA5Kjwl
 zEEbJ6gadFiuksqNVNbRFpG7sAe5XcJ+9TvwuR/jFajgaORpdLXTcph4YEcE8knOT4+f
 r/YK9tCELrlTpTwWmUiSn4yK/PAEAYoUgL8L0vepEXxHNlfEMnlnbGVJp4616qSXnJG/
 Yj0D7rtMAY0jfL7wmhBeoOmUZKqVv7gmlhSPPu85IX8LJUnc7OlVeVWb/kHuY63JO/mb
 XTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rg6MiL5KjJESJUJBphZH2wxAoWjr3LYiJXHLS1k8CEw=;
 b=OPV9GM1Klp2DzoapRYM4yHaGz1z3hgf6bl49r7y+xdCSKOUC2DLRmjNiAm/oD3nFTh
 g1/0LyS3fCeCbHrMzW6s4gBIx0dmvaZ1+qQA1K4bQRFb30K5cbZ8WmC6RcEXmQornWC7
 8YKA3oxpV9BHlcao8Pjxj6PY8tGzDaZgbfe93mbW9o+TNfxYFVHgRnyXelZiSUqmhkFX
 Rr3UTwrnACmY3Y57QtMiWpd+9Sjzp3vFHnhYonbs3FqhrulvbcednVSEGpKI9YhBm6Zv
 7Z0L/xA+FzkqSJKS+5E8GO++i0CQAvItN3puBf8AR9uOrk8hZ8ms6GKY6IFtcJtc92AF
 CxfA==
X-Gm-Message-State: AGi0PuYqZcMOn5/owrAdrVDc3KQIp9mVewgni/QJWHdE3dd+wj3bTKGo
 HQ0XsXHTaw1dY/KwZirUKu2LA7H6W4qXhztdNf0=
X-Google-Smtp-Source: APiQypIk1BJTmqCeYOqlKr/uqje+UW+4gTquQABz3PjQloTz+zW97EInEB1BpPX6W34cEIPdJcz7BIVlu5AJjXfp+hI=
X-Received: by 2002:a7b:c0c5:: with SMTP id s5mr13783192wmh.134.1588589968341; 
 Mon, 04 May 2020 03:59:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
 <20200502114752.1048500-5-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200502114752.1048500-5-martin.blumenstingl@googlemail.com>
From: hex dump <hexdump0815@gmail.com>
Date: Mon, 4 May 2020 12:59:14 +0200
Message-ID: <CAKTihDWOZMHs5Bq++NeyE=VoyKBkAkfEXbr5QY29k=2XEr4K1g@mail.gmail.com>
Subject: Re: [PATCH 4/6] phy: amlogic: meson8b-usb2: Don't set
 REG_ADP_BC_ACA_ENABLE on Meson8
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_035929_823914_73A29FC8 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hexdump0815[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hexdump0815[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 2, 2020 at 1:48 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Skip setting REG_ADP_BC_ACA_ENABLE on Meson8 SoCs and polling for the
> REG_ADP_BC_ACA_PIN_FLOAT bit. The vendor also skips this part on Meson8
> SoCs.
> This fixes initialization of the host-only USB PHY on Meson8 which would
> otherwise fail with "USB ID detect failed!".
>
> Fixes: 4a3449d1a0a10c ("phy: meson8b-usb2: add support for the USB PHY on Meson8 SoCs")
> Reported-by: hexdump <hexdump0815@googlemail.com>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Tested-by: hexdump <hexdump0815@googlemail.com>

BEFORE: usb failed with:
[    3.451386] dwc2 c9040000.usb: c9040000.usb supply vusb_d not
found, using dummy regulator
[    3.454097] dwc2 c9040000.usb: c9040000.usb supply vusb_a not
found, using dummy regulator
[    3.463602] phy phy-c1108800.phy.0: USB ID detect failed!
[    3.467646] phy phy-c1108800.phy.0: phy poweron failed --> -22

AFTER: usb is detected and working fine on my mxiiii meson8 box

> ---
>  drivers/phy/amlogic/phy-meson8b-usb2.c | 48 ++++++++++++++++++++------
>  1 file changed, 38 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
> index 86824cc21f11..7236b8885f07 100644
> --- a/drivers/phy/amlogic/phy-meson8b-usb2.c
> +++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
> @@ -10,6 +10,7 @@
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> +#include <linux/property.h>
>  #include <linux/regmap.h>
>  #include <linux/reset.h>
>  #include <linux/phy/phy.h>
> @@ -105,12 +106,17 @@
>  #define RESET_COMPLETE_TIME                            500
>  #define ACA_ENABLE_COMPLETE_TIME                       50
>
> +struct phy_meson8b_usb2_match_data {
> +       bool                    host_enable_aca;
> +};
> +
>  struct phy_meson8b_usb2_priv {
> -       struct regmap           *regmap;
> -       enum usb_dr_mode        dr_mode;
> -       struct clk              *clk_usb_general;
> -       struct clk              *clk_usb;
> -       struct reset_control    *reset;
> +       struct regmap                                   *regmap;
> +       enum usb_dr_mode                                dr_mode;
> +       struct clk                                      *clk_usb_general;
> +       struct clk                                      *clk_usb;
> +       struct reset_control                            *reset;
> +       const struct phy_meson8b_usb2_match_data        *match;
>  };
>
>  static const struct regmap_config phy_meson8b_usb2_regmap_conf = {
> @@ -166,7 +172,8 @@ static int phy_meson8b_usb2_power_on(struct phy *phy)
>         regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT,
>                            REG_CTRL_SOF_TOGGLE_OUT);
>
> -       if (priv->dr_mode == USB_DR_MODE_HOST) {
> +       if (priv->dr_mode == USB_DR_MODE_HOST &&
> +           priv->match->host_enable_aca) {
>                 regmap_update_bits(priv->regmap, REG_ADP_BC,
>                                    REG_ADP_BC_ACA_ENABLE,
>                                    REG_ADP_BC_ACA_ENABLE);
> @@ -216,6 +223,10 @@ static int phy_meson8b_usb2_probe(struct platform_device *pdev)
>         if (IS_ERR(base))
>                 return PTR_ERR(base);
>
> +       priv->match = device_get_match_data(&pdev->dev);
> +       if (!priv->match)
> +               return -ENODEV;
> +
>         priv->regmap = devm_regmap_init_mmio(&pdev->dev, base,
>                                              &phy_meson8b_usb2_regmap_conf);
>         if (IS_ERR(priv->regmap))
> @@ -254,11 +265,28 @@ static int phy_meson8b_usb2_probe(struct platform_device *pdev)
>         return PTR_ERR_OR_ZERO(phy_provider);
>  }
>
> +static const struct phy_meson8b_usb2_match_data phy_meson8_usb2_match_data = {
> +       .host_enable_aca = false,
> +};
> +
> +static const struct phy_meson8b_usb2_match_data phy_meson8b_usb2_match_data = {
> +       .host_enable_aca = true,
> +};
> +
>  static const struct of_device_id phy_meson8b_usb2_of_match[] = {
> -       { .compatible = "amlogic,meson8-usb2-phy", },
> -       { .compatible = "amlogic,meson8b-usb2-phy", },
> -       { .compatible = "amlogic,meson-gxbb-usb2-phy", },
> -       { },
> +       {
> +               .compatible = "amlogic,meson8-usb2-phy",
> +               .data = &phy_meson8_usb2_match_data
> +       },
> +       {
> +               .compatible = "amlogic,meson8b-usb2-phy",
> +               .data = &phy_meson8b_usb2_match_data
> +       },
> +       {
> +               .compatible = "amlogic,meson-gxbb-usb2-phy",
> +               .data = &phy_meson8b_usb2_match_data
> +       },
> +       { /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, phy_meson8b_usb2_of_match);
>
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
