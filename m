Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F161210CB78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIGY0VHOqvrWLC+1nuYAiS3SC86lL1IXitg2CoX7ByU=; b=CJxEg4cqBJQA61
	nR44lFRmgDTvLlcXdxtPvkFY4Wdmj40b4SehQ89plSxitTfLNebp9EbB2PcO2ij6YqajhMPhDzFZF
	ei62vsqwzhCEW31yFNjfUK11BlxygehbaN1m3weYeHcEHPh78iFjJxbJRrxucHYrDrLVqdhPUmdh+
	v3FdzlnnIj1mecGD16cgNa2ei1QipcjxWpvQy1Iz++bPefqOGh98Z40xHZVzuc7XpQJ2veFNgpcly
	hA4wtlbb3KzK/OhHUyODhGFiBBTAc+Gk+w7s+aIFp4m/n7VppDyRnoRh3x8s7TQTvFu9Jfu2ghOXq
	kLLQEgiqmV5rW2YW7ofg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLVO-0007SD-Mj; Thu, 28 Nov 2019 15:14:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLTh-0005zE-Cj; Thu, 28 Nov 2019 15:13:14 +0000
X-UUID: 568d27a232224e568f4d462b29bdc31c-20191128
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=jC/GKNqOteS0Lvf6BRgDnB35d1Uy+8B/V/fYzSkM2Js=; 
 b=Lw5Eqbly5lOu5U2kBf8F8KpAYVBV3dwlZzCuUjQ1ElSm1Vq4qZLhjKMp8FV1DWhiYP/KlsXVoaOa+7xcuFI4b3FUiXZsasXb3nn4q8NKWrTayvJ2SfQxjYDSHaV4/IRwFR6fjkWwzXncwSUoyWnxRXAFLdD11xvwUKirdx46Qqc=;
X-UUID: 568d27a232224e568f4d462b29bdc31c-20191128
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 512760752; Thu, 28 Nov 2019 07:13:00 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 28 Nov 2019 07:03:06 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 28 Nov 2019 23:02:41 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 28 Nov 2019 23:02:47 +0800
Message-ID: <1574953375.6465.8.camel@mtkswgap22>
Subject: Re: [PATCH v5 3/3] hwrng: add mtk-sec-rng driver
From: Neal Liu <neal.liu@mediatek.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 28 Nov 2019 23:02:55 +0800
In-Reply-To: <CAKv+Gu_VicmyCGa8sQOwj_iRBf7Sf-iXpVa_3SQyB2Xjru=rmg@mail.gmail.com>
References: <1574864578-467-1-git-send-email-neal.liu@mediatek.com>
 <1574864578-467-4-git-send-email-neal.liu@mediatek.com>
 <CAKv+Gu_VicmyCGa8sQOwj_iRBf7Sf-iXpVa_3SQyB2Xjru=rmg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BF5CA6FDD2FC2CB9BAB461AD12AAAA406649CF42595E3D02608CD659FD0140C62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_071310_003097_93B66DFD 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Herbert Xu <herbert@gondor.apana.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Neal Liu <neal.liu@mediatek.com>, "open
 list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal
 Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-11-27 at 23:03 +0800, Ard Biesheuvel wrote:
> On Wed, 27 Nov 2019 at 15:23, Neal Liu <neal.liu@mediatek.com> wrote:
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
> >  drivers/char/hw_random/mtk-sec-rng.c |  103 ++++++++++++++++++++++++++++++++++
> >  3 files changed, 120 insertions(+)
> >  create mode 100644 drivers/char/hw_random/mtk-sec-rng.c
> >
> > diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> > index 25a7d8f..f08c852 100644
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
> > +         help
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
> > index 7c9ef4a..bee5412 100644
> > --- a/drivers/char/hw_random/Makefile
> > +++ b/drivers/char/hw_random/Makefile
> > @@ -36,6 +36,7 @@ obj-$(CONFIG_HW_RANDOM_PIC32) += pic32-rng.o
> >  obj-$(CONFIG_HW_RANDOM_MESON) += meson-rng.o
> >  obj-$(CONFIG_HW_RANDOM_CAVIUM) += cavium-rng.o cavium-rng-vf.o
> >  obj-$(CONFIG_HW_RANDOM_MTK)    += mtk-rng.o
> > +obj-$(CONFIG_HW_RANDOM_MTK_SEC)        += mtk-sec-rng.o
> >  obj-$(CONFIG_HW_RANDOM_S390) += s390-trng.o
> >  obj-$(CONFIG_HW_RANDOM_KEYSTONE) += ks-sa-rng.o
> >  obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
> > diff --git a/drivers/char/hw_random/mtk-sec-rng.c b/drivers/char/hw_random/mtk-sec-rng.c
> > new file mode 100644
> > index 0000000..69ddeca
> > --- /dev/null
> > +++ b/drivers/char/hw_random/mtk-sec-rng.c
> > @@ -0,0 +1,103 @@
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
> > +#define MTK_SEC_RNG_MAGIC      0x74726e67
> > +#define SMC_RET_NUM            4
> > +#define MTK_SEC_RND_SIZE       (sizeof(u32) * SMC_RET_NUM)
> > +
> > +static void mtk_sec_get_rnd(uint32_t *val)
> > +{
> > +       struct arm_smccc_res res;
> > +
> > +       arm_smccc_smc(MTK_SIP_KERNEL_GET_RND,
> > +                     MTK_SEC_RNG_MAGIC, 0, 0, 0, 0, 0, 0, &res);
> > +
> 
> Can this call never fail? How does the firmware signal that something
> is wrong with the underlying hardware?
> 

The smc call is supported in both ARMv7 & ARMv8 architectures.But yes,
it should check hardware status before assigning it.

We would like to check that if hardware is something wrong, all return
value will be zero. ex:

	if (!res.a0 && !res.a1 && !res.a2 && !res.a3)
		return false;

> > +       val[0] = res.a0;
> > +       val[1] = res.a1;
> > +       val[2] = res.a2;
> > +       val[3] = res.a3;

	return true;
> > +}
> > +
> > +static int mtk_sec_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
> > +{
> > +       u32 val[4] = {0};
> > +       int retval = 0;
> > +       int i;
> > +
> > +       while (max >= MTK_SEC_RND_SIZE) {
> > +               mtk_sec_get_rnd(val);
> > +
> > +               for (i = 0; i < SMC_RET_NUM; i++) {
> > +                       *(u32 *)buf = val[i];
> > +                       buf += sizeof(u32);
> > +               }
> > +
> > +               retval += MTK_SEC_RND_SIZE;
> > +               max -= MTK_SEC_RND_SIZE;
> > +       }
> > +
> > +       return retval;
> > +}
> > +
> > +static struct hwrng mtk_sec_rng = {
> > +       .name = "mtk_sec_rng",
> > +       .read = mtk_sec_rng_read,
> > +       .quality = 900,
> > +};
> > +
> > +static int mtk_sec_rng_probe(void)
> > +{
> > +       int ret;
> > +
> > +       ret = hwrng_register(&mtk_sec_rng);
> > +       if (ret) {
> > +               pr_err("Failed to register rng device: %d\n", ret);
> > +               return ret;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +static int __init mtk_sec_rng_driver_init(void)
> > +{
> > +       struct device_node *fw_np;
> > +       struct device_node *np;
> > +       const char *method;
> > +
> > +       fw_np = of_find_node_by_name(NULL, "firmware");
> > +       if (!fw_np)
> > +               return -ENODEV;
> > +
> > +       np = of_find_compatible_node(fw_np, NULL, "mediatek,mtk-sec-rng");
> > +       if (!np)
> > +               return -ENODEV;
> > +
> > +       if (of_property_read_string(np, "method", &method))
> > +               return -ENXIO;
> > +
> > +       if (strncmp("smc", method, strlen("smc")))
> > +               return -EINVAL;
> > +
> > +       return mtk_sec_rng_probe();
> > +}
> > +
> > +static void __exit mtk_sec_rng_driver_exit(void)
> > +{
> > +       hwrng_unregister(&mtk_sec_rng);
> > +}
> > +
> > +module_init(mtk_sec_rng_driver_init);
> > +module_exit(mtk_sec_rng_driver_exit);
> > +
> > +MODULE_DESCRIPTION("MediaTek Security Random Number Generator Driver");
> > +MODULE_AUTHOR("Neal Liu <neal.liu@mediatek.com>");
> > +MODULE_LICENSE("GPL");
> > --
> > 1.7.9.5
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
