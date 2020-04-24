Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF941B7869
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0cAQAzjtYl+bTaCccf2mGQG9O3xP0vmNlSBSxSniwc=; b=OfaRAj5poeOhsm
	HEto/U5q16oRZLVuCalKKTnRGvp0PcYHcODuzSaTFGOKRte+0HqwMRB9GQwxAxJgv5lnVUdDxOGhJ
	38RQzDTnoJkK95/v786DDUwQxjhiOVrFLQO4L7DgoGqKw3MynhU0hKYm6CToXEsS/C8bRK+xVPG+o
	I634ZwmhDjyzYq7cwSUAzzq82EM9NNcwETeUWphiA3C+ryU4rRqEHw744YkvBVfx0R9oi+qp03T3h
	jndSLajWUIeBg3Ivym9QY7sJWlkMMBrrOiT+q12/mSQWBAwrOAUno61PihZUGWoqvphaBDL8nEKBb
	qjjK4tdCXTr5BIKDWnOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRzTZ-0004fT-EJ; Fri, 24 Apr 2020 14:38:45 +0000
Received: from mail1.atsec.com ([138.201.47.228])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRzTQ-0004eV-AS
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:38:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail1.atsec.com (Postfix) with ESMTP id 112C7112F;
 Fri, 24 Apr 2020 16:38:35 +0200 (CEST)
Received: from mail1.atsec.com ([127.0.0.1])
 by localhost (mail1.atsec.com [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id xG5ZDMc4cY2z; Fri, 24 Apr 2020 16:38:32 +0200 (CEST)
From: Stephan Mueller <stephan.mueller@atsec.com>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v2 13/14] crypto: sun8i-ce: Add support for the PRNG
Date: Fri, 24 Apr 2020 16:38:31 +0200
Message-ID: <2397344.pSczEbEFGg@tauon.chronox.de>
Organization: atsec information security GmbH
In-Reply-To: <1587736934-22801-14-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
 <1587736934-22801-14-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_073836_661595_12003A9C 
X-CRM114-Status: GOOD (  26.40  )
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

Am Freitag, 24. April 2020, 16:02:13 CEST schrieb Corentin Labbe:

Hi Corentin,

> This patch had support for the PRNG present in the CE.
> The output was tested with rngtest without any failure.
> =

> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/allwinner/Kconfig              |   8 +
>  drivers/crypto/allwinner/sun8i-ce/Makefile    |   1 +
>  .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c |  58 +++++-
>  .../crypto/allwinner/sun8i-ce/sun8i-ce-prng.c | 189 ++++++++++++++++++
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  |  31 +++
>  5 files changed, 286 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
> =

> diff --git a/drivers/crypto/allwinner/Kconfig
> b/drivers/crypto/allwinner/Kconfig index 93cc67adb1ed..223a5823867c 100644
> --- a/drivers/crypto/allwinner/Kconfig
> +++ b/drivers/crypto/allwinner/Kconfig
> @@ -79,6 +79,14 @@ config CRYPTO_DEV_SUN8I_CE_HASH
>  	help
>  	  Say y to enable support for hash algorithms.
> =

> +config CRYPTO_DEV_SUN8I_CE_PRNG
> +	bool "Support for Allwinner Crypto Engine PRNG"
> +	depends on CRYPTO_DEV_SUN8I_CE
> +	select CRYPTO_RNG
> +	help
> +	  Select this option if you want to provide kernel-side support for
> +	  the Pseudo-Random Number Generator found in the Crypto Engine.
> +
>  config CRYPTO_DEV_SUN8I_SS
>  	tristate "Support for Allwinner Security System cryptographic =

offloader"
>  	select CRYPTO_SKCIPHER
> diff --git a/drivers/crypto/allwinner/sun8i-ce/Makefile
> b/drivers/crypto/allwinner/sun8i-ce/Makefile index
> d1b1f0e86c79..c0ea81da2c7d 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/Makefile
> +++ b/drivers/crypto/allwinner/sun8i-ce/Makefile
> @@ -1,3 +1,4 @@
>  obj-$(CONFIG_CRYPTO_DEV_SUN8I_CE) +=3D sun8i-ce.o
>  sun8i-ce-y +=3D sun8i-ce-core.o sun8i-ce-cipher.o
>  sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_HASH) +=3D sun8i-ce-hash.o
> +sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_PRNG) +=3D sun8i-ce-prng.o
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c index
> 8c94ffe1efd0..23b9fc67d7ea 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> @@ -22,6 +22,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/reset.h>
> +#include <crypto/internal/rng.h>
>  #include <crypto/internal/skcipher.h>
> =

>  #include "sun8i-ce.h"
> @@ -45,6 +46,7 @@ static const struct ce_variant ce_h3_variant =3D {
>  		{ "mod", 50000000, 0 },
>  		},
>  	.esr =3D ESR_H3,
> +	.prng =3D CE_ALG_PRNG,
>  };
> =

>  static const struct ce_variant ce_h5_variant =3D {
> @@ -60,6 +62,7 @@ static const struct ce_variant ce_h5_variant =3D {
>  		{ "mod", 300000000, 0 },
>  		},
>  	.esr =3D ESR_H5,
> +	.prng =3D CE_ALG_PRNG,
>  };
> =

>  static const struct ce_variant ce_h6_variant =3D {
> @@ -72,12 +75,14 @@ static const struct ce_variant ce_h6_variant =3D {
>  	},
>  	.cipher_t_dlen_in_bytes =3D true,
>  	.hash_t_dlen_in_bits =3D true,
> +	.prng_t_dlen_in_bytes =3D true,
>  	.ce_clks =3D {
>  		{ "bus", 0, 200000000 },
>  		{ "mod", 300000000, 0 },
>  		{ "ram", 0, 400000000 },
>  		},
>  	.esr =3D ESR_H6,
> +	.prng =3D CE_ALG_PRNG_V2,
>  };
> =

>  static const struct ce_variant ce_a64_variant =3D {
> @@ -93,6 +98,7 @@ static const struct ce_variant ce_a64_variant =3D {
>  		{ "mod", 300000000, 0 },
>  		},
>  	.esr =3D ESR_A64,
> +	.prng =3D CE_ALG_PRNG,
>  };
> =

>  static const struct ce_variant ce_r40_variant =3D {
> @@ -108,15 +114,17 @@ static const struct ce_variant ce_r40_variant =3D {
>  		{ "mod", 300000000, 0 },
>  		},
>  	.esr =3D ESR_R40,
> +	.prng =3D CE_ALG_PRNG,
>  };
> =

>  /*
>   * sun8i_ce_get_engine_number() get the next channel slot
>   * This is a simple round-robin way of getting the next channel
> + * The flow 3 is reserve for xRNG operations
>   */
>  int sun8i_ce_get_engine_number(struct sun8i_ce_dev *ce)
>  {
> -	return atomic_inc_return(&ce->flow) % MAXFLOW;
> +	return atomic_inc_return(&ce->flow) % (MAXFLOW - 1);
>  }
> =

>  int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *nam=
e)
> @@ -130,6 +138,7 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int fl=
ow,
> const char *name) #endif
> =

>  	mutex_lock(&ce->mlock);
> +	mutex_init(&ce->rnglock);
> =

>  	v =3D readl(ce->base + CE_ICR);
>  	v |=3D 1 << flow;
> @@ -516,6 +525,25 @@ static struct sun8i_ce_alg_template ce_algs[] =3D {
>  	}
>  },
>  #endif
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_PRNG
> +{
> +	.type =3D CRYPTO_ALG_TYPE_RNG,
> +	.alg.rng =3D {
> +		.base =3D {
> +			.cra_name		=3D "stdrng",
> +			.cra_driver_name	=3D "sun8i-ce-prng",
> +			.cra_priority		=3D 300,
> +			.cra_ctxsize		=3D sizeof(struct =

sun8i_ce_rng_tfm_ctx),
> +			.cra_module		=3D THIS_MODULE,
> +			.cra_init		=3D sun8i_ce_prng_init,
> +			.cra_exit		=3D sun8i_ce_prng_exit,
> +		},
> +		.generate               =3D sun8i_ce_prng_generate,
> +		.seed                   =3D sun8i_ce_prng_seed,
> +		.seedsize               =3D PRNG_SEED_SIZE,
> +	}
> +},
> +#endif
>  };
> =

>  #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> @@ -543,6 +571,12 @@ static int sun8i_ce_dbgfs_read(struct seq_file *seq,
> void *v) ce_algs[i].alg.hash.halg.base.cra_name,
>  				   ce_algs[i].stat_req, ce_algs[i].stat_fb);
>  			break;
> +		case CRYPTO_ALG_TYPE_RNG:
> +			seq_printf(seq, "%s %s %lu %lu\n",
> +				   ce_algs[i].alg.rng.base.cra_driver_name,
> +				   ce_algs[i].alg.rng.base.cra_name,
> +				   ce_algs[i].stat_req, =

ce_algs[i].stat_bytes);
> +			break;
>  		}
>  	}
>  	return 0;
> @@ -777,6 +811,23 @@ static int sun8i_ce_register_algs(struct sun8i_ce_dev
> *ce) return err;
>  			}
>  			break;
> +		case CRYPTO_ALG_TYPE_RNG:
> +			if (ce->variant->prng =3D=3D CE_ID_NOTSUPP) {
> +				dev_info(ce->dev,
> +					 "DEBUG: Algo of %s not supported\n",
> +					 ce_algs[i].alg.rng.base.cra_name);
> +				ce_algs[i].ce =3D NULL;
> +				break;
> +			}
> +			dev_info(ce->dev, "Register %s\n",
> +				 ce_algs[i].alg.rng.base.cra_name);
> +			err =3D crypto_register_rng(&ce_algs[i].alg.rng);
> +			if (err) {
> +				dev_err(ce->dev, "Fail to register %s\n",
> +					ce_algs[i].alg.rng.base.cra_name);
> +				ce_algs[i].ce =3D NULL;
> +			}
> +			break;
>  		default:
>  			ce_algs[i].ce =3D NULL;
>  			dev_err(ce->dev, "ERROR: tried to register an unknown =

algo\n");
> @@ -803,6 +854,11 @@ static void sun8i_ce_unregister_algs(struct
> sun8i_ce_dev *ce) ce_algs[i].alg.hash.halg.base.cra_name);
>  			crypto_unregister_ahash(&ce_algs[i].alg.hash);
>  			break;
> +		case CRYPTO_ALG_TYPE_RNG:
> +			dev_info(ce->dev, "Unregister %d %s\n", i,
> +				 ce_algs[i].alg.rng.base.cra_name);
> +			crypto_unregister_rng(&ce_algs[i].alg.rng);
> +			break;
>  		}
>  	}
>  }
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
> b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c new file mode 100644
> index 000000000000..8f82bfc2c54c
> --- /dev/null
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
> @@ -0,0 +1,189 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * sun8i-ce-prng.c - hardware cryptographic offloader for
> + * Allwinner H3/A64/H5/H2+/H6/R40 SoC
> + *
> + * Copyright (C) 2015-2020 Corentin Labbe <clabbe@baylibre.com>
> + *
> + * This file handle the PRNG
> + *
> + * You could find a link for the datasheet in
> Documentation/arm/sunxi/README + */
> +#include "sun8i-ce.h"
> +#include <linux/pm_runtime.h>
> +#include <crypto/internal/rng.h>
> +
> +int sun8i_ce_prng_init(struct crypto_tfm *tfm)
> +{
> +	struct sun8i_ce_rng_tfm_ctx *ctx =3D crypto_tfm_ctx(tfm);
> +
> +	memset(ctx, 0, sizeof(struct sun8i_ce_rng_tfm_ctx));
> +	return 0;
> +}
> +
> +void sun8i_ce_prng_exit(struct crypto_tfm *tfm)
> +{
> +	struct sun8i_ce_rng_tfm_ctx *ctx =3D crypto_tfm_ctx(tfm);
> +
> +	kfree(ctx->seed);
> +	ctx->seed =3D NULL;
> +	ctx->slen =3D 0;
> +}
> +
> +int sun8i_ce_prng_seed(struct crypto_rng *tfm, const u8 *seed,
> +		       unsigned int slen)
> +{
> +	struct sun8i_ce_rng_tfm_ctx *ctx =3D crypto_rng_ctx(tfm);
> +
> +	if (ctx->seed && ctx->slen !=3D slen) {
> +		ctx->slen =3D 0;
> +		kfree(ctx->seed);

kzfree?

> +		ctx->seed =3D NULL;
> +	}
> +	if (!ctx->seed)
> +		ctx->seed =3D kmalloc(slen, GFP_KERNEL | GFP_DMA);
> +	if (!ctx->seed)
> +		return -ENOMEM;
> +
> +	memcpy(ctx->seed, seed, slen);
> +	ctx->slen =3D slen;
> +
> +	return 0;
> +}
> +
> +int sun8i_ce_prng_generate(struct crypto_rng *tfm, const u8 *src,
> +			   unsigned int slen, u8 *dst, unsigned int dlen)
> +{
> +	struct sun8i_ce_rng_tfm_ctx *ctx =3D crypto_rng_ctx(tfm);
> +	struct rng_alg *alg =3D crypto_rng_alg(tfm);
> +	struct sun8i_ce_alg_template *algt;
> +	struct sun8i_ce_dev *ce;
> +	dma_addr_t dma_iv, dma_dst;
> +	int err =3D 0;
> +	int flow =3D 3;
> +	unsigned int todo;
> +	struct sun8i_ce_flow *chan;
> +	struct ce_task *cet;
> +	u32 common, sym;
> +	dma_addr_t dma_next, dma_key;
> +	void *next, *key;
> +	void *d;
> +
> +	algt =3D container_of(alg, struct sun8i_ce_alg_template, alg.rng);
> +	ce =3D algt->ce;
> +
> +	if (ctx->slen =3D=3D 0) {
> +		dev_err(ce->dev, "not seeded\n");
> +		return -EINVAL;
> +	}
> +
> +	next =3D kzalloc(256, GFP_KERNEL | GFP_DMA);
> +	if (!next)
> +		return -ENOMEM;
> +
> +	key =3D kzalloc(256, GFP_KERNEL | GFP_DMA);
> +	if (!key)
> +		return -ENOMEM;

You leak memory here.

> +
> +	/* we want dlen + seedsize rounded up to a multiple of PRNG_DATA_SIZE =

*/
> +	todo =3D dlen + ctx->slen + PRNG_DATA_SIZE * 2;
> +	todo -=3D todo % PRNG_DATA_SIZE;
> +
> +	d =3D kzalloc(todo + 20, GFP_KERNEL | GFP_DMA);
> +	if (!d)
> +		return -ENOMEM;
> +
> +	dev_dbg(ce->dev, "%s PRNG slen=3D%u dlen=3D%u todo=3D%u multi=3D%u\n", =

__func__,
> +		slen, dlen, todo, todo / PRNG_DATA_SIZE);
> +
> +	if (ctx->slen =3D=3D 0) {
> +		dev_err(ce->dev, "not seeded\n");
> +		return -EINVAL;
> +	}
> +
> +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> +	algt->stat_req++;
> +	algt->stat_bytes +=3D todo;
> +#endif
> +
> +	dma_iv =3D dma_map_single(ce->dev, ctx->seed, ctx->slen, DMA_TO_DEVICE);
> +	if (dma_mapping_error(ce->dev, dma_iv)) {
> +		dev_err(ce->dev, "Cannot DMA MAP IV\n");
> +		return -EFAULT;
> +	}
> +
> +	dma_dst =3D dma_map_single(ce->dev, d, todo, DMA_FROM_DEVICE);
> +	if (dma_mapping_error(ce->dev, dma_dst)) {
> +		dev_err(ce->dev, "Cannot DMA MAP DST\n");
> +		err =3D -EFAULT;
> +		goto err_iv;
> +	}
> +
> +	dma_next =3D dma_map_single(ce->dev, next, 256, DMA_FROM_DEVICE);
> +	if (dma_mapping_error(ce->dev, dma_next)) {
> +		dev_err(ce->dev, "Cannot DMA MAP NEXT\n");
> +		err =3D -EFAULT;
> +		goto err_iv;
> +	}
> +
> +	dma_key =3D dma_map_single(ce->dev, key, 256, DMA_FROM_DEVICE);
> +	if (dma_mapping_error(ce->dev, dma_key)) {
> +		dev_err(ce->dev, "Cannot DMA MAP NEXT\n");
> +		err =3D -EFAULT;
> +		goto err_iv;
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
> +	common =3D ce->variant->prng | CE_COMM_INT;
> +	cet->t_common_ctl =3D cpu_to_le32(common);
> +
> +	/* recent CE (H6) need length in bytes, in word otherwise */
> +	if (ce->variant->prng_t_dlen_in_bytes)
> +		cet->t_dlen =3D cpu_to_le32(todo);
> +	else
> +		cet->t_dlen =3D cpu_to_le32(todo / 4);
> +
> +	sym =3D PRNG_LD;
> +	cet->t_sym_ctl =3D cpu_to_le32(sym);
> +	cet->t_asym_ctl =3D 0;
> +
> +	cet->t_key =3D cpu_to_le32(dma_key);
> +	cet->t_key =3D cpu_to_le32(dma_iv);
> +	cet->t_iv =3D cpu_to_le32(dma_iv);
> +	cet->t_ctr =3D cpu_to_le32(dma_next);
> +
> +	cet->t_dst[0].addr =3D cpu_to_le32(dma_dst);
> +	cet->t_dst[0].len =3D cpu_to_le32(todo / 4);
> +	ce->chanlist[flow].timeout =3D 2000;
> +
> +	err =3D sun8i_ce_run_task(ce, 3, "PRNG");
> +	mutex_unlock(&ce->rnglock);
> +
> +	pm_runtime_put(ce->dev);
> +
> +	dma_unmap_single(ce->dev, dma_key, 256, DMA_FROM_DEVICE);
> +	dma_unmap_single(ce->dev, dma_next, 256, DMA_FROM_DEVICE);
> +err_pm:
> +	dma_unmap_single(ce->dev, dma_dst, todo, DMA_FROM_DEVICE);
> +err_iv:
> +	dma_unmap_single(ce->dev, dma_iv, ctx->slen, DMA_TO_DEVICE);
> +
> +	if (!err) {
> +		memcpy(dst, d, dlen);
> +		memcpy(ctx->seed, d + dlen, ctx->slen);
> +	}
> +	kfree(next);
> +	kfree(key);
> +	kfree(d);

Shouldn't they all be kzfree?

> +	return err;
> +}
> diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
> b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h index
> ef2f1e5aa23a..2ef0c3814367 100644
> --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
> +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
> @@ -14,6 +14,7 @@
>  #include <linux/crypto.h>
>  #include <crypto/internal/hash.h>
>  #include <crypto/md5.h>
> +#include <crypto/rng.h>
>  #include <crypto/sha.h>
> =

>  /* CE Registers */
> @@ -54,6 +55,8 @@
>  #define CE_ALG_SHA256           19
>  #define CE_ALG_SHA384           20
>  #define CE_ALG_SHA512           21
> +#define CE_ALG_PRNG		49
> +#define CE_ALG_PRNG_V2		0x1d
> =

>  /* Used in ce_variant */
>  #define CE_ID_NOTSUPP		0xFF
> @@ -88,6 +91,10 @@
>  #define ESR_H5	3
>  #define ESR_H6	4
> =

> +#define PRNG_DATA_SIZE (160 / 8)
> +#define PRNG_SEED_SIZE DIV_ROUND_UP(175, 8)
> +#define PRNG_LD BIT(17)
> +
>  #define CE_DIE_ID_SHIFT	16
>  #define CE_DIE_ID_MASK	0x07
> =

> @@ -120,8 +127,11 @@ struct ce_clock {
>   *				bytes or words
>   * @hash_t_dlen_in_bytes:	Does the request size for hash is in
>   *				bits or words
> + * @prng_t_dlen_in_bytes:	Does the request size for PRNG is in
> + *				bytes or words
>   * @ce_clks:	list of clocks needed by this variant
>   * @esr:	The type of error register
> + * @prng:	The CE_ALG_XXX value for the PRNG
>   */
>  struct ce_variant {
>  	char alg_cipher[CE_ID_CIPHER_MAX];
> @@ -129,8 +139,10 @@ struct ce_variant {
>  	u32 op_mode[CE_ID_OP_MAX];
>  	bool cipher_t_dlen_in_bytes;
>  	bool hash_t_dlen_in_bits;
> +	bool prng_t_dlen_in_bytes;
>  	struct ce_clock ce_clks[CE_MAX_CLOCKS];
>  	int esr;
> +	char prng;
>  };
> =

>  struct sginfo {
> @@ -185,6 +197,7 @@ struct sun8i_ce_flow {
>   * @reset:	pointer to reset controller
>   * @dev:	the platform device
>   * @mlock:	Control access to device registers
> + * @rnglock:	Control access to the RNG (dedicated channel 3)
>   * @chanlist:	array of all flow
>   * @flow:	flow to use in next request
>   * @variant:	pointer to variant specific data
> @@ -197,6 +210,7 @@ struct sun8i_ce_dev {
>  	struct reset_control *reset;
>  	struct device *dev;
>  	struct mutex mlock;
> +	struct mutex rnglock;
>  	struct sun8i_ce_flow *chanlist;
>  	atomic_t flow;
>  	const struct ce_variant *variant;
> @@ -264,6 +278,16 @@ struct sun8i_ce_hash_reqctx {
>  	int flow;
>  };
> =

> +/*
> + * struct sun8i_ce_prng_ctx - context for PRNG TFM
> + * @seed:	The seed to use
> + * @slen:	The size of the seed
> + */
> +struct sun8i_ce_rng_tfm_ctx {
> +	void *seed;
> +	unsigned int slen;
> +};
> +
>  /*
>   * struct sun8i_ce_alg_template - crypto_alg template
>   * @type:		the CRYPTO_ALG_TYPE for this template
> @@ -284,6 +308,7 @@ struct sun8i_ce_alg_template {
>  	union {
>  		struct skcipher_alg skcipher;
>  		struct ahash_alg hash;
> +		struct rng_alg rng;
>  	} alg;
>  #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
>  	unsigned long stat_req;
> @@ -318,3 +343,9 @@ int sun8i_ce_hash_update(struct ahash_request *areq);
>  int sun8i_ce_hash_finup(struct ahash_request *areq);
>  int sun8i_ce_hash_digest(struct ahash_request *areq);
>  int sun8i_ce_hash_run(struct crypto_engine *engine, void *breq);
> +
> +int sun8i_ce_prng_generate(struct crypto_rng *tfm, const u8 *src,
> +			   unsigned int slen, u8 *dst, unsigned int dlen);
> +int sun8i_ce_prng_seed(struct crypto_rng *tfm, const u8 *seed, unsigned =
int
> slen); +void sun8i_ce_prng_exit(struct crypto_tfm *tfm);
> +int sun8i_ce_prng_init(struct crypto_tfm *tfm);


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
