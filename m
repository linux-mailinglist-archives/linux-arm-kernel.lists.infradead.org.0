Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F9E12E0D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 23:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8z78kbWfUVa3JKZbjnVXlJED58n2xqmiEQSzCLV2Cs=; b=o2M7CEwgrdEra5
	WfyI+qeo9OSYLhrwA0wPbvWewnTtY71LjqKduFl4ihBSnrkBH/0kXd5s0Yje0Vo8FUJMVECFuAERm
	rxQtoNcNuunzSnk7cvEFaQB3c66gAy2mkdBweuiJu6vGrt0LKVX/LEb5UeN8npGCCLEbmCxsCBmZt
	qXC/IkwyBxuLVNVWUJi0reTqEQkk5MH4s9czq46WpsTxfGLPTTW1RmBUEAqeFfVovjPl4k2qAZYkj
	wa5J9mSpbRyJBtApGZX6ZAkKFVF2/h6a/H/fwqG0Qe0b1VhDgmOv3ZIAO/v+XDC+gCy8ADrx2JKAm
	dDDFYvlzqcF6w0mAZtMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1immjB-00009R-FZ; Wed, 01 Jan 2020 22:44:33 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1immiy-0008TJ-Bb
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 22:44:22 +0000
Received: by mail-il1-x143.google.com with SMTP id f5so32857186ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 14:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7lEd0rPJB8lH/fvUpe+aWNRpPFyD8m2DNjmHYzjrwSA=;
 b=TCPhbtiXfEdQ0XN7QzFy8DjLjUYRwZDCX1cDNmOgCK4vIXZoF/wU3AE5PrjHXgGa60
 btNgI1xUH1ioWIrkSDxgkwhEs9vKLkZyRnnWTIvECBHxD9q+V5szsDOJxFlwtwcuaZJT
 uZeWKcUZ1InjRrqSHZUsCv/WlrMIinXUdSzUPnk9pSQKyya7h/1GJtN+tp80k9z3eRbs
 yeToarCarve/weWedIuLrHU8ukhX8KiFaol64QWHoLuxqwXCgr2xFO6PIwZGl3FC3MkB
 Ej1oZRZG+DX0VzBbq9TT/LE4nXsUtnfjFn7tvIbR8hLV74d4kg/ufTiqszm72Sg4CzHy
 8TiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7lEd0rPJB8lH/fvUpe+aWNRpPFyD8m2DNjmHYzjrwSA=;
 b=Nd48tAX4k8QNBbMsCg+FnjVd/rE1dtzSWt8dT9GqU7L7+1OLIn4uU+3njKOgSwSm/V
 5d7t+0OX2bAFzsWj/CubWEAMmF4DFKEppUhkmiOZi+uuHEx7kVivsu43Wd3RpLi4gVve
 CDPOJVyAGf4Xfjr5qwTV39Oc04Hmf4GScPv11R/gRT1VBc72yBO22TdHy62hSmOdkBY4
 7m+aO8ZNaAgKcaPivSup3F/E4CApMlXIhzmNAnM8CBBm45+7CFwWJXzn3R3aLoC5zLfl
 oQFaqJrdmHEyaQsknCxuEUjdQgUcMpK6YkH8o2mBx4MlifF2ueWb9uLNyqmjCoc0z9j2
 BLAw==
X-Gm-Message-State: APjAAAWd4Gf6IvvPPJQcgII+N9IG/uJwIfbiNiEv+EgbAz6ImqZ4M1MW
 L7TVOW1qBCO7PlJj5+YoShq/XfFKJN7BglkwAQ8=
X-Google-Smtp-Source: APXvYqwr94cx10Dd8r57IFNdkLZ9sOv5c9SLgSLL3qznDVW/lV3rkJ/prPAvO97tAJrHhjgNorHxMktUwh9ROnw6+cw=
X-Received: by 2002:a92:4e:: with SMTP id 75mr66694542ila.276.1577918659103;
 Wed, 01 Jan 2020 14:44:19 -0800 (PST)
MIME-Version: 1.0
References: <20200101163136.1586-1-michael@amarulasolutions.com>
 <20200101163136.1586-2-michael@amarulasolutions.com>
In-Reply-To: <20200101163136.1586-2-michael@amarulasolutions.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 1 Jan 2020 16:44:08 -0600
Message-ID: <CAHCN7xLpGFKH-a0_2C7MOrwmurygJDao=YmGzn9B0RdAM+nYZQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] soc: imx: gpcv2: add support for i.MX8MM SoC
To: Michael Trimarchi <michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_144420_413597_6167D6BC 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-amarula@amarulasolutions.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 1, 2020 at 10:32 AM Michael Trimarchi
<michael@amarulasolutions.com> wrote:
>
> The GPCv2 on the Freescale i.MX8MM SoC works in the same way as the
> GPCv2 on the i.MX8MQ, with a slight different mapping.
>
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>

I tried to push something like this as well, because the mainline
U-Boot and Linux don't have functional USB, but I was shot down.

See the series here along with some of the dialog:
https://patchwork.kernel.org/patch/11291889/

I'd love to see something like this pushed upstream to get the USB
working without using a customer U-Boot or kernel repo.

adam
> ---
>  .../bindings/power/fsl,imx-gpcv2.txt          |   4 +-
>  drivers/soc/imx/gpcv2.c                       | 110 ++++++++++++++++++
>  2 files changed, 113 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
> index 61649202f6f5..fde651cd06d0 100644
> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
> @@ -9,6 +9,7 @@ Required properties:
>  - compatible: Should be one of:
>         - "fsl,imx7d-gpc"
>         - "fsl,imx8mq-gpc"
> +       - "fsl,imx8mm-gpc"
>
>  - reg: should be register base and length as documented in the
>    datasheet
> @@ -25,7 +26,8 @@ Required properties:
>
>  - reg: Power domain index. Valid values are defined in
>    include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc and
> -  include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc
> +  include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc and
> +  include/dt-bindings/power/imx8mm-power.h for fsl,imx8mm-gpc
>
>  - #power-domain-cells: Should be 0
>
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index b0dffb06c05d..d3c012a61c11 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -16,6 +16,7 @@
>  #include <linux/regulator/consumer.h>
>  #include <dt-bindings/power/imx7-power.h>
>  #include <dt-bindings/power/imx8mq-power.h>
> +#include <dt-bindings/power/imx8mm-power.h>
>
>  #define GPC_LPCR_A_CORE_BSC                    0x000
>
> @@ -41,6 +42,20 @@
>  #define IMX8M_PCIE1_A53_DOMAIN                 BIT(3)
>  #define IMX8M_MIPI_A53_DOMAIN                  BIT(2)
>
> +#define IMX8MM_VPU_H1_A53_DOMAIN               BIT(15)
> +#define IMX8MM_VPU_G2_A53_DOMAIN               BIT(14)
> +#define IMX8MM_VPU_G1_A53_DOMAIN               BIT(13)
> +#define IMX8MM_DISPMIX_A53_DOMAIN              BIT(12)
> +#define IMX8MM_GPU_3D_A53_DOMAIN               BIT(11)
> +#define IMX8MM_VPUMIX_A53_DOMAIN               BIT(10)
> +#define IMX8MM_GPUMIX_A53_DOMAIN               BIT(9)
> +#define IMX8MM_GPU_2D_A53_DOMAIN               BIT(8)
> +#define IMX8MM_DDR1_A53_DOMAIN                 BIT(7)
> +#define IMX8MM_OTG2_A53_DOMAIN                 BIT(5)
> +#define IMX8MM_OTG1_A53_DOMAIN                 BIT(4)
> +#define IMX8MM_PCIE1_A53_DOMAIN                        BIT(3)
> +#define IMX8MM_MIPI_A53_DOMAIN                 BIT(2)
> +
>  #define GPC_PU_PGC_SW_PUP_REQ          0x0f8
>  #define GPC_PU_PGC_SW_PDN_REQ          0x104
>
> @@ -64,6 +79,20 @@
>  #define IMX8M_PCIE1_SW_Pxx_REQ                 BIT(1)
>  #define IMX8M_MIPI_SW_Pxx_REQ                  BIT(0)
>
> +#define IMX8MM_VPU_H1_SW_Pxx_REQ               BIT(13)
> +#define IMX8MN_VPU_G2_SW_Pxx_REQ               BIT(12)
> +#define IMX8MN_VPU_G1_SW_Pxx_REQ               BIT(11)
> +#define IMX8MM_DISPMIX_SW_Pxx_REQ              BIT(10)
> +#define IMX8MM_GPU_3D_SW_Pxx_REQ               BIT(9)
> +#define IMX8MM_VPUMIX_SW_Pxx_REQ               BIT(8)
> +#define IMX8MM_GPUMIX_SW_Pxx_REQ               BIT(7)
> +#define IMX8MM_GPU_2D_SW_Pxx_REQ               BIT(6)
> +#define IMX8MM_DDR1_SW_Pxx_REQ                 BIT(5)
> +#define IMX8MM_OTG2_SW_Pxx_REQ                 BIT(3)
> +#define IMX8MM_OTG1_SW_Pxx_REQ                 BIT(2)
> +#define IMX8MM_PCIE1_SW_Pxx_REQ                        BIT(1)
> +#define IMX8MM_MIPI_SW_Pxx_REQ                 BIT(0)
> +
>  #define GPC_M4_PU_PDN_FLG              0x1bc
>
>  #define GPC_PU_PWRHSK                  0x1fc
> @@ -94,6 +123,20 @@
>  #define IMX8M_PGC_MIPI_CSI2            28
>  #define IMX8M_PGC_PCIE2                        29
>
> +#define IMX8MM_PGC_MIPI                        16
> +#define IMX8MM_PGC_PCIE1               17
> +#define IMX8MM_PGC_OTG1                        18
> +#define IMX8MM_PGC_OTG2                        19
> +#define IMX8MM_PGC_DDR1                        21
> +#define IMX8MM_PGC_GPU_2D              22
> +#define IMX8MM_PGC_GPUMIX              17
> +#define IMX8MM_PGC_VPUMIX              18
> +#define IMX8MM_PGC_GPU_3D              19
> +#define IMX8MM_PGC_DSPMIX              20
> +#define IMX8MM_PGC_VPU_G1              21
> +#define IMX8MM_PGC_VPU_G2              22
> +#define IMX8MM_PGC_VPU_H1              22
> +
>  #define GPC_PGC_CTRL(n)                        (0x800 + (n) * 0x40)
>  #define GPC_PGC_SR(n)                  (GPC_PGC_CTRL(n) + 0xc)
>
> @@ -442,6 +485,72 @@ static const struct imx_pgc_domain_data imx8m_pgc_domain_data = {
>         .reg_access_table = &imx8m_access_table,
>  };
>
> +static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
> +       [IMX8MM_POWER_DOMAIN_USB_OTG1] = {
> +               .genpd = {
> +                       .name = "usb-otg1",
> +               },
> +               .bits  = {
> +                       .pxx = IMX8MM_OTG1_SW_Pxx_REQ,
> +                       .map = IMX8MM_OTG1_A53_DOMAIN,
> +               },
> +               .pgc   = IMX8MM_PGC_OTG1,
> +       },
> +
> +       [IMX8MM_POWER_DOMAIN_USB_OTG2] = {
> +               .genpd = {
> +                       .name = "usb-otg2",
> +               },
> +               .bits  = {
> +                       .pxx = IMX8MM_OTG2_SW_Pxx_REQ,
> +                       .map = IMX8MM_OTG2_A53_DOMAIN,
> +               },
> +               .pgc   = IMX8MM_PGC_OTG2,
> +       },
> +};
> +
> +static const struct regmap_range imx8mm_yes_ranges[] = {
> +               regmap_reg_range(GPC_LPCR_A_CORE_BSC,
> +                                GPC_PU_PWRHSK),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_MIPI),
> +                                GPC_PGC_SR(IMX8MM_PGC_MIPI)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_PCIE1),
> +                                GPC_PGC_SR(IMX8MM_PGC_PCIE1)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_OTG1),
> +                                GPC_PGC_SR(IMX8MM_PGC_OTG1)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_OTG2),
> +                                GPC_PGC_SR(IMX8MM_PGC_OTG2)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_DDR1),
> +                                GPC_PGC_SR(IMX8MM_PGC_DDR1)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPU_2D),
> +                                GPC_PGC_SR(IMX8MM_PGC_GPU_2D)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPUMIX),
> +                                GPC_PGC_SR(IMX8MM_PGC_GPUMIX)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPUMIX),
> +                                GPC_PGC_SR(IMX8MM_PGC_VPUMIX)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPU_3D),
> +                                GPC_PGC_SR(IMX8MM_PGC_GPU_3D)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_DSPMIX),
> +                                GPC_PGC_SR(IMX8MM_PGC_DSPMIX)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_G1),
> +                                GPC_PGC_SR(IMX8MM_PGC_VPU_G1)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_G2),
> +                                GPC_PGC_SR(IMX8MM_PGC_VPU_G2)),
> +               regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_H1),
> +                                GPC_PGC_SR(IMX8MM_PGC_VPU_H1)),
> +};
> +
> +static const struct regmap_access_table imx8mm_access_table = {
> +       .yes_ranges     = imx8mm_yes_ranges,
> +       .n_yes_ranges   = ARRAY_SIZE(imx8mm_yes_ranges),
> +};
> +
> +static const struct imx_pgc_domain_data imx8mm_pgc_domain_data = {
> +       .domains = imx8mm_pgc_domains,
> +       .domains_num = ARRAY_SIZE(imx8mm_pgc_domains),
> +       .reg_access_table = &imx8mm_access_table,
> +};
> +
>  static int imx_pgc_get_clocks(struct imx_pgc_domain *domain)
>  {
>         int i, ret;
> @@ -641,6 +750,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
>  static const struct of_device_id imx_gpcv2_dt_ids[] = {
>         { .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
>         { .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
> +       { .compatible = "fsl,imx8mm-gpc", .data = &imx8mm_pgc_domain_data, },
>         { }
>  };
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
