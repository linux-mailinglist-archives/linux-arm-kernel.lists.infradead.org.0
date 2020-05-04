Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9A31C3760
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 12:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7MZNXVgirPlbv2K1dvesUXYamtgo1+Ee/Oi7CDkw7U=; b=YZZY086HQmjIlX
	KctG8WlsmpLvaE8886vy6mX+CeCFj8qh7YMysYuhpoM6AHvqoLDCDcu2o6vMxiQJUlwCiGOzZ10HM
	F4SXhHEsFoiSdfVwC/W8xNYuIsXFA/VIfuJPK0uaKyngBXm8HCL+3MWQT9YqIRD7pQxThwRQr0nIm
	97bSbZHMj+gNQ1QXQ2ozkU1KOt8kYNbh79T/BwI7VYrYUNW/4lZnlJJPFBuZPYq9XDb0gN2f/sh2L
	FEUxX7h5bKbjT1np9LNE32QP04aU23LY/9TFvKZ8g2aEJRYDsAfQB3L0A1B7DPQuDcJWaS1uKDAl2
	A3AIPqoppA4Ho5k0hIFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYng-0001lF-5t; Mon, 04 May 2020 10:58:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYnW-0001jK-H1; Mon, 04 May 2020 10:58:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id u16so8486171wmc.5;
 Mon, 04 May 2020 03:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0VLwOT6bJqN3K7ts+w2SYMjYr93mptYzOJqRAqbrzsY=;
 b=HzvieQvpoS8MOsvOHkWRFAqYFMxa5kiZ+2Cca+rP7jHhs3UvjiTtmb8ZSfAUMIxUd2
 WKbQ1JA6DjZg7sVjddKL5WhNFiqYHmuWSg7zSJZqyvStKoYRrZ8q37qX1AUYNnOA8LmP
 rbFEzhyylwrl7ftFEqdrNt8YzHPWiTg4lM0JmzeM5v4GwWNlbQQND2cNGGAYY+om/zrM
 BJ28Vm7FE5UDtaYfZYoAFn1zHn8AQ+Wa89gyE0DDB7WGD6EsM2Ydn59/w36iNf/6p/hH
 zmt6/1wajPh0TcFGgA11IBL2NxKUXzk5P9azCkEptTQGrjVRAKJgmzWMJA24y1gOUgGT
 Vszw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0VLwOT6bJqN3K7ts+w2SYMjYr93mptYzOJqRAqbrzsY=;
 b=KlEU9LYeKtQwTejcP7n0yqvi5YwJhZIjsLKfsSWhzEij8e/WsgzLlxWRZytCIXrn6v
 f/YQeoucDlrFAnOS6UWA9oGp4/xmn5iuSoaIQS4lgC2+Cli8W0Yp0i8kLh0fyRXwGIGl
 8dm1r1QWmtn1f2iGL7US4K4Gcq1LMTOYSHUKmWVT/NEXYdqW3c0yHKc7HfJSfrW8PRkp
 YQmcJTy6wH1hxCAM9XHpguKRfYPs1kf5otRP5X2ExvoBFz05pFoqdyUp98+lUXxXkr6W
 yKUesQb73IknRdLSznwzT+7If7o3IKz2RR65BtrOyU7Op8QZcIxFq4aZZCwCni+N7dYW
 tzuA==
X-Gm-Message-State: AGi0PubABXdKn+T/Qy633CHEmTd0OLwPL5zW6NfN+li1D2F8Q0LwLUnV
 4ZIiC3H1uZHpdgmtKfCt4vmnBSA0OSbemhDKmcY3zjshOiGXXQ==
X-Google-Smtp-Source: APiQypIyFdGV0t4KhW/32RO57/X+1YIjrApNcxzi2Lmx8drWPz/6xswQx7UZRCu8zdIJb7JNUsYHxLqNiDDqpxOvkTQ=
X-Received: by 2002:a1c:9e51:: with SMTP id h78mr15112247wme.177.1588589885341; 
 Mon, 04 May 2020 03:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
 <20200502114752.1048500-4-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200502114752.1048500-4-martin.blumenstingl@googlemail.com>
From: hex dump <hexdump0815@gmail.com>
Date: Mon, 4 May 2020 12:57:51 +0200
Message-ID: <CAKTihDUY5VRMtydLWkH3pg+EYdUbss5-mKzrfPOapLP1J0cEXg@mail.gmail.com>
Subject: Re: [PATCH 3/6] phy: amlogic: meson8b-usb2: Use a MMIO regmap
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_035806_575956_77506483 
X-CRM114-Status: GOOD (  19.40  )
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
> Using a MMIO regmap and switch to regmap_update_bits() to simplify the
> code in the driver. Also switch to devm_platform_ioremap_resource()
> instead of open-coding it. No functional changes intended.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Tested-by: hexdump <hexdump0815@googlemail.com>

> ---
>  drivers/phy/amlogic/Kconfig            |  1 +
>  drivers/phy/amlogic/phy-meson8b-usb2.c | 73 ++++++++++++--------------
>  2 files changed, 35 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/phy/amlogic/Kconfig b/drivers/phy/amlogic/Kconfig
> index 71801e30d601..3495b23af797 100644
> --- a/drivers/phy/amlogic/Kconfig
> +++ b/drivers/phy/amlogic/Kconfig
> @@ -9,6 +9,7 @@ config PHY_MESON8B_USB2
>         depends on USB_SUPPORT
>         select USB_COMMON
>         select GENERIC_PHY
> +       select REGMAP_MMIO
>         help
>           Enable this to support the Meson USB2 PHYs found in Meson8,
>           Meson8b and GXBB SoCs.
> diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
> index bd66bd723e4a..86824cc21f11 100644
> --- a/drivers/phy/amlogic/phy-meson8b-usb2.c
> +++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
> @@ -10,6 +10,7 @@
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> +#include <linux/regmap.h>
>  #include <linux/reset.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> @@ -105,34 +106,24 @@
>  #define ACA_ENABLE_COMPLETE_TIME                       50
>
>  struct phy_meson8b_usb2_priv {
> -       void __iomem            *regs;
> +       struct regmap           *regmap;
>         enum usb_dr_mode        dr_mode;
>         struct clk              *clk_usb_general;
>         struct clk              *clk_usb;
>         struct reset_control    *reset;
>  };
>
> -static u32 phy_meson8b_usb2_read(struct phy_meson8b_usb2_priv *phy_priv,
> -                                u32 reg)
> -{
> -       return readl(phy_priv->regs + reg);
> -}
> -
> -static void phy_meson8b_usb2_mask_bits(struct phy_meson8b_usb2_priv *phy_priv,
> -                                      u32 reg, u32 mask, u32 value)
> -{
> -       u32 data;
> -
> -       data = phy_meson8b_usb2_read(phy_priv, reg);
> -       data &= ~mask;
> -       data |= (value & mask);
> -
> -       writel(data, phy_priv->regs + reg);
> -}
> +static const struct regmap_config phy_meson8b_usb2_regmap_conf = {
> +       .reg_bits = 8,
> +       .val_bits = 32,
> +       .reg_stride = 4,
> +       .max_register = REG_TUNE,
> +};
>
>  static int phy_meson8b_usb2_power_on(struct phy *phy)
>  {
>         struct phy_meson8b_usb2_priv *priv = phy_get_drvdata(phy);
> +       u32 reg;
>         int ret;
>
>         if (!IS_ERR_OR_NULL(priv->reset)) {
> @@ -156,34 +147,34 @@ static int phy_meson8b_usb2_power_on(struct phy *phy)
>                 return ret;
>         }
>
> -       phy_meson8b_usb2_mask_bits(priv, REG_CONFIG, REG_CONFIG_CLK_32k_ALTSEL,
> -                                  REG_CONFIG_CLK_32k_ALTSEL);
> +       regmap_update_bits(priv->regmap, REG_CONFIG, REG_CONFIG_CLK_32k_ALTSEL,
> +                          REG_CONFIG_CLK_32k_ALTSEL);
>
> -       phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_REF_CLK_SEL_MASK,
> -                                  0x2 << REG_CTRL_REF_CLK_SEL_SHIFT);
> +       regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_REF_CLK_SEL_MASK,
> +                          0x2 << REG_CTRL_REF_CLK_SEL_SHIFT);
>
> -       phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_FSEL_MASK,
> -                                  0x5 << REG_CTRL_FSEL_SHIFT);
> +       regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_FSEL_MASK,
> +                          0x5 << REG_CTRL_FSEL_SHIFT);
>
>         /* reset the PHY */
> -       phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_POWER_ON_RESET,
> -                                  REG_CTRL_POWER_ON_RESET);
> +       regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET,
> +                          REG_CTRL_POWER_ON_RESET);
>         udelay(RESET_COMPLETE_TIME);
> -       phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_POWER_ON_RESET, 0);
> +       regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET, 0);
>         udelay(RESET_COMPLETE_TIME);
>
> -       phy_meson8b_usb2_mask_bits(priv, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT,
> -                                  REG_CTRL_SOF_TOGGLE_OUT);
> +       regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT,
> +                          REG_CTRL_SOF_TOGGLE_OUT);
>
>         if (priv->dr_mode == USB_DR_MODE_HOST) {
> -               phy_meson8b_usb2_mask_bits(priv, REG_ADP_BC,
> -                                          REG_ADP_BC_ACA_ENABLE,
> -                                          REG_ADP_BC_ACA_ENABLE);
> +               regmap_update_bits(priv->regmap, REG_ADP_BC,
> +                                  REG_ADP_BC_ACA_ENABLE,
> +                                  REG_ADP_BC_ACA_ENABLE);
>
>                 udelay(ACA_ENABLE_COMPLETE_TIME);
>
> -               if (phy_meson8b_usb2_read(priv, REG_ADP_BC) &
> -                       REG_ADP_BC_ACA_PIN_FLOAT) {
> +               regmap_read(priv->regmap, REG_ADP_BC, &reg);
> +               if (reg & REG_ADP_BC_ACA_PIN_FLOAT) {
>                         dev_warn(&phy->dev, "USB ID detect failed!\n");
>                         clk_disable_unprepare(priv->clk_usb);
>                         clk_disable_unprepare(priv->clk_usb_general);
> @@ -213,18 +204,22 @@ static const struct phy_ops phy_meson8b_usb2_ops = {
>  static int phy_meson8b_usb2_probe(struct platform_device *pdev)
>  {
>         struct phy_meson8b_usb2_priv *priv;
> -       struct resource *res;
>         struct phy *phy;
>         struct phy_provider *phy_provider;
> +       void __iomem *base;
>
>         priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
>         if (!priv)
>                 return -ENOMEM;
>
> -       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       priv->regs = devm_ioremap_resource(&pdev->dev, res);
> -       if (IS_ERR(priv->regs))
> -               return PTR_ERR(priv->regs);
> +       base = devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       priv->regmap = devm_regmap_init_mmio(&pdev->dev, base,
> +                                            &phy_meson8b_usb2_regmap_conf);
> +       if (IS_ERR(priv->regmap))
> +               return PTR_ERR(priv->regmap);
>
>         priv->clk_usb_general = devm_clk_get(&pdev->dev, "usb_general");
>         if (IS_ERR(priv->clk_usb_general))
> --
> 2.26.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
