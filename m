Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A76326AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 04:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVYpCczmWuMrH8jRari+CZEPawxbifXzeHz6Io93+Vo=; b=M7cLLzGdryOV3T
	UGTfkWCB+0xypjH9KKPNO8i2hVA8wjQyg+w+uUUkPu4/USUdBuixmZwWNJHpUQLfDqBnGYud7qrZO
	MzJlnT2jq6unJEALDUII8N+LeSNGZxR+ssDrv8in0xduZJ5DqinpS/0XI1h4VJ4OHGjP73IemEADP
	/rGy01qaJy7/TJMIi2OOBYqP/p4m8b2ejG72lDtgRk2dAGoznHCY0+qZfDnulNklyRW9djtgTIJ84
	Cn1f/piFWgrurcNL2Tl1szLUSZneFJx81CVUwutdd5w1mCaAWe5xPBgCNhh4pu2RlsLb77pNlfjso
	zOVuGTxF6FBUnws23IZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXcqW-0003AO-49; Mon, 03 Jun 2019 02:37:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXcqO-00039N-SR; Mon, 03 Jun 2019 02:37:06 +0000
X-UUID: b5d8010a5bd9483fa2656aa755e34434-20190602
X-UUID: b5d8010a5bd9483fa2656aa755e34434-20190602
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 524511121; Sun, 02 Jun 2019 18:36:58 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 19:36:56 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 10:36:55 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Jun 2019 10:36:55 +0800
Message-ID: <1559529415.6663.10.camel@mtkswgap22>
Subject: Re: [PATCH v2 3/3] hwrng: add mtk-sec-rng driver
From: Neal Liu <neal.liu@mediatek.com>
To: Sean Wang <sean.wang@kernel.org>
Date: Mon, 3 Jun 2019 10:36:55 +0800
In-Reply-To: <CAGp9LzoC7d9MaCv4OSm5yEGP845zeoQ=Fas_MgZGzSUCeWZ=ww@mail.gmail.com>
References: <1558946326-13630-1-git-send-email-neal.liu@mediatek.com>
 <1558946326-13630-4-git-send-email-neal.liu@mediatek.com>
 <CAGp9LzoC7d9MaCv4OSm5yEGP845zeoQ=Fas_MgZGzSUCeWZ=ww@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_193704_928373_6EFD476E 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sean,

On Thu, 2019-05-30 at 15:59 -0700, Sean Wang wrote:
> Hi, Neal
> 
> On Mon, May 27, 2019 at 1:39 AM Neal Liu <neal.liu@mediatek.com> wrote:
> >
> > For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
> > entropy sources is not accessible from normal world (linux) and
> > rather accessible from secure world (ATF/TEE) only. This driver aims
> > to provide a generic interface to ATF rng service.
> >
> > Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> > ---
> >  drivers/char/hw_random/Kconfig       |   16 ++++++
> >  drivers/char/hw_random/Makefile      |    1 +
> >  drivers/char/hw_random/mtk-sec-rng.c |   97 ++++++++++++++++++++++++++++++++++
> >  3 files changed, 114 insertions(+)
> >  create mode 100644 drivers/char/hw_random/mtk-sec-rng.c
> >
> > diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> > index 25a7d8f..6c82a3b 100644
> > --- a/drivers/char/hw_random/Kconfig
> > +++ b/drivers/char/hw_random/Kconfig
> > @@ -398,6 +398,22 @@ config HW_RANDOM_MTK
> >
> >           If unsure, say Y.
> >
> > +config HW_RANDOM_MTK_SEC
> > +       tristate "MediaTek Security Random Number Generator support"
> > +       depends on HW_RANDOM
> > +       depends on ARCH_MEDIATEK || COMPILE_TEST
> > +       default HW_RANDOM
> > +       help
> > +         This driver provides kernel-side support for the Random Number
> > +         Generator hardware found on MediaTek SoCs. The difference with
> > +         mtk-rng is the Random Number Generator hardware is secure
> > +         access only.
> > +
> > +         To compile this driver as a module, choose M here. the
> > +         module will be called mtk-sec-rng.
> > +
> > +         If unsure, say Y.
> > +
> >  config HW_RANDOM_S390
> >         tristate "S390 True Random Number Generator support"
> >         depends on S390
> > diff --git a/drivers/char/hw_random/Makefile b/drivers/char/hw_random/Makefile
> > index 7c9ef4a..0ae4993 100644
> > --- a/drivers/char/hw_random/Makefile
> > +++ b/drivers/char/hw_random/Makefile
> > @@ -36,6 +36,7 @@ obj-$(CONFIG_HW_RANDOM_PIC32) += pic32-rng.o
> >  obj-$(CONFIG_HW_RANDOM_MESON) += meson-rng.o
> >  obj-$(CONFIG_HW_RANDOM_CAVIUM) += cavium-rng.o cavium-rng-vf.o
> >  obj-$(CONFIG_HW_RANDOM_MTK)    += mtk-rng.o
> > +obj-$(CONFIG_HW_RANDOM_MTK_SEC) += mtk-sec-rng.o
> >  obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
> >  obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
> >  obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
> > diff --git a/drivers/char/hw_random/mtk-sec-rng.c b/drivers/char/hw_random/mtk-sec-rng.c
> > new file mode 100644
> > index 0000000..4c6e5bf
> > --- /dev/null
> > +++ b/drivers/char/hw_random/mtk-sec-rng.c
> > @@ -0,0 +1,97 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 MediaTek Inc.
> > + */
> > +
> > +#include <linux/arm-smccc.h>
> > +#include <linux/hw_random.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/soc/mediatek/mtk_sip_svc.h>
> > +
> > +#define MT67XX_RNG_MAGIC       0x74726e67
> > +#define SMC_RET_NUM            4
> > +#define MTK_SEC_RND_SIZE       (sizeof(u32) * SMC_RET_NUM)
> > +
> > +struct mtk_sec_rng_priv {
> > +       struct hwrng rng;
> > +};
> > +
> > +static void mtk_sec_get_rnd(uint32_t *val)
> > +{
> > +       struct arm_smccc_res res;
> > +
> > +       arm_smccc_smc(MTK_SIP_KERNEL_GET_RND,
> > +                     MT67XX_RNG_MAGIC, 0, 0, 0, 0, 0, 0, &res);
> > +
> > +       val[0] = res.a0;
> > +       val[1] = res.a1;
> > +       val[2] = res.a2;
> > +       val[3] = res.a3;
> > +}
> > +
> > +static int mtk_sec_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
> > +{
> > +       size_t get_rnd_size = MTK_SEC_RND_SIZE;
> 
> the variable get_rnd_size can be further eliminated

Yes, sure. I'll send new patchset to eliminate this variable, Thanks

> 
> > +       u32 val[4] = {0};
> > +       int i, retval = 0;
> > +
> > +       while (max >= get_rnd_size) {
> > +               mtk_sec_get_rnd(val);
> > +
> > +               for (i = 0; i < SMC_RET_NUM; i++) {
> > +                       *(u32 *)buf = val[i];
> > +                       buf += sizeof(u32);
> > +               }
> > +
> > +               retval += get_rnd_size;
> > +               max -= get_rnd_size;
> > +       }
> > +
> > +       return retval;
> > +}
> > +
> > +static int mtk_sec_rng_probe(struct platform_device *pdev)
> > +{
> > +       struct mtk_sec_rng_priv *priv;
> > +       int ret;
> > +
> > +       priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> > +       if (!priv)
> > +               return -ENOMEM;
> > +
> > +       priv->rng.name = pdev->name;
> > +       priv->rng.read = mtk_sec_rng_read;
> > +       priv->rng.priv = (unsigned long)&pdev->dev;
> > +       priv->rng.quality = 900;
> > +
> > +       ret = devm_hwrng_register(&pdev->dev, &priv->rng);
> > +       if (ret) {
> > +               dev_err(&pdev->dev, "failed to register rng device: %d\n", ret);
> > +               return ret;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static const struct of_device_id mtk_sec_rng_match[] = {
> > +       { .compatible = "mediatek,mtk-sec-rng", },
> > +       {}
> > +};
> > +MODULE_DEVICE_TABLE(of, mtk_sec_rng_match);
> > +
> > +static struct platform_driver mtk_sec_rng_driver = {
> > +       .probe = mtk_sec_rng_probe,
> > +       .driver = {
> > +               .name = KBUILD_MODNAME,
> > +               .owner = THIS_MODULE,
> > +               .of_match_table = mtk_sec_rng_match,
> > +       },
> > +};
> > +
> > +module_platform_driver(mtk_sec_rng_driver);
> > +
> > +MODULE_DESCRIPTION("MediaTek Security Random Number Generator Driver");
> > +MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
> > +MODULE_LICENSE("GPL");
> > --
> > 1.7.9.5
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
