Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 202D53051B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJ7DqxuASueZo1CgwR195tITOCf1Y0pIJ1dlbeFqcro=; b=fgT+uUcf5qVMgb
	ogVExWx228nllu432U7QFgUJOujkRolQkieVH6/seMj8nHnbIxOyDYwocu7l4FxQVlhObfZoj6yIg
	sHOai0yHIL+X7CHTArwV5c5SR16NpxWMAwr2YW58h3DmIlscSipAG2dS1awoEOjIZrK3ieNVyy2rd
	gLs4bt/TxUstvRwDe/uKxnCeRGiW8IGPIdtBTJowSrJ0kcpaixljETcgWsEnbiniL8QVk9U8LC0tY
	d2OAw4ArSinQGx4w+/npNqTptbVq3x0e79rTjQsC6aN5LJgfy8t35d8EukN8/RDvkL/3Ec3uU2bUP
	CoBDDfpj/ZYJPRpYjTPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWU1c-0007j4-58; Thu, 30 May 2019 22:59:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWU1U-0007ic-L8; Thu, 30 May 2019 22:59:50 +0000
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 194B5262CC;
 Thu, 30 May 2019 22:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559257188;
 bh=G5YV9O22/1UxV1YJU/dGvKTsjODYWPEfxn4+6TUmwRM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1+7zl0SfC/X2D0gNL1k3wm1QWcK2VPavqXVccW8VYlMSMzZ11QgWzoGfKWYnj8Ofe
 QoYRlo6TQzJScsYRkpScQuH57s2k9mXuB4353Mxc7Wq569GXOnr5+wWw8i5SizCylG
 QhpPPWgzTjIOeQFXVtPXYVdRQVCzDqzSYNv50D2c=
Received: by mail-wm1-f47.google.com with SMTP id y3so4887435wmm.2;
 Thu, 30 May 2019 15:59:48 -0700 (PDT)
X-Gm-Message-State: APjAAAUYd4SQJO3Ndcfqu0K/nfXlC3lN7YMmJjUvs3+jnL8WPPNEUZCi
 wqF2yvuvBNZalAJdr0DxVIE+QET+OL7v2iTX/AQ=
X-Google-Smtp-Source: APXvYqwClGtyBz+ZnXOQGQAF7++JFFoH2RLfaSB7q56mYro/VASYaiqO81qOsisdoVlT8WS2G26HMrA07OjDSwr8tAg=
X-Received: by 2002:a7b:c0d5:: with SMTP id s21mr3656544wmh.152.1559257186685; 
 Thu, 30 May 2019 15:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <1558946326-13630-1-git-send-email-neal.liu@mediatek.com>
 <1558946326-13630-4-git-send-email-neal.liu@mediatek.com>
In-Reply-To: <1558946326-13630-4-git-send-email-neal.liu@mediatek.com>
From: Sean Wang <sean.wang@kernel.org>
Date: Thu, 30 May 2019 15:59:36 -0700
X-Gmail-Original-Message-ID: <CAGp9LzoC7d9MaCv4OSm5yEGP845zeoQ=Fas_MgZGzSUCeWZ=ww@mail.gmail.com>
Message-ID: <CAGp9LzoC7d9MaCv4OSm5yEGP845zeoQ=Fas_MgZGzSUCeWZ=ww@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] hwrng: add mtk-sec-rng driver
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_155948_728110_BFCC81C1 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, wsd_upstream@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Neal

On Mon, May 27, 2019 at 1:39 AM Neal Liu <neal.liu@mediatek.com> wrote:
>
> For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
> entropy sources is not accessible from normal world (linux) and
> rather accessible from secure world (ATF/TEE) only. This driver aims
> to provide a generic interface to ATF rng service.
>
> Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> ---
>  drivers/char/hw_random/Kconfig       |   16 ++++++
>  drivers/char/hw_random/Makefile      |    1 +
>  drivers/char/hw_random/mtk-sec-rng.c |   97 ++++++++++++++++++++++++++++++++++
>  3 files changed, 114 insertions(+)
>  create mode 100644 drivers/char/hw_random/mtk-sec-rng.c
>
> diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> index 25a7d8f..6c82a3b 100644
> --- a/drivers/char/hw_random/Kconfig
> +++ b/drivers/char/hw_random/Kconfig
> @@ -398,6 +398,22 @@ config HW_RANDOM_MTK
>
>           If unsure, say Y.
>
> +config HW_RANDOM_MTK_SEC
> +       tristate "MediaTek Security Random Number Generator support"
> +       depends on HW_RANDOM
> +       depends on ARCH_MEDIATEK || COMPILE_TEST
> +       default HW_RANDOM
> +       help
> +         This driver provides kernel-side support for the Random Number
> +         Generator hardware found on MediaTek SoCs. The difference with
> +         mtk-rng is the Random Number Generator hardware is secure
> +         access only.
> +
> +         To compile this driver as a module, choose M here. the
> +         module will be called mtk-sec-rng.
> +
> +         If unsure, say Y.
> +
>  config HW_RANDOM_S390
>         tristate "S390 True Random Number Generator support"
>         depends on S390
> diff --git a/drivers/char/hw_random/Makefile b/drivers/char/hw_random/Makefile
> index 7c9ef4a..0ae4993 100644
> --- a/drivers/char/hw_random/Makefile
> +++ b/drivers/char/hw_random/Makefile
> @@ -36,6 +36,7 @@ obj-$(CONFIG_HW_RANDOM_PIC32) += pic32-rng.o
>  obj-$(CONFIG_HW_RANDOM_MESON) += meson-rng.o
>  obj-$(CONFIG_HW_RANDOM_CAVIUM) += cavium-rng.o cavium-rng-vf.o
>  obj-$(CONFIG_HW_RANDOM_MTK)    += mtk-rng.o
> +obj-$(CONFIG_HW_RANDOM_MTK_SEC) += mtk-sec-rng.o
>  obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
>  obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
>  obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
> diff --git a/drivers/char/hw_random/mtk-sec-rng.c b/drivers/char/hw_random/mtk-sec-rng.c
> new file mode 100644
> index 0000000..4c6e5bf
> --- /dev/null
> +++ b/drivers/char/hw_random/mtk-sec-rng.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/hw_random.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/soc/mediatek/mtk_sip_svc.h>
> +
> +#define MT67XX_RNG_MAGIC       0x74726e67
> +#define SMC_RET_NUM            4
> +#define MTK_SEC_RND_SIZE       (sizeof(u32) * SMC_RET_NUM)
> +
> +struct mtk_sec_rng_priv {
> +       struct hwrng rng;
> +};
> +
> +static void mtk_sec_get_rnd(uint32_t *val)
> +{
> +       struct arm_smccc_res res;
> +
> +       arm_smccc_smc(MTK_SIP_KERNEL_GET_RND,
> +                     MT67XX_RNG_MAGIC, 0, 0, 0, 0, 0, 0, &res);
> +
> +       val[0] = res.a0;
> +       val[1] = res.a1;
> +       val[2] = res.a2;
> +       val[3] = res.a3;
> +}
> +
> +static int mtk_sec_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
> +{
> +       size_t get_rnd_size = MTK_SEC_RND_SIZE;

the variable get_rnd_size can be further eliminated

> +       u32 val[4] = {0};
> +       int i, retval = 0;
> +
> +       while (max >= get_rnd_size) {
> +               mtk_sec_get_rnd(val);
> +
> +               for (i = 0; i < SMC_RET_NUM; i++) {
> +                       *(u32 *)buf = val[i];
> +                       buf += sizeof(u32);
> +               }
> +
> +               retval += get_rnd_size;
> +               max -= get_rnd_size;
> +       }
> +
> +       return retval;
> +}
> +
> +static int mtk_sec_rng_probe(struct platform_device *pdev)
> +{
> +       struct mtk_sec_rng_priv *priv;
> +       int ret;
> +
> +       priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> +       if (!priv)
> +               return -ENOMEM;
> +
> +       priv->rng.name = pdev->name;
> +       priv->rng.read = mtk_sec_rng_read;
> +       priv->rng.priv = (unsigned long)&pdev->dev;
> +       priv->rng.quality = 900;
> +
> +       ret = devm_hwrng_register(&pdev->dev, &priv->rng);
> +       if (ret) {
> +               dev_err(&pdev->dev, "failed to register rng device: %d\n", ret);
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +
> +static const struct of_device_id mtk_sec_rng_match[] = {
> +       { .compatible = "mediatek,mtk-sec-rng", },
> +       {}
> +};
> +MODULE_DEVICE_TABLE(of, mtk_sec_rng_match);
> +
> +static struct platform_driver mtk_sec_rng_driver = {
> +       .probe = mtk_sec_rng_probe,
> +       .driver = {
> +               .name = KBUILD_MODNAME,
> +               .owner = THIS_MODULE,
> +               .of_match_table = mtk_sec_rng_match,
> +       },
> +};
> +
> +module_platform_driver(mtk_sec_rng_driver);
> +
> +MODULE_DESCRIPTION("MediaTek Security Random Number Generator Driver");
> +MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
> +MODULE_LICENSE("GPL");
> --
> 1.7.9.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
