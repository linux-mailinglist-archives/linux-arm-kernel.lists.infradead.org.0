Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6137210B1D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 16:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtCRfOcdWIP0y+m/N5wb2Sn9jJKcqrQfhJEegTODL1s=; b=ieJuDhcDCIC8Z8
	4bp2dylB5cOAVwxrUYJrBJaYmmCIFQ2B5Hff7++6dsuKs8LiVcTFY7Cv+QMvmqFaysUuMl10EyZwp
	hbr9t+6HPuEaRFyL57Z+IWiVXY3wf7ZJG6GDX3qgb+8xU7FnPH8XLvp8AoqIfMo0DnBUQAgpQGWXG
	PCI0Emqi0ezFx3Nuv9TgNMNMajRoqwwdhSEVFyDi6lyN7Er41BzQB1lYinI7754iNC1Q1f015u2Tp
	p7xvFQsZiOOXwlRrY16xPb8dRNrHyYAvZHnVHw9UxFN9tDoxlQhBLycPIQhwvAC7hHagBec7dFZkt
	f4mvf+BfHMA15M4UYY5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZyr7-00063T-2w; Wed, 27 Nov 2019 15:03:49 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZyqw-00061j-7w
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 15:03:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id i12so27015119wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 07:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TPSdYWPsxVaZZs7XMbf85yoh9+QLbbbAn0Y9s5Tq39Q=;
 b=dzr5XA0LFhxUEA80Hf1lH8eKQRxhAaPKRfQiWhNn8VfXmjd1dKLvUcRAjfxqg15rXo
 J/kLBjqWfKAj8mI8unG/clL1JPoxxNDp3NjZ+IfZlSZh9Pzv255gzi6juBMbZg4wl6za
 WMODD+imnxnqCL7Hw+GbNSTbuvaiW1jt8f0hiLtMnQXlBa1eT9Q+ZQBBw2oRHYGtWSOn
 WXA6jRvj2WeRX8kLUlQ4Amb9K0l+VuYdBsCDRgHm39fdFdmcc56MneivQbubnfKZf/6Z
 ZwaxVz51Prja2DpSAF81nSIPyfl4T1I6vLIqtaZ8AMxxA/a2OUmbxTru94LfV9P6Iyow
 1sbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TPSdYWPsxVaZZs7XMbf85yoh9+QLbbbAn0Y9s5Tq39Q=;
 b=exspM70xAUFqsS5uuEZMaA6Qso1vwe3UWsXOVI+vEOYSgkgxZsgmuUbtWjvSy1zzUX
 LkYfF1pAlwts8WiqC9zuxPWEnnz40Wcy+AbNYQPGqWoun9zrQ8yk3OhOX86WAI9/Ep7T
 AIhwIKuxxzhdBMlucEb4oMHTRs3XyyL/1M8xcY96tBsBLjg776yt1Y5DukrzQKKbDAHg
 UNCC1FGZcn03N2jIwa0RcXX0g5OrjL3NYo3QwUfaBLmBS2quHadaORVv30b6tccqsE5M
 TmGi0Es+sX005NOb4A9XlvG6nxJz3ElZUwrX2c13LuvK65O1vZuYpNLz4n1gkdUUZjf+
 dfsg==
X-Gm-Message-State: APjAAAVN4BeaeP19x1utkpH3IsLl99Q5aIefg9ILPZRg1NKfgM0d8amC
 x4+S86wzW0ydP/GoGqtEO1e/0ixaNadwc8I5HmPCDg==
X-Google-Smtp-Source: APXvYqxIKLa2LPH2JUMg8rKd9cLtzDfM0oUfFtHHu1JmdjPCxQB1qigIXkCD7VJIQ76ZLrSxC6WbuHL3ePcRzmrpqUY=
X-Received: by 2002:a5d:6652:: with SMTP id f18mr1250887wrw.246.1574867015749; 
 Wed, 27 Nov 2019 07:03:35 -0800 (PST)
MIME-Version: 1.0
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
In-Reply-To: <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 27 Nov 2019 16:03:24 +0100
Message-ID: <CAKv+Gu_VicmyCGa8sQOwj_iRBf7Sf-iXpVa_3SQyB2Xjru=rmg@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_070338_281747_E7AF85A1 
X-CRM114-Status: GOOD (  23.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Devicetree List <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Crystal Guo <Crystal.Guo@mediatek.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Matt Mackall <mpm@selenic.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 Nov 2019 at 15:23, Neal Liu <neal.liu@mediatek.com> wrote:
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
>  drivers/char/hw_random/mtk-sec-rng.c |  103 ++++++++++++++++++++++++++++++++++
>  3 files changed, 120 insertions(+)
>  create mode 100644 drivers/char/hw_random/mtk-sec-rng.c
>
> diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> index 25a7d8f..f08c852 100644
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
> +         help
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
> index 7c9ef4a..bee5412 100644
> --- a/drivers/char/hw_random/Makefile
> +++ b/drivers/char/hw_random/Makefile
> @@ -36,6 +36,7 @@ obj-$(CONFIG_HW_RANDOM_PIC32) += pic32-rng.o
>  obj-$(CONFIG_HW_RANDOM_MESON) += meson-rng.o
>  obj-$(CONFIG_HW_RANDOM_CAVIUM) += cavium-rng.o cavium-rng-vf.o
>  obj-$(CONFIG_HW_RANDOM_MTK)    += mtk-rng.o
> +obj-$(CONFIG_HW_RANDOM_MTK_SEC)        += mtk-sec-rng.o
>  obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
>  obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
>  obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
> diff --git a/drivers/char/hw_random/mtk-sec-rng.c b/drivers/char/hw_random/mtk-sec-rng.c
> new file mode 100644
> index 0000000..69ddeca
> --- /dev/null
> +++ b/drivers/char/hw_random/mtk-sec-rng.c
> @@ -0,0 +1,103 @@
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
> +#define MTK_SEC_RNG_MAGIC      0x74726e67
> +#define SMC_RET_NUM            4
> +#define MTK_SEC_RND_SIZE       (sizeof(u32) * SMC_RET_NUM)
> +
> +static void mtk_sec_get_rnd(uint32_t *val)
> +{
> +       struct arm_smccc_res res;
> +
> +       arm_smccc_smc(MTK_SIP_KERNEL_GET_RND,
> +                     MTK_SEC_RNG_MAGIC, 0, 0, 0, 0, 0, 0, &res);
> +

Can this call never fail? How does the firmware signal that something
is wrong with the underlying hardware?

> +       val[0] = res.a0;
> +       val[1] = res.a1;
> +       val[2] = res.a2;
> +       val[3] = res.a3;
> +}
> +
> +static int mtk_sec_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
> +{
> +       u32 val[4] = {0};
> +       int retval = 0;
> +       int i;
> +
> +       while (max >= MTK_SEC_RND_SIZE) {
> +               mtk_sec_get_rnd(val);
> +
> +               for (i = 0; i < SMC_RET_NUM; i++) {
> +                       *(u32 *)buf = val[i];
> +                       buf += sizeof(u32);
> +               }
> +
> +               retval += MTK_SEC_RND_SIZE;
> +               max -= MTK_SEC_RND_SIZE;
> +       }
> +
> +       return retval;
> +}
> +
> +static struct hwrng mtk_sec_rng = {
> +       .name = "mtk_sec_rng",
> +       .read = mtk_sec_rng_read,
> +       .quality = 900,
> +};
> +
> +static int mtk_sec_rng_probe(void)
> +{
> +       int ret;
> +
> +       ret = hwrng_register(&mtk_sec_rng);
> +       if (ret) {
> +               pr_err("Failed to register rng device: %d\n", ret);
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +
> +static int __init mtk_sec_rng_driver_init(void)
> +{
> +       struct device_node *fw_np;
> +       struct device_node *np;
> +       const char *method;
> +
> +       fw_np = of_find_node_by_name(NULL, "firmware");
> +       if (!fw_np)
> +               return -ENODEV;
> +
> +       np = of_find_compatible_node(fw_np, NULL, "mediatek,mtk-sec-rng");
> +       if (!np)
> +               return -ENODEV;
> +
> +       if (of_property_read_string(np, "method", &method))
> +               return -ENXIO;
> +
> +       if (strncmp("smc", method, strlen("smc")))
> +               return -EINVAL;
> +
> +       return mtk_sec_rng_probe();
> +}
> +
> +static void __exit mtk_sec_rng_driver_exit(void)
> +{
> +       hwrng_unregister(&mtk_sec_rng);
> +}
> +
> +module_init(mtk_sec_rng_driver_init);
> +module_exit(mtk_sec_rng_driver_exit);
> +
> +MODULE_DESCRIPTION("MediaTek Security Random Number Generator Driver");
> +MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
> +MODULE_LICENSE("GPL");
> --
> 1.7.9.5

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
