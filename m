Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57B71B9A7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tksXKpVP0TBxeCvEoh997OzzIoR6oZRGi57t47dV9U=; b=H8hsdLvdVVRLEK
	A+G3z1EVOU1kTG5pj86qZqk87NWcPEidT6SSgYUJRYzVwUNE2GbS25vuV7rOk7qDtX3zygQeSx9fx
	GNrVu5fzDYB13+ioP8KwlJILNFLW0aFUBF/MgETL5Qwd87/TU5j29PUy87rFz2NPf92dYmKx6Yavu
	OLSNPb1mHm2BrZ3cfBQNm55PdYbSCPkyIHdLxJjSOTWJr6Xk39cEQlZltaRtS/S1Q2plLl0u+gO+E
	XL3Ty+CLsppvC5CRukeEe3au1IlS/QhH3CBAkn6H/JnBfoKYGyJRHZfwwCs4xfhmWoE/UcghhrH3R
	b126voTt/F3Ll6XXklYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzKt-0001kz-4p; Mon, 27 Apr 2020 08:41:55 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzKf-0001kM-QQ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:41:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so18577953wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 01:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=q+3qTB8vdiJNMhvx8hzi3DT09GwmaSicjznmLxZnHMU=;
 b=PlPO+K+ZVXG4h6AYzRYZiT/Mg/TnxPhQG6jDdy/UiadjLnghB/q94aH8yv2YCBDdBk
 lbg7jJr4i1O8R4ho24P+x32vxCmpPVw+14R3/OyMz/DSzinisGZvE8jXzoTk+GBreY15
 gs7ZaOshBd/J5ccfgajHzJn4rCVmbwoQ1fbjDrZONx+4BmMu2IWxQ2rXS63GWqiFfSnF
 bdbdQEi5ehZJt6rn36/FtFrxaeBxupSZgU2yLImuLSAz4QveJeH1ur4wCpvMC6CLbTDe
 hJfvMP23nAaiRsI0OcTfoucE7wBUPPSebhqSlbmuGd/uO26lNZrxGjEwHTrn3eekrxP1
 mB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q+3qTB8vdiJNMhvx8hzi3DT09GwmaSicjznmLxZnHMU=;
 b=qqF4qA5jMWBkmoBphvYXc/3mG4kuxsTXqwBiB4nBjTtmzIUggs1Y/CHXhYJOD+HgLd
 j/Y2REHP1skRgPeyVHW8QEdEgBTMmUvEXr55D2LoXPaIfX8Cjgv9IHp7UCcNeVpCuZeE
 BJfKQrqrGcMNSNTvSJiBDGoMyzlGubNmhRLx0KALdelCAo1/NAhwqxwdwYO34IFTsob3
 b47biY/N8OwV+5VpxRr6OgKmWRMb7/dPSj+fv+RKhJeB1ZaStK/TVPSMRr8GyjpubQAc
 ZBe4UKMgkEew9/aeKVklhr31+JlQBAyC8TjlSPUp1Qkm2hjvCtOCMeSPf0JEqE7uIF9w
 rYJw==
X-Gm-Message-State: AGi0PuZGWi60k8/Ub04RvhuBsE44IEvCIVdcBwgzbB5UcM3BDD9x/AVa
 vc6xuLDWc2AGjf1oTxsPgt8zYw==
X-Google-Smtp-Source: APiQypLpItyIVbux5OF/jMvqVyfPZTICd0Ix59+V34Y6r9Tgqj/BJ18a+Ffs9ATI5haTGuHkMp18Gg==
X-Received: by 2002:a1c:b445:: with SMTP id d66mr26002854wmf.187.1587976899888; 
 Mon, 27 Apr 2020 01:41:39 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id t17sm19515670wro.2.2020.04.27.01.41.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 01:41:39 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:41:37 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Stephan Mueller <stephan.mueller@atsec.com>
Subject: Re: [PATCH v2 13/14] crypto: sun8i-ce: Add support for the PRNG
Message-ID: <20200427084137.GA8787@Red>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
 <1587736934-22801-14-git-send-email-clabbe@baylibre.com>
 <2397344.pSczEbEFGg@tauon.chronox.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2397344.pSczEbEFGg@tauon.chronox.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_014141_924794_93CBAF88 
X-CRM114-Status: GOOD (  29.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 04:38:31PM +0200, Stephan Mueller wrote:
> Am Freitag, 24. April 2020, 16:02:13 CEST schrieb Corentin Labbe:
> 
> Hi Corentin,
> 
> > This patch had support for the PRNG present in the CE.
> > The output was tested with rngtest without any failure.
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/allwinner/Kconfig              |   8 +
> >  drivers/crypto/allwinner/sun8i-ce/Makefile    |   1 +
> >  .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c |  58 +++++-
> >  .../crypto/allwinner/sun8i-ce/sun8i-ce-prng.c | 189 ++++++++++++++++++
> >  drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  |  31 +++
> >  5 files changed, 286 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
> > 
> > diff --git a/drivers/crypto/allwinner/Kconfig
> > b/drivers/crypto/allwinner/Kconfig index 93cc67adb1ed..223a5823867c 100644
> > --- a/drivers/crypto/allwinner/Kconfig
> > +++ b/drivers/crypto/allwinner/Kconfig
> > @@ -79,6 +79,14 @@ config CRYPTO_DEV_SUN8I_CE_HASH
> >  	help
> >  	  Say y to enable support for hash algorithms.
> > 
> > +config CRYPTO_DEV_SUN8I_CE_PRNG
> > +	bool "Support for Allwinner Crypto Engine PRNG"
> > +	depends on CRYPTO_DEV_SUN8I_CE
> > +	select CRYPTO_RNG
> > +	help
> > +	  Select this option if you want to provide kernel-side support for
> > +	  the Pseudo-Random Number Generator found in the Crypto Engine.
> > +
> >  config CRYPTO_DEV_SUN8I_SS
> >  	tristate "Support for Allwinner Security System cryptographic 
> offloader"
> >  	select CRYPTO_SKCIPHER
> > diff --git a/drivers/crypto/allwinner/sun8i-ce/Makefile
> > b/drivers/crypto/allwinner/sun8i-ce/Makefile index
> > d1b1f0e86c79..c0ea81da2c7d 100644
> > --- a/drivers/crypto/allwinner/sun8i-ce/Makefile
> > +++ b/drivers/crypto/allwinner/sun8i-ce/Makefile
> > @@ -1,3 +1,4 @@
> >  obj-$(CONFIG_CRYPTO_DEV_SUN8I_CE) += sun8i-ce.o
> >  sun8i-ce-y += sun8i-ce-core.o sun8i-ce-cipher.o
> >  sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_HASH) += sun8i-ce-hash.o
> > +sun8i-ce-$(CONFIG_CRYPTO_DEV_SUN8I_CE_PRNG) += sun8i-ce-prng.o
> > diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> > b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c index
> > 8c94ffe1efd0..23b9fc67d7ea 100644
> > --- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> > +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> > @@ -22,6 +22,7 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/pm_runtime.h>
> >  #include <linux/reset.h>
> > +#include <crypto/internal/rng.h>
> >  #include <crypto/internal/skcipher.h>
> > 
> >  #include "sun8i-ce.h"
> > @@ -45,6 +46,7 @@ static const struct ce_variant ce_h3_variant = {
> >  		{ "mod", 50000000, 0 },
> >  		},
> >  	.esr = ESR_H3,
> > +	.prng = CE_ALG_PRNG,
> >  };
> > 
> >  static const struct ce_variant ce_h5_variant = {
> > @@ -60,6 +62,7 @@ static const struct ce_variant ce_h5_variant = {
> >  		{ "mod", 300000000, 0 },
> >  		},
> >  	.esr = ESR_H5,
> > +	.prng = CE_ALG_PRNG,
> >  };
> > 
> >  static const struct ce_variant ce_h6_variant = {
> > @@ -72,12 +75,14 @@ static const struct ce_variant ce_h6_variant = {
> >  	},
> >  	.cipher_t_dlen_in_bytes = true,
> >  	.hash_t_dlen_in_bits = true,
> > +	.prng_t_dlen_in_bytes = true,
> >  	.ce_clks = {
> >  		{ "bus", 0, 200000000 },
> >  		{ "mod", 300000000, 0 },
> >  		{ "ram", 0, 400000000 },
> >  		},
> >  	.esr = ESR_H6,
> > +	.prng = CE_ALG_PRNG_V2,
> >  };
> > 
> >  static const struct ce_variant ce_a64_variant = {
> > @@ -93,6 +98,7 @@ static const struct ce_variant ce_a64_variant = {
> >  		{ "mod", 300000000, 0 },
> >  		},
> >  	.esr = ESR_A64,
> > +	.prng = CE_ALG_PRNG,
> >  };
> > 
> >  static const struct ce_variant ce_r40_variant = {
> > @@ -108,15 +114,17 @@ static const struct ce_variant ce_r40_variant = {
> >  		{ "mod", 300000000, 0 },
> >  		},
> >  	.esr = ESR_R40,
> > +	.prng = CE_ALG_PRNG,
> >  };
> > 
> >  /*
> >   * sun8i_ce_get_engine_number() get the next channel slot
> >   * This is a simple round-robin way of getting the next channel
> > + * The flow 3 is reserve for xRNG operations
> >   */
> >  int sun8i_ce_get_engine_number(struct sun8i_ce_dev *ce)
> >  {
> > -	return atomic_inc_return(&ce->flow) % MAXFLOW;
> > +	return atomic_inc_return(&ce->flow) % (MAXFLOW - 1);
> >  }
> > 
> >  int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
> > @@ -130,6 +138,7 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow,
> > const char *name) #endif
> > 
> >  	mutex_lock(&ce->mlock);
> > +	mutex_init(&ce->rnglock);
> > 
> >  	v = readl(ce->base + CE_ICR);
> >  	v |= 1 << flow;
> > @@ -516,6 +525,25 @@ static struct sun8i_ce_alg_template ce_algs[] = {
> >  	}
> >  },
> >  #endif
> > +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_PRNG
> > +{
> > +	.type = CRYPTO_ALG_TYPE_RNG,
> > +	.alg.rng = {
> > +		.base = {
> > +			.cra_name		= "stdrng",
> > +			.cra_driver_name	= "sun8i-ce-prng",
> > +			.cra_priority		= 300,
> > +			.cra_ctxsize		= sizeof(struct 
> sun8i_ce_rng_tfm_ctx),
> > +			.cra_module		= THIS_MODULE,
> > +			.cra_init		= sun8i_ce_prng_init,
> > +			.cra_exit		= sun8i_ce_prng_exit,
> > +		},
> > +		.generate               = sun8i_ce_prng_generate,
> > +		.seed                   = sun8i_ce_prng_seed,
> > +		.seedsize               = PRNG_SEED_SIZE,
> > +	}
> > +},
> > +#endif
> >  };
> > 
> >  #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> > @@ -543,6 +571,12 @@ static int sun8i_ce_dbgfs_read(struct seq_file *seq,
> > void *v) ce_algs[i].alg.hash.halg.base.cra_name,
> >  				   ce_algs[i].stat_req, ce_algs[i].stat_fb);
> >  			break;
> > +		case CRYPTO_ALG_TYPE_RNG:
> > +			seq_printf(seq, "%s %s %lu %lu\n",
> > +				   ce_algs[i].alg.rng.base.cra_driver_name,
> > +				   ce_algs[i].alg.rng.base.cra_name,
> > +				   ce_algs[i].stat_req, 
> ce_algs[i].stat_bytes);
> > +			break;
> >  		}
> >  	}
> >  	return 0;
> > @@ -777,6 +811,23 @@ static int sun8i_ce_register_algs(struct sun8i_ce_dev
> > *ce) return err;
> >  			}
> >  			break;
> > +		case CRYPTO_ALG_TYPE_RNG:
> > +			if (ce->variant->prng == CE_ID_NOTSUPP) {
> > +				dev_info(ce->dev,
> > +					 "DEBUG: Algo of %s not supported\n",
> > +					 ce_algs[i].alg.rng.base.cra_name);
> > +				ce_algs[i].ce = NULL;
> > +				break;
> > +			}
> > +			dev_info(ce->dev, "Register %s\n",
> > +				 ce_algs[i].alg.rng.base.cra_name);
> > +			err = crypto_register_rng(&ce_algs[i].alg.rng);
> > +			if (err) {
> > +				dev_err(ce->dev, "Fail to register %s\n",
> > +					ce_algs[i].alg.rng.base.cra_name);
> > +				ce_algs[i].ce = NULL;
> > +			}
> > +			break;
> >  		default:
> >  			ce_algs[i].ce = NULL;
> >  			dev_err(ce->dev, "ERROR: tried to register an unknown 
> algo\n");
> > @@ -803,6 +854,11 @@ static void sun8i_ce_unregister_algs(struct
> > sun8i_ce_dev *ce) ce_algs[i].alg.hash.halg.base.cra_name);
> >  			crypto_unregister_ahash(&ce_algs[i].alg.hash);
> >  			break;
> > +		case CRYPTO_ALG_TYPE_RNG:
> > +			dev_info(ce->dev, "Unregister %d %s\n", i,
> > +				 ce_algs[i].alg.rng.base.cra_name);
> > +			crypto_unregister_rng(&ce_algs[i].alg.rng);
> > +			break;
> >  		}
> >  	}
> >  }
> > diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
> > b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c new file mode 100644
> > index 000000000000..8f82bfc2c54c
> > --- /dev/null
> > +++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
> > @@ -0,0 +1,189 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * sun8i-ce-prng.c - hardware cryptographic offloader for
> > + * Allwinner H3/A64/H5/H2+/H6/R40 SoC
> > + *
> > + * Copyright (C) 2015-2020 Corentin Labbe <clabbe@baylibre.com>
> > + *
> > + * This file handle the PRNG
> > + *
> > + * You could find a link for the datasheet in
> > Documentation/arm/sunxi/README + */
> > +#include "sun8i-ce.h"
> > +#include <linux/pm_runtime.h>
> > +#include <crypto/internal/rng.h>
> > +
> > +int sun8i_ce_prng_init(struct crypto_tfm *tfm)
> > +{
> > +	struct sun8i_ce_rng_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
> > +
> > +	memset(ctx, 0, sizeof(struct sun8i_ce_rng_tfm_ctx));
> > +	return 0;
> > +}
> > +
> > +void sun8i_ce_prng_exit(struct crypto_tfm *tfm)
> > +{
> > +	struct sun8i_ce_rng_tfm_ctx *ctx = crypto_tfm_ctx(tfm);
> > +
> > +	kfree(ctx->seed);
> > +	ctx->seed = NULL;
> > +	ctx->slen = 0;
> > +}
> > +
> > +int sun8i_ce_prng_seed(struct crypto_rng *tfm, const u8 *seed,
> > +		       unsigned int slen)
> > +{
> > +	struct sun8i_ce_rng_tfm_ctx *ctx = crypto_rng_ctx(tfm);
> > +
> > +	if (ctx->seed && ctx->slen != slen) {
> > +		ctx->slen = 0;
> > +		kfree(ctx->seed);
> 
> kzfree?
> 

Yes

> > +		ctx->seed = NULL;
> > +	}
> > +	if (!ctx->seed)
> > +		ctx->seed = kmalloc(slen, GFP_KERNEL | GFP_DMA);
> > +	if (!ctx->seed)
> > +		return -ENOMEM;
> > +
> > +	memcpy(ctx->seed, seed, slen);
> > +	ctx->slen = slen;
> > +
> > +	return 0;
> > +}
> > +
> > +int sun8i_ce_prng_generate(struct crypto_rng *tfm, const u8 *src,
> > +			   unsigned int slen, u8 *dst, unsigned int dlen)
> > +{
> > +	struct sun8i_ce_rng_tfm_ctx *ctx = crypto_rng_ctx(tfm);
> > +	struct rng_alg *alg = crypto_rng_alg(tfm);
> > +	struct sun8i_ce_alg_template *algt;
> > +	struct sun8i_ce_dev *ce;
> > +	dma_addr_t dma_iv, dma_dst;
> > +	int err = 0;
> > +	int flow = 3;
> > +	unsigned int todo;
> > +	struct sun8i_ce_flow *chan;
> > +	struct ce_task *cet;
> > +	u32 common, sym;
> > +	dma_addr_t dma_next, dma_key;
> > +	void *next, *key;
> > +	void *d;
> > +
> > +	algt = container_of(alg, struct sun8i_ce_alg_template, alg.rng);
> > +	ce = algt->ce;
> > +
> > +	if (ctx->slen == 0) {
> > +		dev_err(ce->dev, "not seeded\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	next = kzalloc(256, GFP_KERNEL | GFP_DMA);
> > +	if (!next)
> > +		return -ENOMEM;
> > +
> > +	key = kzalloc(256, GFP_KERNEL | GFP_DMA);
> > +	if (!key)
> > +		return -ENOMEM;
> 
> You leak memory here.
> 

Thanks will fix.
Furthermore, I just saw that key is unused, I forgot to clean it.
And thoses hardcoded 256 are bad.

> > +
> > +	/* we want dlen + seedsize rounded up to a multiple of PRNG_DATA_SIZE 
> */
> > +	todo = dlen + ctx->slen + PRNG_DATA_SIZE * 2;
> > +	todo -= todo % PRNG_DATA_SIZE;
> > +
> > +	d = kzalloc(todo + 20, GFP_KERNEL | GFP_DMA);
> > +	if (!d)
> > +		return -ENOMEM;
> > +
> > +	dev_dbg(ce->dev, "%s PRNG slen=%u dlen=%u todo=%u multi=%u\n", 
> __func__,
> > +		slen, dlen, todo, todo / PRNG_DATA_SIZE);
> > +
> > +	if (ctx->slen == 0) {
> > +		dev_err(ce->dev, "not seeded\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
> > +	algt->stat_req++;
> > +	algt->stat_bytes += todo;
> > +#endif
> > +
> > +	dma_iv = dma_map_single(ce->dev, ctx->seed, ctx->slen, DMA_TO_DEVICE);
> > +	if (dma_mapping_error(ce->dev, dma_iv)) {
> > +		dev_err(ce->dev, "Cannot DMA MAP IV\n");
> > +		return -EFAULT;
> > +	}
> > +
> > +	dma_dst = dma_map_single(ce->dev, d, todo, DMA_FROM_DEVICE);
> > +	if (dma_mapping_error(ce->dev, dma_dst)) {
> > +		dev_err(ce->dev, "Cannot DMA MAP DST\n");
> > +		err = -EFAULT;
> > +		goto err_iv;
> > +	}
> > +
> > +	dma_next = dma_map_single(ce->dev, next, 256, DMA_FROM_DEVICE);
> > +	if (dma_mapping_error(ce->dev, dma_next)) {
> > +		dev_err(ce->dev, "Cannot DMA MAP NEXT\n");
> > +		err = -EFAULT;
> > +		goto err_iv;
> > +	}
> > +
> > +	dma_key = dma_map_single(ce->dev, key, 256, DMA_FROM_DEVICE);
> > +	if (dma_mapping_error(ce->dev, dma_key)) {
> > +		dev_err(ce->dev, "Cannot DMA MAP NEXT\n");
> > +		err = -EFAULT;
> > +		goto err_iv;
> > +	}
> > +
> > +	err = pm_runtime_get_sync(ce->dev);
> > +	if (err < 0)
> > +		goto err_pm;
> > +
> > +	mutex_lock(&ce->rnglock);
> > +	chan = &ce->chanlist[flow];
> > +
> > +	cet = &chan->tl[0];
> > +	memset(cet, 0, sizeof(struct ce_task));
> > +
> > +	cet->t_id = cpu_to_le32(flow);
> > +	common = ce->variant->prng | CE_COMM_INT;
> > +	cet->t_common_ctl = cpu_to_le32(common);
> > +
> > +	/* recent CE (H6) need length in bytes, in word otherwise */
> > +	if (ce->variant->prng_t_dlen_in_bytes)
> > +		cet->t_dlen = cpu_to_le32(todo);
> > +	else
> > +		cet->t_dlen = cpu_to_le32(todo / 4);
> > +
> > +	sym = PRNG_LD;
> > +	cet->t_sym_ctl = cpu_to_le32(sym);
> > +	cet->t_asym_ctl = 0;
> > +
> > +	cet->t_key = cpu_to_le32(dma_key);
> > +	cet->t_key = cpu_to_le32(dma_iv);
> > +	cet->t_iv = cpu_to_le32(dma_iv);
> > +	cet->t_ctr = cpu_to_le32(dma_next);
> > +
> > +	cet->t_dst[0].addr = cpu_to_le32(dma_dst);
> > +	cet->t_dst[0].len = cpu_to_le32(todo / 4);
> > +	ce->chanlist[flow].timeout = 2000;
> > +
> > +	err = sun8i_ce_run_task(ce, 3, "PRNG");
> > +	mutex_unlock(&ce->rnglock);
> > +
> > +	pm_runtime_put(ce->dev);
> > +
> > +	dma_unmap_single(ce->dev, dma_key, 256, DMA_FROM_DEVICE);
> > +	dma_unmap_single(ce->dev, dma_next, 256, DMA_FROM_DEVICE);
> > +err_pm:
> > +	dma_unmap_single(ce->dev, dma_dst, todo, DMA_FROM_DEVICE);
> > +err_iv:
> > +	dma_unmap_single(ce->dev, dma_iv, ctx->slen, DMA_TO_DEVICE);
> > +
> > +	if (!err) {
> > +		memcpy(dst, d, dlen);
> > +		memcpy(ctx->seed, d + dlen, ctx->slen);
> > +	}
> > +	kfree(next);
> > +	kfree(key);
> > +	kfree(d);
> 
> Shouldn't they all be kzfree?
> 

Yes
Probably it miss also a memzero_explicit, I think that seeds/data are sensitive

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
