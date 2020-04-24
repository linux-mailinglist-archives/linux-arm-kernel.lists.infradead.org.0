Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6011B7861
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TwqNuXBR66snRSLEnLaHHbj4y8DSD40gXIuOxAKYeNI=; b=om0+8GwHUxE/IB
	fPKfM9a9xzIGcF32IDiQqkQ7LbvbgNZqN2EHigXBrDa/zv9M6j2O8gWzI4cx2xe6OkTAE8hht6sQL
	JHUjuXf0sp6ZOtTPElBVeSR87+LtOu5xSwNB67VjWW85zp6B8VdXw8vqCQTLhoN0lHLV+6gPOWaPe
	CBGxgtbY4t1FSpyYYfplSuDfoM0HbWOEBWehTBx3hetdr+UHB26ZtppLL1KV3bMZ/rjNu+Xzp38B3
	DP3Q47ivCXzA0/huyHaepxhDN1oibgFgCjpk21ZemOBRJF/oqpinYTnAyTQY/KFaLxsRjzj02foux
	tM9QOHNr1FOSNhk2myJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRzPz-0000yS-5z; Fri, 24 Apr 2020 14:35:03 +0000
Received: from mail1.atsec.com ([138.201.47.228])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRzPm-0000x8-S3
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:34:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail1.atsec.com (Postfix) with ESMTP id C42C4F6;
 Fri, 24 Apr 2020 16:34:43 +0200 (CEST)
Received: from mail1.atsec.com ([127.0.0.1])
 by localhost (mail1.atsec.com [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id mfuv5h487Rlz; Fri, 24 Apr 2020 16:34:41 +0200 (CEST)
From: Stephan Mueller <stephan.mueller@atsec.com>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v2 14/14] crypto: sun8i-ce: Add support for the TRNG
Date: Fri, 24 Apr 2020 16:34:40 +0200
Message-ID: <3693153.CBanSm0cUG@tauon.chronox.de>
Organization: atsec information security GmbH
In-Reply-To: <1587736934-22801-15-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
 <1587736934-22801-15-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_073451_204551_2C6A5BB3 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.201.47.228 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 24. April 2020, 16:02:14 CEST schrieb Corentin Labbe:

Hi Corentin,

> This patch had support for the TRNG present in the CE.
> Note that according to the algorithm ID, 2 version of the TRNG exists,
> the first present in H3/H5/R40/A64 and the second present in H6.
> This patch adds support for both, but only the second is working
> reliabily accoridng to rngtest.
> =

> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/allwinner/Kconfig              |   8 ++
>  drivers/crypto/allwinner/sun8i-ce/Makefile    |   1 +
>  .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c |  18 +++
>  .../crypto/allwinner/sun8i-ce/sun8i-ce-trng.c | 123 ++++++++++++++++++
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  |  18 +++
>  5 files changed, 168 insertions(+)
>  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c
> =

> diff --git a/drivers/crypto/allwinner/Kconfig
> b/drivers/crypto/allwinner/Kconfig index 223a5823867c..6aec31f7d2be 100644
> --- a/drivers/crypto/allwinner/Kconfig
> +++ b/drivers/crypto/allwinner/Kconfig
> @@ -87,6 +87,14 @@ config CRYPTO_DEV_SUN8I_CE_PRNG
>  	  Select this option if you want to provide kernel-side support for
>  	  the Pseudo-Random Number Generator found in the Crypto Engine.
> =

> +config CRYPTO_DEV_SUN8I_CE_TRNG
> +	bool "Support for Allwinner Crypto Engine TRNG"
> +	depends on CRYPTO_DEV_SUN8I_CE
> +	select HW_RANDOM
> +	help
> +	  Select this option if you want to provide kernel-side support for
> +	  the True Random Number Generator found in the Crypto Engine.
> +
>  config CRYPTO_DEV_SUN8I_SS
>  	tristate "Support for Allwinner Security System cryptographic =

offloader"
>  	select CRYPTO_SKCIPHER
> diff --git a/drivers/crypto/allwinner/sun8i-ce/Makefile
> b/drivers/crypto/allwinner/sun8i-ce/Makefile index
> c0ea81da2c7d..0842eb2d9408 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/Makefile
> +++ b/drivers/crypto/allwinner/sun8i-ce/Makefile
> @@ -2,3 +2,4 @@ obj-$(CONFIG_CRYPTO_DEV_SUN8I_CE) +=3D sun8i-ce.o
>  sun8i-ce-y +=3D sun8i-ce-core.o sun8i-ce-cipher.o
>  sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_HASH) +=3D sun8i-ce-hash.o
>  sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_PRNG) +=3D sun8i-ce-prng.o
> +sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_TRNG) +=3D sun8i-ce-trng.o
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c index
> 23b9fc67d7ea..86d75789811f 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> @@ -47,6 +47,7 @@ static const struct ce_variant ce_h3_variant =3D {
>  		},
>  	.esr =3D ESR_H3,
>  	.prng =3D CE_ALG_PRNG,
> +	.trng =3D CE_ID_NOTSUPP,
>  };
> =

>  static const struct ce_variant ce_h5_variant =3D {
> @@ -63,6 +64,7 @@ static const struct ce_variant ce_h5_variant =3D {
>  		},
>  	.esr =3D ESR_H5,
>  	.prng =3D CE_ALG_PRNG,
> +	.trng =3D CE_ID_NOTSUPP,
>  };
> =

>  static const struct ce_variant ce_h6_variant =3D {
> @@ -76,6 +78,7 @@ static const struct ce_variant ce_h6_variant =3D {
>  	.cipher_t_dlen_in_bytes =3D true,
>  	.hash_t_dlen_in_bits =3D true,
>  	.prng_t_dlen_in_bytes =3D true,
> +	.trng_t_dlen_in_bytes =3D true,
>  	.ce_clks =3D {
>  		{ "bus", 0, 200000000 },
>  		{ "mod", 300000000, 0 },
> @@ -83,6 +86,7 @@ static const struct ce_variant ce_h6_variant =3D {
>  		},
>  	.esr =3D ESR_H6,
>  	.prng =3D CE_ALG_PRNG_V2,
> +	.trng =3D CE_ALG_TRNG_V2,
>  };
> =

>  static const struct ce_variant ce_a64_variant =3D {
> @@ -99,6 +103,7 @@ static const struct ce_variant ce_a64_variant =3D {
>  		},
>  	.esr =3D ESR_A64,
>  	.prng =3D CE_ALG_PRNG,
> +	.trng =3D CE_ID_NOTSUPP,
>  };
> =

>  static const struct ce_variant ce_r40_variant =3D {
> @@ -115,6 +120,7 @@ static const struct ce_variant ce_r40_variant =3D {
>  		},
>  	.esr =3D ESR_R40,
>  	.prng =3D CE_ALG_PRNG,
> +	.trng =3D CE_ID_NOTSUPP,
>  };
> =

>  /*
> @@ -579,6 +585,10 @@ static int sun8i_ce_dbgfs_read(struct seq_file *seq,
> void *v) break;
>  		}
>  	}
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_TRNG
> +	seq_printf(seq, "HWRNG %lu %lu\n",
> +		   ce->hwrng_stat_req, ce->hwrng_stat_bytes);
> +#endif
>  	return 0;
>  }
> =

> @@ -928,6 +938,10 @@ static int sun8i_ce_probe(struct platform_device *pd=
ev)
> if (err < 0)
>  		goto error_alg;
> =

> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_TRNG
> +	sun8i_ce_hwrng_register(ce);
> +#endif
> +
>  	v =3D readl(ce->base + CE_CTR);
>  	v >>=3D CE_DIE_ID_SHIFT;
>  	v &=3D CE_DIE_ID_MASK;
> @@ -957,6 +971,10 @@ static int sun8i_ce_remove(struct platform_device
> *pdev) {
>  	struct sun8i_ce_dev *ce =3D platform_get_drvdata(pdev);
> =

> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_TRNG
> +	sun8i_ce_hwrng_unregister(ce);
> +#endif
> +
>  	sun8i_ce_unregister_algs(ce);
> =

>  #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c
> b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c new file mode 100644
> index 000000000000..5e4effe29ed3
> --- /dev/null
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c
> @@ -0,0 +1,123 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * sun8i-ce-trng.c - hardware cryptographic offloader for
> + * Allwinner H3/A64/H5/H2+/H6/R40 SoC
> + *
> + * Copyright (C) 2015-2020 Corentin Labbe <clabbe@baylibre.com>
> + *
> + * This file handle the TRNG
> + *
> + * You could find a link for the datasheet in
> Documentation/arm/sunxi/README + */
> +#include "sun8i-ce.h"
> +#include <linux/pm_runtime.h>
> +#include <linux/hw_random.h>
> +/*
> + * Note that according to the algorithm ID, 2 versions of the TRNG exist=
s,
> + * The first present in H3/H5/R40/A64 and the second present in H6.
> + * This file adds support for both, but only the second is working
> + * reliabily according to rngtest.
> + **/
> +
> +int sun8i_ce_trng_read(struct hwrng *rng, void *data, size_t max, bool
> wait) +{
> +	struct sun8i_ce_dev *ce;
> +	dma_addr_t dma_dst;
> +	int err =3D 0;
> +	int flow =3D 3;
> +	unsigned int todo;
> +	struct sun8i_ce_flow *chan;
> +	struct ce_task *cet;
> +	u32 common;
> +	void *d;
> +
> +	ce =3D container_of(rng, struct sun8i_ce_dev, trng);
> +
> +	todo =3D max + 32;
> +	todo -=3D todo % 32;
> +
> +	d =3D kzalloc(todo, GFP_KERNEL | GFP_DMA);
> +	if (!d)
> +		return -ENOMEM;
> +
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> +	ce->hwrng_stat_req++;
> +	ce->hwrng_stat_bytes +=3D todo;
> +#endif
> +
> +	dma_dst =3D dma_map_single(ce->dev, d, todo, DMA_FROM_DEVICE);
> +	if (dma_mapping_error(ce->dev, dma_dst)) {
> +		dev_err(ce->dev, "Cannot DMA MAP DST\n");
> +		err =3D -EFAULT;
> +		goto err_dst;
> +	}
> +
> +	err =3D pm_runtime_get_sync(ce->dev);
> +	if (err < 0)
> +		goto err_pm;
> +
> +	mutex_lock(&ce->rnglock);
> +	chan =3D &ce->chanlist[flow];
> +
> +	cet =3D &chan->tl[0];
> +	memset(cet, 0, sizeof(struct ce_task));
> +
> +	cet->t_id =3D cpu_to_le32(flow);
> +	common =3D ce->variant->trng | CE_COMM_INT;
> +	cet->t_common_ctl =3D cpu_to_le32(common);
> +
> +	/* recent CE (H6) need length in bytes, in word otherwise */
> +	if (ce->variant->trng_t_dlen_in_bytes)
> +		cet->t_dlen =3D cpu_to_le32(todo);
> +	else
> +		cet->t_dlen =3D cpu_to_le32(todo / 4);
> +
> +	cet->t_sym_ctl =3D 0;
> +	cet->t_asym_ctl =3D 0;
> +
> +	cet->t_dst[0].addr =3D cpu_to_le32(dma_dst);
> +	cet->t_dst[0].len =3D cpu_to_le32(todo / 4);
> +	ce->chanlist[flow].timeout =3D 2000;
> +
> +	err =3D sun8i_ce_run_task(ce, 3, "TRNG");
> +	mutex_unlock(&ce->rnglock);
> +
> +	pm_runtime_put(ce->dev);
> +
> +err_pm:
> +	dma_unmap_single(ce->dev, dma_dst, todo, DMA_FROM_DEVICE);
> +
> +	if (!err) {
> +		memcpy(data, d, max);
> +		err =3D max;
> +	}
> +
> +err_dst:
> +	kfree(d);

kzfree? I would assume d contains sensitive data, no?

> +	return err;
> +}
> +
> +int sun8i_ce_hwrng_register(struct sun8i_ce_dev *ce)
> +{
> +	int ret;
> +
> +	if (ce->variant->trng =3D=3D CE_ID_NOTSUPP) {
> +		dev_info(ce->dev, "TRNG not supported\n");
> +		return 0;
> +	}
> +	ce->trng.name =3D "sun8i Crypto Engine TRNG";
> +	ce->trng.read =3D sun8i_ce_trng_read;
> +	ce->trng.quality =3D 1000;
> +
> +	ret =3D hwrng_register(&ce->trng);
> +	if (ret)
> +		dev_err(ce->dev, "Fail to register the TRNG\n");
> +	return ret;
> +}
> +
> +void sun8i_ce_hwrng_unregister(struct sun8i_ce_dev *ce)
> +{
> +	if (ce->variant->trng =3D=3D CE_ID_NOTSUPP)
> +		return;
> +	hwrng_unregister(&ce->trng);
> +}
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
> b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h index
> 2ef0c3814367..746e56c254d4 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
> @@ -12,6 +12,7 @@
>  #include <linux/atomic.h>
>  #include <linux/debugfs.h>
>  #include <linux/crypto.h>
> +#include <linux/hw_random.h>
>  #include <crypto/internal/hash.h>
>  #include <crypto/md5.h>
>  #include <crypto/rng.h>
> @@ -55,7 +56,9 @@
>  #define CE_ALG_SHA256           19
>  #define CE_ALG_SHA384           20
>  #define CE_ALG_SHA512           21
> +#define CE_ALG_TRNG		48
>  #define CE_ALG_PRNG		49
> +#define CE_ALG_TRNG_V2		0x1c
>  #define CE_ALG_PRNG_V2		0x1d
> =

>  /* Used in ce_variant */
> @@ -129,9 +132,12 @@ struct ce_clock {
>   *				bits or words
>   * @prng_t_dlen_in_bytes:	Does the request size for PRNG is in
>   *				bytes or words
> + * @trng_t_dlen_in_bytes:	Does the request size for TRNG is in
> + *				bytes or words
>   * @ce_clks:	list of clocks needed by this variant
>   * @esr:	The type of error register
>   * @prng:	The CE_ALG_XXX value for the PRNG
> + * @trng:	The CE_ALG_XXX value for the TRNG
>   */
>  struct ce_variant {
>  	char alg_cipher[CE_ID_CIPHER_MAX];
> @@ -140,9 +146,11 @@ struct ce_variant {
>  	bool cipher_t_dlen_in_bytes;
>  	bool hash_t_dlen_in_bits;
>  	bool prng_t_dlen_in_bytes;
> +	bool trng_t_dlen_in_bytes;
>  	struct ce_clock ce_clks[CE_MAX_CLOCKS];
>  	int esr;
>  	char prng;
> +	char trng;
>  };
> =

>  struct sginfo {
> @@ -218,6 +226,13 @@ struct sun8i_ce_dev {
>  	struct dentry *dbgfs_dir;
>  	struct dentry *dbgfs_stats;
>  #endif
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_TRNG
> +	struct hwrng trng;
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> +	unsigned long hwrng_stat_req;
> +	unsigned long hwrng_stat_bytes;
> +#endif
> +#endif
>  };
> =

>  /*
> @@ -349,3 +364,6 @@ int sun8i_ce_prng_generate(struct crypto_rng *tfm, co=
nst
> u8 *src, int sun8i_ce_prng_seed(struct crypto_rng *tfm, const u8 *seed,
> unsigned int slen); void sun8i_ce_prng_exit(struct crypto_tfm *tfm);
>  int sun8i_ce_prng_init(struct crypto_tfm *tfm);
> +
> +int sun8i_ce_hwrng_register(struct sun8i_ce_dev *ce);
> +void sun8i_ce_hwrng_unregister(struct sun8i_ce_dev *ce);


Ciao
Stephan
-- =

atsec information security GmbH, Steinstra=DFe 70, 81667 M=FCnchen, Germany
Phone:     +49 89 442 49 830 - Fax:       +49 89 442 49 831
Mobile DE: +49 172 216 55 78 - Mobile US: +1 737 346 1613
HRB: 129439 (Amtsgericht M=FCnchen)
GF: Salvatore la Pietra, Staffan Persson, Manuela Gambarotto
atsec it security news blog - atsec-information-security.blogspot.com




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
